-- Assignment: Project 5
-- Description: Run query for the titles of films that star an actor with “Mc” in their first name or
-- last name. Order the results by title

USE sakila;
SELECT distinct(f.title)
FROM actor a
JOIN film_actor fa
ON a.actor_id= fa.actor_id
JOIN film f
ON fa.film_id= f.film_id
WHERE a.first_name LIKE '%Mc%'  OR a.last_name LIKE '%Mc%'
ORDER BY f.title
;