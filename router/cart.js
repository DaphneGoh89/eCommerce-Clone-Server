const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const { expand, flatten } = require("../helpers/helperFunction");

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

    // Insert into "cart" table
    const addToCart = `INSERT INTO "cart" ("customer_id", "product_code", "product_name", "product_color", "product_size", "quantity") 
          VALUES($1, $2, $3, $4, $5, $6)`;
    const response = await pool.query(addToCart, [
      customerId,
      productCode,
      productName,
      productColor,
      productSize,
      quantity,
    ]);

    await pool.query("COMMIT");

    // Return success JSON response
    res.status(200).json({
      status: "Success",
      message: `Product: ${productCode} added to cart successfully. `,
    });
  } catch (err) {
    // Perform rollback if error
    await pool.query("ROLLBACK");

    // Return error response
    res.status(400).json({
      status: "Error",
      message: `Fails to add to cart. ${err.message}`,
    });
  }
};

router.put("/addItem", addToCart);

module.exports = router;
