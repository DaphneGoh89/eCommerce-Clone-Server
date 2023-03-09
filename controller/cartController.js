const pool = require("../db/db");
const { expand, flatten } = require("../helpers/helperFunction");

//----------------------------------------------------------------------------------------------------------------------------
// ADD TO CART
const addToCart = async (req, res) => {
  try {
    // Destructure request body
    const {
      customerId,
      productCode,
      productName,
      productColor,
      productSize,
      quantity,
    } = req.body;

    // Begin insert queries
    await pool.query("BEGIN");
    const colorCode = await pool.query(
      `SELECT code FROM product_color WHERE hex_color=$1`,
      [productColor]
    );

    // Insert into "cart" table
    const addToCart = `INSERT INTO "cart" ("customer_id", "product_code", "product_name", "product_color", "product_size", "quantity") 
            VALUES($1, $2, $3, $4, $5, $6)`;
    const response = await pool.query(addToCart, [
      customerId,
      productCode,
      productName,
      colorCode.rows[0]["code"],
      productSize,
      quantity,
    ]);

    await pool.query("COMMIT");

    // Return success JSON response
    return res.status(200).json({
      status: "Success",
      message: `${productName} added to cart successfully. `,
    });
  } catch (err) {
    // Perform rollback if error
    await pool.query("ROLLBACK");

    // Return error response
    return res.status(400).json({
      status: "Error",
      message: `Fails to add to cart. ${err.message}`,
    });
  }
};

//----------------------------------------------------------------------------------------------------------------------------
// GET CART ITEM
const getCartItem = async (req, res) => {
  try {
    const { customerId } = req.body;

    const getCartItem = `
    SELECT C1.product_code "productCode", 
    P1.name "productName", 
    C1.product_color "productColor", 
            P2.name "colorName", 
    P2.hex_color "hexColor", 
    C1.product_size "productSize",
            P3.currency, 
    P3.price "productPrice", 
    SUM(C1.quantity) "quantity", 
    P3."price"*SUM(C1."quantity") "lineTotal",
    
    (SELECT img.image_path FROM product_image img 
    WHERE img.product_code = C1.product_code AND img.product_color= C1.product_color 
    ORDER BY LENGTH(img.image_path)
    LIMIT 1) "mainDisplay",
     
    (SELECT SUM(trans.quantity) 
    FROM product_transaction trans 
    WHERE trans.product_code = C1.product_code 
    AND trans.product_color = C1.product_color 
    AND trans.product_size = C1.product_size
    GROUP BY trans.product_code, trans.product_color, trans.product_size) "onHandQty"	
    
    FROM cart C1
    LEFT JOIN product P1 on P1.code=C1.product_code
    LEFT JOIN product_color P2 on C1.product_color = P2.code
    LEFT JOIN product_price P3 on P3.product_code = C1.product_code and P3.currency='SGD'
    WHERE C1.customer_id = $1
    GROUP BY C1.product_code, P1.name, C1.product_color, 
            P2.name, P2.hex_color, C1.product_size,
            P3.currency, P3.price, (SELECT img.image_path FROM product_image img 
             WHERE img.product_code = C1.product_code and img.product_color= C1.product_color 
             ORDER BY LENGTH(img.image_path)
             LIMIT 1)`;

    // Execute query and extract result
    const cartItem = await pool.query(getCartItem, [customerId]);
    let finalResult = cartItem.rows;
    // Return response
    return res.status(200).json(finalResult);
  } catch (err) {
    return res.status(400).json({
      status: "Error",
      message: `Fails to load cart. ${err.message}`,
    });
  }
};

//----------------------------------------------------------------------------------------------------------------------------
// EDIT CART ITEM
// 1. Get customerId, productCode, oldProductColor, oldProductSize and oldQuantity, newProductColor, newProductSize, newQuantity from req
// 2. Delete from old item from "cart" table
// 3. Insert new line into "cart" table
const editCartItem = async (req, res) => {
  try {
    // Destructure request body
    const {
      customerId,
      productCode,
      productName,
      oldProductColor,
      oldProductSize,
      oldQuantity,
      newProductColor,
      newProductSize,
      newQuantity,
    } = req.body;

    // Decipher from hexColor to colorCode
    const oldColorCode = await pool.query(
      `SELECT code FROM product_color WHERE hex_color=$1`,
      [oldProductColor]
    );

    const newColorCode = await pool.query(
      `SELECT code FROM product_color WHERE hex_color=$1`,
      [newProductColor]
    );

    // Delete existing item with matching attributes from customer cart
    const removeFromCart = `DELETE FROM cart WHERE "customer_id"=$1 AND LOWER("product_code")=$2 AND LOWER("product_color")=$3 AND LOWER("product_size")=$4`;
    await pool.query(removeFromCart, [
      customerId,
      productCode.toLowerCase(),
      // productColor.toLowerCase(),
      oldColorCode.rows[0]["code"].toLowerCase(),
      oldProductSize.toLowerCase(),
    ]);

    // Insert edited item into "cart" table
    const addToCart = `INSERT INTO "cart" ("customer_id", "product_code", "product_name", "product_color", "product_size", "quantity") 
            VALUES($1, $2, $3, $4, $5, $6)`;
    const response = await pool.query(addToCart, [
      customerId,
      productCode,
      productName,
      newColorCode.rows[0]["code"],
      newProductSize,
      newQuantity,
    ]);

    // Return success JSON response
    return res.status(200).json({
      status: "Success",
      message: `${productName} edited successfully. `,
    });
  } catch (err) {
    // Return error response
    return res.status(400).json({
      status: "Error",
      message: `Fails to edit items in cart. ${err.message}`,
    });
  }
};

//----------------------------------------------------------------------------------------------------------------------------
// REMOVE FROM CART
const removeFromCart = async (req, res) => {
  try {
    // Destructure request body
    const { customerId, productCode, productName, productColor, productSize } =
      req.body;

    // Delete from "cart" table
    const removeFromCart = `DELETE FROM cart WHERE "customer_id"=$1 AND LOWER("product_code")=$2 AND LOWER("product_color")=$3 AND LOWER("product_size")=$4`;
    const response = await pool.query(removeFromCart, [
      customerId,
      productCode.toLowerCase(),
      productColor.toLowerCase(),
      productSize.toLowerCase(),
    ]);

    // Return success JSON response
    return res.status(200).json({
      status: "Success",
      message: `${productName} removed from cart successfully. `,
    });
  } catch (err) {
    // Return error response
    return res.status(400).json({
      status: "Error",
      message: `Fails to remove item from cart. ${err.message}`,
    });
  }
};

module.exports = { addToCart, getCartItem, editCartItem, removeFromCart };
