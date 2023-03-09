const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const {
  addToCart,
  addMultipleToCart,
  getCartItem,
  editCartItem,
  removeFromCart,
} = require("../controller/cartController");

router.put("/add", addToCart);
router.put("/addMultiple", addMultipleToCart);
router.put("/edit", editCartItem);
router.post("/getCart", getCartItem);
router.delete("/delete", removeFromCart);

module.exports = router;
