const express = require("express");
const router = express.Router();
const authenticateToken = require("../middleware/authenticateToken");
const {
  userSignup,
  userLogin,
  refreshAccessToken,
  getAllUsers,
} = require("../controller/userController");

// User endpoints
router.post("/signup", userSignup);

router.post("/login", userLogin);

router.get("/allUsers", authenticateToken, getAllUsers);

router.get("/allUsersNoAuth", getAllUsers);

router.post("/refreshToken", refreshAccessToken);

module.exports = router;
