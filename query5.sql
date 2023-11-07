-- Assignment: Project 5
-- Description: Run query for the first and last names of all actors and customers who have at least
-- 2 of the letter “E” in either their first name or last name. (Note! The E’s do not need to
-- be next to each other.) Order the results by last name, then first name.

USE sakila;
SELECT a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE '%E%E%' OR a.last_name LIKE '%E%E%'
UNION 
SELECT c.first_name, c.last_name
from customer c
WHERE c.first_name LIKE '%E%E%' OR c.last_name LIKE '%E%E%'
ORDER BY last_name, first_name;
;