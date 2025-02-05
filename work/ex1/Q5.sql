SELECT film_id, title, rating
FROM film
WHERE rating IN ('PG', 'G')
LIMIT 5;
