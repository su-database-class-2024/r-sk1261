SELECT country.country, 
       COUNT(DISTINCT customer.customer_id) AS customer_count, 
       SUM(payment.amount) AS total_sales
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY country.country
ORDER BY total_sales DESC;
