const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblProdTransCreate = `CREATE TABLE IF NOT EXISTS "product_transactions" 
  ("id" SERIAL NOT NULL,
    "product_code" VARCHAR(10) NOT NULL,
    "product_color" VARCHAR(3),
    "product_size" VARCHAR(10),
    "transaction_no" INTEGER,
    "transaction_date" DATE,
    "currency" VARCHAR(3), 
    "price" NUMERIC(13,2) DEFAULT 0,
    "quantity" INTEGER DEFAULT 0,
    "direction" VARCHAR(1),
    "location" VARCHAR(30),
    PRIMARY KEY ("id"), 
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "products"("product_code")
    );`;

pool.query(tblProdTransCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
