const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const { getSingleProduct } = require("../controller/productController");

router.post("/:name", getSingleProduct);

module.exports = router;
