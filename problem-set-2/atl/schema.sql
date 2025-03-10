CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "check-ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "checkin_time" INTEGER,
    "flight" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id")
);


CREATE TABLE "airlines"(
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT
);

CREATE TABLE "flights"(
    "id" INTEGER,
    "airline_id" INTEGER,
    "flight_number" INTEGER,
    "departure_code" TEXT,
    "arrival_code" TEXT,
    "expected_departure_time" REAl,
    "expected_arrival_time" REAL,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);

.schema