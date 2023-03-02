require("dotenv").config();
const jwt = require("jsonwebtoken");

const authenticateToken = (req, res, next) => {
  // get token from req body
  // verify access token
  const access_token = req.headers["authorization"].replace("Bearer ", "");

  if (access_token) {
    try {
      const decoded = jwt.verify(access_token, process.env.ACCESS_SECRET);
      // add decoded token to request
      req.decoded = decoded;
      console.log("authorization", decoded);

      next();
    } catch (err) {
      return res
        .status(400)
        .json({ status: "Error", message: `Internal error. ${err.message}` });
    }
  } else {
    return res
      .statue(400)
      .json({ status: "Error", message: "Access token not found." });
  }
};

module.exports = authenticateToken;
