const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblProdColorCreate = `CREATE TABLE IF NOT EXISTS "product_colors" 
  ("color_code" VARCHAR(3) NOT NULL, "color_name" VARCHAR(100) NOT NULL, "hex_color" VARCHAR(7) NOT NULL, PRIMARY KEY ("color_code"));`;

pool.query(tblProdColorCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
