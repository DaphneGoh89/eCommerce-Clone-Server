const pool = require("../db/db");
const { expand, flatten } = require("../helpers/helperFunction");

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
      shiptoPostal,
      contactCtrycode,
      contactNumber,
      deliveryMethod,
      deliveryTiming,
      paymentMethod,
      paymentAmount,
      orderStatus,
      orderDetails,
    } = req.body;

    // Begin insert queries
    await pool.query("BEGIN");

    // Insert into "order" table
    const insertOrder = `INSERT INTO "order" ("customer_id", "first_name", "last_name", "order_currency", "order_total", "giftcard", "promocode", 
        "giftcard_value", "promocode_value", "shipping_fee", "gst_amount", "shipto_country", "shipto_addrline1", "shipto_addrline2",
        "shipto_postal", "contact_ctrycode", "contact_number", "delivery_method", "delivery_timing", "payment_method", "payment_amount") 
        VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21) RETURNING id`;
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
      shiptoPostal,
      contactCtrycode,
      contactNumber,
      deliveryMethod,
      deliveryTiming,
      paymentMethod,
      paymentAmount,
    ]);

    // Insert "order_id" and "line_id" into "orderDetails" from JSON body
    const orderLineParams = orderDetails.map((item, index) => [
      ...Object.values(item),
      response.rows[0].id,
      index,
    ]);

    // Insert into "order_line" table
    const insertOrderlines = `INSERT INTO "order_line" (product_code, product_name, product_color, product_size, order_qty, unit_price, line_total, order_id, line_num) VALUES ${expand(
      orderDetails.length,
      9
    )}`;
    const orderLineValues = flatten(orderLineParams);
    await pool.query(insertOrderlines, orderLineValues);
    await pool.query("COMMIT");

    // Return success JSON response
    res.status(200).json({
      status: "Success",
      message: `Order: ${response.rows[0].id} created successfully. `,
    });
  } catch (err) {
    // Perform rollback if error
    await pool.query("ROLLBACK");

    // Return error response
    res.status(400).json({
      status: "Error",
      message: `Order creation fails. ${err.message}`,
    });
  }
};

module.exports = { createOrder };
