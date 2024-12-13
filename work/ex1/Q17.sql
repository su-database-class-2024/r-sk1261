SELECT category.name AS category_name, 
       AVG(DATE_PART('day', rental.return_date - rental.rental_date)) AS avg_rental_days
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY avg_rental_days DESC;
