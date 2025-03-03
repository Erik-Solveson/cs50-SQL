-- SELECT *  FROM "districts" JOIN "schools" ON "districts"."id" = "schools"."district_id"

-- SELECT COUNT("name") AS 'Number of schools in district' FROM "schools"

SELECT "city", COUNT("name") FROM "schools"
GROUP BY "city" ORDER BY COUNT("name") DESC, "city"