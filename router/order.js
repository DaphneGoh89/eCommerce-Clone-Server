const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const { createOrder, getOrders } = require("../controller/orderController");
const authenticateToken = require("../middleware/authenticateToken");
const adminAuthToken = require("../middleware/adminAuthToken");
const { application } = require("express");

router.put("/createOrder", authenticateToken, createOrder);
router.post("/getOrders", adminAuthToken, getOrders);

module.exports = router;
