const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblProductCreate = `CREATE TABLE IF NOT EXISTS "products" 
  ("product_code" VARCHAR(10) NOT NULL, 
    "product_name" VARCHAR(100) NOT NULL, 
    "main_category" INTEGER,
    "sub_category" INTEGER NOT NULL,
    "occassion" INTEGER NOT NULL,
    "collection" INTEGER NOT NULL,
    "active" BOOLEAN NOT NULL DEFAULT TRUE, 
    PRIMARY KEY ("product_code"));`;

pool.query(tblProductCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
