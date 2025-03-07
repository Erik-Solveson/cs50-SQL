SELECT "first_name", "last_name", "salary" FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
ORDER BY "salary" DESC
LIMIT 1