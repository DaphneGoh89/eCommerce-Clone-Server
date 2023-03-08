const express = require("express");
const pool = require("../db/db");
const router = express.Router();
const { createOrder } = require("../controller/orderController");
const authenticateToken = require("../middleware/authenticateToken");
const { application } = require("express");

router.put("/createOrder", authenticateToken, createOrder);

module.exports = router;
