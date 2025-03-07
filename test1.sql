SELECT  "first_name", SUM("salary")/SUM("RBI") FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    WHERE "performances"."year" = 2001
    AND "RBI" > 0 
    AND "performances"."year" = "salaries"."year"
    GROUP BY "first_name" 
    ORDER BY SUM("salary")/SUM("RBI") 
    LIMIT 10