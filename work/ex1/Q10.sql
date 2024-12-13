SELECT country_id, COUNT(city_id) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC;
