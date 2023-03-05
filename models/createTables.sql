
-- Users
CREATE TABLE IF NOT EXISTS "users"
(
    "user_id" SERIAL NOT NULL,
    "email" VARCHAR(255),
    "password" VARCHAR(255),
    "first_name" VARCHAR(100),
    "last_name" VARCHAR(100),
    PRIMARY KEY ("user_id")
)


-- Product Main Category
CREATE TABLE IF NOT EXISTS "product_main_category" 
  ("code" VARCHAR(3) NOT NULL, 
    "name" VARCHAR(30) NOT NULL, 
    "active" BOOLEAN NOT NULL DEFAULT TRUE, 
    PRIMARY KEY ("code"));

-- Product Subcategory
CREATE TABLE IF NOT EXISTS "product_subcategory" 
  ("code" VARCHAR(5) NOT NULL, 
    "name" VARCHAR(30) NOT NULL,
    "main_cat" VARCHAR(3) NOT NULL, 
    "active" BOOLEAN NOT NULL DEFAULT TRUE, 
    PRIMARY KEY ("code"),
    CONSTRAINT "fk_main_cat"
        FOREIGN KEY("main_cat")
            REFERENCES "product_main_category"("code")
    );

-- Product Occassion
CREATE TABLE IF NOT EXISTS "product_occassion" 
  ("code" VARCHAR(3) NOT NULL, 
    "name" VARCHAR(30) NOT NULL, 
    "active" BOOLEAN NOT NULL DEFAULT TRUE, 
    PRIMARY KEY ("code"));

-- Product Color
CREATE TABLE IF NOT EXISTS "product_color" 
  ("code" VARCHAR(3) NOT NULL, 
    "name" VARCHAR(30) NOT NULL,
    "hex_color" VARCHAR(7) NOT NULL,
    PRIMARY KEY ("code"));

-- Product
CREATE TABLE IF NOT EXISTS "product" 
  ("code" VARCHAR(20) NOT NULL, 
    "name" VARCHAR(150) NOT NULL,
    "main_cat" VARCHAR(3),
    "subcategory" VARCHAR(5), 
    "occassion" VARCHAR(3),
    "active" BOOLEAN NOT NULL DEFAULT TRUE, 
    PRIMARY KEY ("code"),
    CONSTRAINT "fk_main_cat"
        FOREIGN KEY("main_cat")
            REFERENCES "product_main_category"("code"),
    CONSTRAINT "fk_sub_cat"
        FOREIGN KEY("subcategory")
            REFERENCES "product_subcategory"("code"),
    CONSTRAINT "fk_occassion"
        FOREIGN KEY("occassion")
            REFERENCES "product_occassion"("code")
    );

-- Product Price
CREATE TABLE IF NOT EXISTS "product_price" 
  ("id" SERIAL NOT NULL,
    "product_code" VARCHAR(20),
    "date_from" DATE,
    "date_to" DATE,
    "currency" VARCHAR(3) NOT NULL,
    "price" NUMERIC(13,2) DEFAULT 0,
    PRIMARY KEY ("id"),
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "product"("code")
    );

-- Product Transaction
CREATE TABLE IF NOT EXISTS "product_transaction" 
  ("id" SERIAL NOT NULL,
    "product_code" VARCHAR(20),
    "product_size" VARCHAR(10),
    "product_color" VARCHAR(3),
    "location" VARCHAR(30),
    "transaction_date" DATE,
    "origin_type" VARCHAR(2),
    "origin_id" INTEGER,
    "quantity" INTEGER DEFAULT 0,
    "direction" VARCHAR(1),
    PRIMARY KEY ("id"),
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "product"("code"),
    CONSTRAINT "fk_product_color"
        FOREIGN KEY("product_color")
            REFERENCES "product_color"("code")
    );

-- Product Image
CREATE TABLE IF NOT EXISTS "product_image" 
  ("id" SERIAL NOT NULL,
    "product_code" VARCHAR(20),
    "product_color" VARCHAR(3),
    "image_path" VARCHAR(255),
    "main_display" BOOLEAN DEFAULT FALSE,
    "hover_display" BOOLEAN DEFAULT FALSE,
    "cart_display" BOOLEAN DEFAULT FALSE,
    PRIMARY KEY ("id"),
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "product"("code"),
    CONSTRAINT "fk_product_color"
        FOREIGN KEY("product_color")
            REFERENCES "product_color"("code")       
    );


-- Order
CREATE TABLE IF NOT EXISTS "order" 
  ("id" SERIAL NOT NULL,
    "customer_id" INTEGER,
    "first_name" VARCHAR(255),
    "last_name" VARCHAR(255),
    "order_date" DATE DEFAULT CURRENT_DATE,
    "order_currency" VARCHAR(3),
    "order_total" NUMERIC(13,2) DEFAULT 0,
    "giftcard" VARCHAR(30),
    "promocode" VARCHAR(30),
    "giftcard_value" NUMERIC(13,2),
    "promocode_value" NUMERIC(13,2),
    "shipping_fee" NUMERIC(13,2),
    "gst_amount" NUMERIC(13,2),
    "shipto_country" VARCHAR(2),
    "shipto_addrline1" VARCHAR(255),
    "shipto_addrline2" VARCHAR(255),
    "shipto_postal" VARCHAR(20),
    "contact_ctrycode" VARCHAR(10),
    "contact_number" VARCHAR(30),
    "delivery_method" VARCHAR(1),
    "delivery_timing" VARCHAR(1),
    "payment_method" VARCHAR(10),
    "payment_amount" NUMERIC(13,2),
    "order_status" VARCHAR(1),
    PRIMARY KEY ("id"),
    CONSTRAINT "fk_users"
        FOREIGN KEY("customer_id")
            REFERENCES "users"("user_id")     
    );

  -- Order Line
CREATE TABLE IF NOT EXISTS "order_line" 
  ("order_id" INTEGER NOT NULL,
  "line_num" INTEGER NOT NULL,
    "product_code" VARCHAR(20),
    "product_name" VARCHAR(150),
    "product_color" VARCHAR(3),
    "product_size" VARCHAR(10),
    "order_qty" INTEGER,
    "unit_price" NUMERIC(13,2),
    "line_total" NUMERIC(13,2),
    "line_status" VARCHAR(1),
    PRIMARY KEY ("order_id", "line_num"),
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "product"("code"),
    CONSTRAINT "fk_product_color"
        FOREIGN KEY("product_color")
            REFERENCES "product_color"("code"),
    CONSTRAINT "fk_order_id"
        FOREIGN KEY("order_id")
            REFERENCES "order"("id")       
    );


-- Cart
CREATE TABLE IF NOT EXISTS "cart" 
  ("id" SERIAL NOT NULL,
    "customer_id" INTEGER,
    "product_code" VARCHAR(20),
    "product_name" VARCHAR(150),
    "product_color" VARCHAR(3),
    "product_size" VARCHAR(10),
    "quantity" INTEGER,
    PRIMARY KEY ("id"),
    CONSTRAINT "fk_users"
        FOREIGN KEY("customer_id")
            REFERENCES "users"("user_id"),
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "product"("code"),
    CONSTRAINT "fk_product_color"
        FOREIGN KEY("product_color")
            REFERENCES "product_color"("code")       
    );