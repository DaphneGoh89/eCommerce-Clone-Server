const pool = require("../db/db");
const { expand, flatten } = require("../helpers/helperFunction");

// Create order
const createOrder = async (req, res) => {
  try {
    // Destructure request body
    const {
      customerId,
      firstName,
      lastName,
      orderCurrency,
      orderTotal,
      giftcard,
      promocode,
      giftcardValue,
      promocodeValue,
      shippingFee,
      gstAmount,
      shiptoCountry,
      shiptoAddrline1,
      shiptoAddrline2,
      shiptoCity,
      shiptoState,
      shiptoPostal,
      contactCtrycode,
      contactNumber,
      deliveryMethod,
      deliveryTiming,
      pickupStore,
      paymentMethod,
      paymentAmount,
      orderDetails,
    } = req.body;

    // Begin insert queries
    await pool.query("BEGIN");

    // Insert into "order" table
    const insertOrder = `INSERT INTO "order" ("customer_id", "first_name", "last_name", "order_currency", "order_total", "giftcard", "promocode", 
        "giftcard_value", "promocode_value", "shipping_fee", "gst_amount", "shipto_country", "shipto_addrline1", "shipto_addrline2", "shipto_city", "shipto_state",
        "shipto_postal", "contact_ctrycode", "contact_number", "delivery_method", "delivery_timing", "pickup_store", "payment_method", "payment_amount") 
        VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24) RETURNING id, order_date`;
    const response = await pool.query(insertOrder, [
      customerId,
      firstName,
      lastName,
      orderCurrency,
      orderTotal,
      giftcard,
      promocode,
      giftcardValue,
      promocodeValue,
      shippingFee,
      gstAmount,
      shiptoCountry,
      shiptoAddrline1,
      shiptoAddrline2,
      shiptoCity,
      shiptoState,
      shiptoPostal,
      contactCtrycode,
      contactNumber,
      deliveryMethod,
      deliveryTiming,
      pickupStore,
      paymentMethod,
      paymentAmount,
    ]);

    //-----------------------------------------------------------------------------------------------------------
    // 1. Insert "order_id" and "line_id" into "orderDetails" from JSON body
    const orderLineParams = orderDetails.map((item, index) => [
      //...Object.values(item),
      item["productCode"],
      item["productName"],
      item["productColor"],
      item["productSize"],
      item["quantity"],
      item["productPrice"],
      item["lineTotal"],
      response.rows[0].id,
      index,
    ]);

    //-----------------------------------------------------------------------------------------------------------
    // 2. Insert into "order_line" table
    const insertOrderlines = `INSERT INTO "order_line" (product_code, product_name, product_color, product_size, quantity, product_price, line_total, order_id, line_num) VALUES ${expand(
      orderDetails.length,
      9
    )}`;
    const orderLineValues = flatten(orderLineParams);
    await pool.query(insertOrderlines, orderLineValues);

    //-----------------------------------------------------------------------------------------------------------
    // 3. Insert product into "product_transaction" table - to deduct quantity
    const insertProdTrans = `INSERT INTO "product_transaction" (transaction_date, product_code, product_size, product_color, location, origin_type, origin_id, quantity, direction) VALUES ${expand(
      orderDetails.length,
      9
    )}`;
    const prodTransParams = orderDetails.map((item, index) => [
      response.rows[0]["order_date"],
      item["productCode"],
      item["productSize"],
      item["productColor"],
      "EC",
      "OR",
      response.rows[0].id,
      -1 * parseInt(item["quantity"]),
      "O",
    ]);
    const prodTransValues = flatten(prodTransParams);
    await pool.query(insertProdTrans, prodTransValues);

    //-----------------------------------------------------------------------------------------------------------
    // 4. Delete from cart - remove items from cart after checkout
    // Get product key to join with cart table - customerId, productCode, productColor, productSize (e.g. 2hy4688031s)
    let cartItemKey = [];
    for (let item of orderDetails) {
      productKey = `${customerId}${item["productCode"]}${item["productColor"]}${item["productSize"]}`;
      cartItemKey.push(productKey);
    }
    const deleteFromCart = `DELETE FROM "cart" WHERE id IN
                         (SELECT id FROM "cart" WHERE customer_id || product_code || product_color || product_size IN (${expand(
                           orderDetails.length,
                           1
                         )}))`;

    await pool.query(deleteFromCart, cartItemKey);
    await pool.query("COMMIT");

    // Return success JSON response
    return res.status(200).json({
      status: "Success",
      message: `Order: ${response.rows[0].id} created successfully. `,
      orderid: `${response.rows[0].id}`,
    });
  } catch (err) {
    // Perform rollback if error
    await pool.query("ROLLBACK");

    // Return error response
    return res.status(400).json({
      status: "Error",
      message: `Order creation fails. ${err.message}`,
    });
  }
};

// Get all orders - with query string
const getOrders = async (req, res) => {
  try {
    let filter = { ...req.query };
    console.log("getOrders API", filter);
    let allOrders = [];

    // Get orders with matching parameters
    const getAllOrders = `SELECT *
    FROM "order" T1
    WHERE T1."order_date" BETWEEN COALESCE($1, CURRENT_DATE) AND COALESCE($2, CURRENT_DATE)
    AND LOWER(T1."shipto_country")=COALESCE($3, '')
    AND T1."shipto_postal" BETWEEN $4 AND $5`;

    // Execute queries
    const orders = await pool.query(getAllOrders, [
      filter?.orderDateFrom,
      filter?.orderDateTo,
      filter?.shiptoCountry,
      filter?.shiptoPostalFrom,
      filter?.shiptoPostalTo,
    ]);

    // Extract general product info
    // allProducts = [...orders.rows];

    // Return success JSON response with products array
    return res.status(200).json(orders);
  } catch (err) {
    // Return error response
    return res.status(400).json({
      status: "Error",
      message: `Error. ${err.message}`,
    });
  }
};

// Get individual customer order

module.exports = { createOrder, getOrders };
