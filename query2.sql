-- Assignment: Project 5
-- Description: Run query for Select the titles of films with a description containing the word “tale” or
-- “drama”. Order the results by title

USE sakila;
SELECT title
from film f
WHERE description LIKE '%tale%' OR description LIKE '%drama%'
ORDER BY title
;