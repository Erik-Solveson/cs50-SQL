SELECT "H" AS 'Total Hits' ,"name" FROM "performances"
JOIN "teams" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "name"
ORDER BY "H" DESC
LIMIT 5