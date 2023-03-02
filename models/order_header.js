const { Client, Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "PuiFoong1229@",
  host: "localhost",
  port: 5001,
  database: "ecomclone",
});

const tblOrderHeaderCreate = `CREATE TABLE IF NOT EXISTS "order_headers" 
  ("id" SERIAL NOT NULL, "first_name" VARCHAR(100) NOT NULL, "last_name" VARCHAR(100) NOT NULL, PRIMARY KEY ("id"));`;

pool.query(tblOrderHeaderCreate, (err, res) => {
  console.log(err, res);
  pool.end();
});
