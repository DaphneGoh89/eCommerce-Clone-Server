const pool = require("../db/db");
const { expand, flatten } = require("../helpers/helperFunction");

const createOrder = async (req, res) => {
  try {
    const { firstName, lastName, orderDetails } = req.body;

    await pool.query("BEGIN");

    // Insert into "order_headers" table
    const insertOrder =
      "INSERT INTO order_headers (first_name, last_name) VALUES($1, $2) RETURNING id";
    const response = await pool.query(insertOrder, [firstName, lastName]);

    // Insert "order_id" and "line_id" into "orderDetails" from JSON body
    const orderLineParams = orderDetails.map((item, index) => [
      ...Object.values(item),
      response.rows[0].id,
      index,
    ]);

    // Insert into "order_lines" table
    const insertOrderlines = `INSERT INTO order_lines (product_code, product_name, quantity, order_id, line_id) VALUES ${expand(
      orderDetails.length,
      5
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
