SELECT s.store_id, ci.city, co.country
FROM sakila.store AS s
JOIN sakila.address AS a
ON s.address_id=a.address_id
JOIN sakila.city AS ci
ON a.city_id=ci.city_id
JOIN sakila.country AS co
ON ci.country_id=co.country_id;