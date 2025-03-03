-- SELECT * FROM "expenditures" JOIN "districts" ON "districts"."id" = "expenditures"."district_id";

SELECT ROUND(AVG("per_pupil_expenditure"),2) AS 'Average District Per-Pupil Expenditure' FROM "expenditures"