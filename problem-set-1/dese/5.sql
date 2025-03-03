SELECT "city" , COUNT("name") AS 'Number of schools' FROM "schools" 
GROUP BY "city" HAVING  COUNT("name") < 3 
ORDER BY "city"