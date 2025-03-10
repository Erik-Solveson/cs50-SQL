CREATE TABLE "users"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "schools"(
    "id" INTEGER,
    "name" TEXT,
    "school_type" TEXT,
    "address" TEXT,
    "year_founded" DATE
);

CREATE TABLE "companies"(
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "address" TEXT,
    PRIMARY KEY("id"),
);

CREATE TABLE "connections"(
    "user_id" INTEGER,
    "user_id_2" INTEGER,
    "school_id" INTEGER,
    "company_id" INTEGER,
    "id" INTEGER UNIQUE,
    "start_date" DATE,
    "end_date" DATE,
    "position" TEXT,
    "degree" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("user_id_2") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
.schema