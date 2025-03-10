CREATE TABLE "ingredients"(
    "id" INTEGER,
    "name" TEXT,
    "price_per_unit" REAL,
    "unit" TEXT,
    "donut_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" BOOLEAN,
    "price" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "customer_id" INTEGER,
    "order_items_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "order_items"(
    "id" INTEGER,
    "donut_id" INTEGER,
    "order_id" INTEGER,
    "quantity" INTEGER,
    "price" REAL,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
);