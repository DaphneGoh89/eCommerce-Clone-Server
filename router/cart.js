const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const { addToCart, getCartItem } = require("../controller/cartController");

router.put("/add", addToCart);
router.post("/getCart", getCartItem);

module.exports = router;
