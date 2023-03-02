require("dotenv").config();
const express = require("express");
const cors = require("cors");
const pool = require("./db/db");
const userRouter = require("./router/user.js");
const orderRouter = require("./router/order.js");
const productRouter = require("./router/product.js");

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/user", userRouter);
app.use("/order", orderRouter);
app.use("/product", productRouter);

// Port listening
const PORT = process.env.PORT || 5005;

app.listen(PORT, () => {
  console.log(`Server is listening at port: ${PORT}`);
});
