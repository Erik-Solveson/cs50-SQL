SELECT "salary", "first_name", "last_name" FROM "salaries"
JOIN "players" ON "players"."id" = "salaries"."player_id"
WHERE "year" = 2001
ORDER BY "salary", "last_name", "first_name", "player_id"
