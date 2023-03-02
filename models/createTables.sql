

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
    PRIMARY KEY ("id"),
    CONSTRAINT "fk_product"
        FOREIGN KEY("product_code")
            REFERENCES "product"("code"),
    CONSTRAINT "fk_product_color"
        FOREIGN KEY("product_color")
            REFERENCES "product_color"("code")       
    );
