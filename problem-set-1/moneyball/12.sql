SELECT SUM("salary")/SUM("H") AS 'Hits per dollar', "first_name", "last_name" FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "performances"."year" = 2001 AND "H" > 0 
AND "performances"."year" = "salaries"."year" 
AND "first_name" 
IN 
    (SELECT  "first_name" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    WHERE "performances"."year" = 2001
    AND "RBI" > 0 
    AND "performances"."year" = "salaries"."year"   
    GROUP BY "first_name" 
    ORDER BY (SUM("salary")/SUM("RBI")) 
    LIMIT 10
   )
AND "first_name" IN
    (SELECT  "first_name" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    WHERE "performances"."year" = 2001
    AND "H" > 0 
    AND "performances"."year" = "salaries"."year"
    GROUP BY "first_name" 
    ORDER BY SUM("salary")/SUM("H") 
    LIMIT 10
    )
GROUP BY "first_name"
ORDER BY "Hits per dollar", "first_name", "last_name"
LIMIT 10