-- Assignment: Project 5
-- Description: Run query for the first and last names of actors and customers who have exactly 4
-- letters in their first or last name. Order the results by last name, then first name

USE sakila;
SELECT a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE '____' OR a.last_name LIKE '____'
UNION 
SELECT c.first_name, c.last_name
from customer c
WHERE c.first_name LIKE '____' OR c.last_name LIKE '____'
ORDER BY last_name, first_name;