SELECT "schools"."name", "per_pupil_expenditure", "exemplary" FROM "expenditures"
JOIN "districts" ON "districts"."id" = "expenditures"."district_id"
JOIN "schools" ON "schools"."district_id" = "districts"."id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
WHERE "per_pupil_expenditure" > (SELECT AVG("per_pupil_expenditure") FROM "expenditures")
AND "exemplary" > (SELECT AVG("exemplary") FROM "staff_evaluations")
ORDER BY "exemplary" DESC;