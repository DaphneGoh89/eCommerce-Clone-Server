const pool = require("../db/db");
const bcrypt = require("bcrypt");
const saltRounds = 12;
const jwt = require("jsonwebtoken");
const { v4: uuidv4 } = require("uuid");

// userSignup
const userSignup = async (req, res) => {
  try {
    const { firstName, lastName, email, password } = req.body;

    // validation: check if email in use
    const existingUser = await pool.query(
      "SELECT email FROM users WHERE email=$1",
      [email]
    );
    if (existingUser.rowCount !== 0) {
      //console.log("existingUser", existingUser);
      return res.status(400).json({
        status: "Error",
        message: "Email already in use. Please try another one.",
      });
    }

    const hash = await bcrypt.hash(password, saltRounds);
    const newUser = await pool.query(
      "INSERT INTO users (first_name, last_name, email, password) VALUES($1, $2, $3, $4)",
      [firstName, lastName, email, hash]
    );

    res.status(200).json({
      status: "Success",
      message: `User: ${email} created successfully.`,
    });
  } catch (err) {
    res.status(400).json({
      status: "Error",
      message: `User creation fails. ${err.message}`,
    });
  }
};

// userLogin
// 1. check if user exists
// 2. check if password matches hash
// 3. create access token payload
// 4. create and return access_token
const userLogin = async (req, res) => {
  try {
    console.log("userLogin", req);
    const { email, password } = req.body;
    const user = await pool.query("SELECT * FROM users WHERE LOWER(email)=$1", [
      email.toLowerCase(),
    ]);

    // check if user exists
    if (user.rowCount === 0) {
      return res
        .status(400)
        .json({ status: "Error", message: "User not found." });
    }
    const userPassword = user?.rows[0].password;
    const comparePassword = await bcrypt.compare(password, userPassword);

    // check if password matches
    if (!comparePassword) {
      return res
        .status(400)
        .json({ status: "Error", message: "Login failed. Please try again." });
    }

    // create token payload
    const payload = {
      email: user.rows[0].email,
      firstName: user.rows[0].first_name,
    };

    // sign access token
    const access_token = jwt.sign(payload, process.env.ACCESS_SECRET, {
      expiresIn: "60m",
      jwtid: uuidv4(),
    });

    // sign refresh token
    const refresh_token = jwt.sign(payload, process.env.REFRESH_SECRET, {
      expiresIn: "30D",
      jwtid: uuidv4(),
    });

    // return access and refresh tokens upon successful login
    res.status(200).json({ access_token, refresh_token });
  } catch (err) {
    res.status(400).json({
      status: "Error",
      message: `Internal server error. ${err.message}`,
    });
  }
};

// refresh user access token
const refreshAccessToken = (req, res) => {
  try {
    const { refresh_token } = req.body;

    const decoded = jwt.verify(refresh_token, process.env.REFRESH_SECRET);

    // refer to authenticateToken.js
    const payload = { email: decoded.email };

    const access_token = jwt.sign(payload, process.env.ACCESS_SECRET, {
      expiresIn: "60m",
      jwtid: uuidv4(),
    });

    res.status(200).json({ access_token });
  } catch (err) {
    res.status(401).json({ status: "Error", message: err.message });
  }
};

// get all users
const getAllUsers = async (req, res) => {
  try {
    const allUsers = await pool.query("SELECT * FROM users");

    res.status(200).json(allUsers.rows);
  } catch (err) {
    res.status(400).json({ status: "Error", message: err.message });
  }
};

module.exports = { userSignup, userLogin, refreshAccessToken, getAllUsers };
