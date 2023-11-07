-- Assignment: Project 5
-- Select the countries where people live whose last names contain “ST”. Order
-- the results by country name

USE sakila;
SELECT distinct(con.country)
FROM customer c
INNER JOIN address a
ON a.address_id= c.address_id
INNER JOIN city ct
ON ct.city_id = a.city_id
INNER JOIN country con
ON ct.country_id= con.country_id
WHERE c.last_name LIKE '%ST%'
ORDER BY con.country;
