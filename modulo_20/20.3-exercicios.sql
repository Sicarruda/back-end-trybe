USE sakila;

SELECT * FROM customer
WHERE email = 'LEONARD.SCHOFIELD@sakilacustomer.org';

SELECT * FROM customer
WHERE store_id = 2
AND  active LIKE FALSE
ORDER BY first_name ASC;

SELECT title, description, release_year, replacement_cost FROM film
WHERE rating <> 'NC-17' 
and replacement_cost >18
ORDER BY replacement_cost DESC, title LIMIT 100;

SELECT count(*) FROM customer
WHERE active = 1 AND store_id = 1;

SELECT * FROM customer
WHERE active = 0 AND store_id =1;

SELECT * FROM film
WHERE rating = 'NC-17'
ORDER BY rental_rate, title;

SELECT * FROM film
WHERE title LIKE '%ace%';

SELECT * FROM film

