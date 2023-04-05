SELECT title
FROM sakila.film
WHERE length > (SELECT AVG(length)
				FROM sakila.film);
                
SELECT COUNT(inventory_id)
FROM sakila.inventory
WHERE film_id = (SELECT film_id
					FROM sakila.film
                    WHERE title = 'Hunchback Impossible');
                    
                    
SELECT first_name, last_name
FROM sakila.actor
WHERE actor_id IN (SELECT actor_id
					FROM sakila.film_actor
                    WHERE film_id IN (SELECT film_id
										FROM sakila.film
                                        WHERE title = 'Alone Trip'));
                                        
SELECT title
FROM sakila.film
WHERE film_id IN (SELECT film_id
					FROM sakila.film_category
                    WHERE category_id IN (SELECT category_id
										FROM sakila.category
                                        WHERE name = 'Family'));                             

SELECT first_name, last_name, email
FROM sakila.customer
WHERE address_id IN (SELECT address_id
						FROM sakila.address
                        WHERE city_id IN (SELECT city_id
											FROM sakila.city
                                            WHERE country_id IN (SELECT country_id
																	FROM sakila.country
                                                                    WHERE country = 'Canada')));
                                                                    
SELECT cu.first_name, cu.last_name, cu.email
FROM sakila.customer AS cu
JOIN sakila.address AS a ON cu.address_id=a.address_id
JOIN sakila.city AS ci ON a.city_id=ci.city_id
JOIN sakila.country AS co ON ci.country_id=co.country_id
WHERE co.country='Canada';

SELECT 