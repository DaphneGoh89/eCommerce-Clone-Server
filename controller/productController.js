const pool = require("../db/db");

//----------------------------------------------------------------
// Get Single Product
const getSingleProduct = async (req, res) => {
  try {
    console.log("product", req);
    const { productCode } = req.body;
    let result = {};

    // Get general product information
    const findProduct = `SELECT P1.code "productCode", 
      P1.name "productName", 
      P2.name "mainCat", 
      P3.name "subcategory",
      P4.currency,
      P4.price
      FROM product P1
      LEFT JOIN product_main_category P2 on P1.main_cat = P2.code
      LEFT JOIN product_subcategory P3 on P1.subcategory = P3.code
      LEFT JOIN product_price P4 on P4.product_code = P1.code and P4.currency='SGD'
      WHERE LOWER(P1.code)=$1`;

    const productInfo = await pool.query(findProduct, [
      productCode.toLowerCase(),
    ]);

    // Get product quantity array
    const getStockOnHand = `SELECT PC.name "colorName", PC.hex_color "hexColor", PT.product_size "size", SUM(PT.quantity) "quantity"
      FROM product_transaction PT
      LEFT JOIN product_color PC ON PT.product_color = PC.code
      WHERE PT."location"='EC' and LOWER(PT.product_code)=$1
      GROUP BY PT.product_code, PT.product_size, PC.hex_color, PC.name, PT."location"
      ORDER BY PT.product_code, PC.hex_color DESC`;

    const stockOnHand = await pool.query(getStockOnHand, [
      productCode.toLowerCase(),
    ]);

    const getProductImage = `SELECT P3.name "colorName", P3.hex_color "hexColor", P2.image_path "imagePath"
      FROM product P1
      LEFT JOIN product_image P2 on P1.code = P2.product_code
      LEFT JOIN product_color P3 on P2.product_color = P3.code
      WHERE LOWER(P1.code) = $1`;

    const productImages = await pool.query(getProductImage, [
      productCode.toLowerCase(),
    ]);

    const images = productImages?.rows.reduce((groupedImage, image) => {
      if (
        groupedImage.findIndex(
          (element) => element.hexColor === image.hexColor
        ) === -1
      ) {
        let imgArray = [];
        groupedImage.push({
          colorName: image.colorName,
          hexColor: image.hexColor,
          imgArray: [image.imagePath],
        });
      } else {
        let i = groupedImage.findIndex(
          (element) => element.hexColor === image.hexColor
        );

        let newArray = groupedImage[i].imgArray.push(image.imagePath);
        groupedImage[i] = {
          ...groupedImage[i],
        };
      }
      return groupedImage;
    }, []);

    result = {
      ...productInfo?.rows[0],
      stockOnHand: stockOnHand?.rows,
      images: images,
    };

    // Return success JSON response
    res.status(200).json({
      ...result,
    });
  } catch (err) {
    // Return error response
    res.status(400).json({
      status: "Error",
      message: `Product not found. ${err.message}`,
    });
  }
};

//-----------------------------------------------------------------------------------------
// Get All Products
const getAllProducts = async (req, res) => {
  try {
    let allProducts = [];

    // Get general product information
    const getProducts = `SELECT P1.code "productCode", 
                                P1.name "productName", 
                                P2.name "mainCat", 
                                P3.name "subcategory",
                                P4.currency,
                                P4.price
                        FROM product P1
                        LEFT JOIN product_main_category P2 on P1.main_cat = P2.code
                        LEFT JOIN product_subcategory P3 on P1.subcategory = P3.code
                        LEFT JOIN product_price P4 on P4.product_code = P1.code and P4.currency='SGD'
                        WHERE P1.active=true`;

    // Get product quantity by colors
    const getProductColors = `SELECT PT.product_code "productCode", 
                                    PC.name "colorName", 
                                    PC.hex_color "hexColor", 
                                    SUM(PT.quantity) "quantity"
                                FROM product_transaction PT
                                LEFT JOIN product_color PC ON PT.product_color = PC.code
                                WHERE PT."location"='EC'
                                GROUP BY PT.product_code, PC.hex_color, PC.name, PT."location"
                                ORDER BY PT.product_code, PC.hex_color DESC`;

    // Get product images
    const getDisplayImage = `SELECT P1.code "productCode", 'main_display' "display", P2.image_path "imagePath"
                            FROM product P1
                            INNER JOIN product_image P2 ON P1.code=P2.product_code AND P2.main_display=true
                            WHERE P1.active = true
                            UNION ALL
                            SELECT P1.code "productCode", 'hover_display' "display", P2.image_path
                            FROM product P1
                            INNER JOIN product_image P2 ON P1.code=P2.product_code AND P2.hover_display=true
                            WHERE P1.active = true
                            ORDER BY "productCode"`;

    // Execute queries
    const productInfo = await pool.query(getProducts, []);
    const productColors = await pool.query(getProductColors, []);
    const displayImage = await pool.query(getDisplayImage, []);

    // Extract general product info
    allProducts = [...productInfo.rows];

    // Group product color lines by productCode
    const colors = productColors?.rows.reduce((group, element) => {
      group[element.productCode] = group[element.productCode] || [];

      group[element.productCode].push({
        colorName: element.colorName,
        hexColor: element.hexColor,
        quantity: element.quantity,
      });
      return group;
    }, Object.create(null));

    // Group display images by productCode
    const images = displayImage?.rows.reduce((group, element) => {
      group[element.productCode] = group[element.productCode] || {};
      group[element.productCode][element["display"]] = element["imagePath"];
      return group;
    }, Object.create(null));

    // Map through allProducts array -> find value with matched product code in colors / images object
    let finalResult = allProducts.map((product) => {
      let colorProperty = colors[product.productCode];
      let imageProperty = images[product.productCode];
      return { ...product, colors: colorProperty, images: imageProperty };
    });

    // Return success JSON response with products array
    res.status(200).json(finalResult);
  } catch (err) {
    // Return error response
    res.status(400).json({
      status: "Error",
      message: `Error. ${err.message}`,
    });
  }
};

module.exports = { getSingleProduct, getAllProducts };
