const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblProdPriceCreate = `CREATE TABLE IF NOT EXISTS "product_prices" 
  ("id" SERIAL NOT NULL,
    "product_code" VARCHAR(10) NOT NULL, 
    "currency" VARCHAR(3) NOT NULL, 
    "date_from" DATE,
    "date_to" DATE,
    "price" NUMERIC(13,2) DEFAULT 0,
    PRIMARY KEY ("id"), 
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "products"("product_code")
    );`;

pool.query(tblProdPriceCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
