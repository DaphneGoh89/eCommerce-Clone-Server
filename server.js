require("dotenv").config();
const express = require("express");
const cors = require("cors");
const pool = require("./db/db");
const userRouter = require("./router/user.js");
const productRouter = require("./router/product.js");
const cartRouter = require("./router/cart");
const orderRouter = require("./router/order.js");

const app = express();

// Express Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Routes
app.use("/user", userRouter);
app.use("/product", productRouter);
app.use("/cart", cartRouter);
app.use("/order", orderRouter);

// Port listening
const PORT = process.env.PORT || 5005;

app.listen(PORT, () => {
  console.log(`Server is listening at port: ${PORT}`);
});
