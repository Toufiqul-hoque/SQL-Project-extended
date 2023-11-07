-- Assignment: Project 5
-- Description: Run query for the first and last names of all actors and customers who do not have
-- the letter “A” in their first name or last name. Order the results by last name, then first name.

USE sakila;
SELECT a.first_name, a.last_name
FROM actor a
WHERE a.first_name NOT LIKE '%A%' AND a.last_name NOT LIKE '%A%'
UNION 
SELECT c.first_name, c.last_name
from customer c
WHERE c.first_name NOT LIKE '%A%' AND c.last_name NOT LIKE '%A%'
ORDER BY last_name, first_name;
;