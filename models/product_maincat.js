const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblProdPriceCreate = `CREATE TABLE IF NOT EXISTS "product_maincat" 
  ("id" SERIAL NOT NULL,
    "main_category" VARCHAR(10) NOT NULL, 
    "active" BOOLEAN NOT NULL DEFAULT TRUE, 
    PRIMARY KEY ("id"), 
    CONSTRAINT "fk_product"
        FOREIGN KEY("id")
            REFERENCES "products"("main_category")
    );`;

pool.query(tblProdPriceCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
