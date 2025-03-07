SELECT "HR", "year" FROM "performances"
JOIN "players" ON "players"."id" = "performances"."player_id"
WHERE "first_name" = 'Ken' AND "last_name" = 'Griffey'
AND "birth_year" = 1969