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

SELECT title
FROM sakila.film
WHERE film_id IN (SELECT film_id
					FROM sakila.film_actor
                    WHERE actor_id = (SELECT actor_id
										FROM sakila.film_actor AS fa
										GROUP BY fa.actor_id
                                        ORDER BY count(film_id) DESC
                                        LIMIT 1));


SELECT title
FROM sakila.film
WHERE film_id IN (SELECT film_id
					FROM sakila.inventory
                    WHERE inventory_id IN (SELECT inventory_id
											FROM sakila.rental
                                            WHERE rental_id IN (SELECT rental_id
																	FROM rental
																	WHERE customer_id = (SELECT customer_id
																						FROM sakila.payment
																						GROUP BY customer_id
																						ORDER BY sum(amount) DESC
																						LIMIT 1))));
                                                                                        
					
                    
SELECT first_name, last_name
FROM sakila.customer
WHERE customer_id IN (SELECT customer_id
						FROM sakila.payment
                        WHERE amount > (SELECT avg(amount)
											FROM sakila.payment))
ORDER BY first_name, last_name;
