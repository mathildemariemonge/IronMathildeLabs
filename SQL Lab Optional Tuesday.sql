SELECT s.store_id, ci.city, co.country
FROM sakila.store AS s
JOIN sakila.address AS a
ON s.address_id=a.address_id
JOIN sakila.city AS ci
ON a.city_id=ci.city_id
JOIN sakila.country AS co
ON ci.country_id=co.country_id;

SELECT s.store_id, ci.city, co.country
FROM sakila.store AS s
JOIN sakila.address AS a
ON s.address_id=a.address_id
JOIN sakila.city AS ci
ON a.city_id=ci.city_id
JOIN sakila.country AS co
ON ci.country_id=co.country_id;

SELECT s.store_id, sum(p.amount) 
FROM sakila.staff AS s
JOIN sakila.payment AS p
ON s.staff_id=p.staff_id
GROUP BY s.store_id;

SELECT c.name, avg(f.length)
FROM sakila.category AS c
JOIN sakila.film_category AS r
ON c.category_id=r.category_id
JOIN sakila.film AS f
ON f.film_id=r.film_id
GROUP BY c.name
ORDER BY c.name;

SELECT c.name, avg(f.length)
FROM sakila.category AS c
JOIN sakila.film_category AS r
ON c.category_id=r.category_id
JOIN sakila.film AS f
ON f.film_id=r.film_id
GROUP BY c.name
ORDER BY avg(f.length) DESC
LIMIT 5;

SELECT f.title
FROM sakila.rental AS r
JOIN sakila.inventory AS i
ON r.inventory_id=i.inventory_id
JOIN sakila.film AS f
ON f.film_id=i.film_id
GROUP BY f.film_id
ORDER BY count(r.rental_id) DESC
LIMIT 5;

SELECT c.name AS category, sum(p.amount) AS revenue
FROM sakila.payment AS p
JOIN sakila.rental AS r
ON p.rental_id=r.rental_id
JOIN sakila.inventory AS i
ON i.inventory_id=r.inventory_id
JOIN sakila.film_category AS fc
ON i.film_id=fc.film_id
JOIN sakila.category AS c
ON fc.category_id=c.category_id
GROUP BY category
ORDER BY sum(p.amount) DESC
LIMIT 5;

SELECT DISTINCT f.title,
CASE 
	WHEN r.return_date IS NULL THEN '0'
    ELSE '1'
END AS on_stock
FROM sakila.rental AS r
JOIN sakila.inventory AS i
ON r.inventory_id=i.inventory_id
JOIN sakila.film AS f
ON f.film_id=i.film_id
WHERE f.title IN ('Academy Dinosaur')
LIMIT 1;
