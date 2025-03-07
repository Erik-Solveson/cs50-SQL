SELECT ROUND(AVG("salary"), 2) AS 'Average Salary', "name" FROM "salaries"
JOIN "teams" ON "salaries"."team_id" = "teams"."id"
WHERE "salaries"."year" =2001
GROUP BY "name"
ORDER BY "Average Salary"
LIMIT 5