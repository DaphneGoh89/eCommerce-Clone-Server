const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const {
  getSingleProduct,
  getAllProducts,
} = require("../controller/productController");

router.post("/all", getAllProducts);
router.post("/:name", getSingleProduct);

module.exports = router;
