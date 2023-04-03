SELECT title 
FROM sakila.film
LIMIT 10;

SELECT DISTINCT film.title, language.name AS language
FROM sakila.film
JOIN sakila.language ON film.language_id = language.language_id;

SELECT COUNT(store_id)
FROM sakila.store;

SELECT COUNT(staff_id)
FROM sakila.staff;

SELECT first_name
FROM sakila.staff;
