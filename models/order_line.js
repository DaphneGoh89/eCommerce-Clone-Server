const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblOrderLinesCreate = `CREATE TABLE IF NOT EXISTS "order_lines" 
  ("order_id" INTEGER NOT NULL, 
    "line_id" INTEGER NOT NULL,
    "product_code" VARCHAR(100) NOT NULL, 
    "product_name" VARCHAR(100), 
    "quantity" INTEGER DEFAULT 0, 
    CONSTRAINT "fk_order_header"
        FOREIGN KEY("order_id")
            REFERENCES "order_headers"("id")
    );`;

pool.query(tblOrderLinesCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
