SELECT "first_name", "last_name", "salary", "HR", "performances"."year" FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "performances"."year" = "salaries"."year"
-- GROUP BY "performances"."year"
ORDER BY "players"."id" DESC, "performances"."year" DESC
