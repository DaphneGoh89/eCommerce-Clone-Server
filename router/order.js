const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const { createOrder } = require("../controller/orderController");

router.put("/createOrder", createOrder);

module.exports = router;
