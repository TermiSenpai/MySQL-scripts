SET @total = (SELECT 
SUM(amount) TOTAL
FROM sakila.payment);

SELECT 
	SUM(amount) ganancias,
	CONCAT ((SUM(amount)/@total) * 100, '%') porcentaje, 
	title
FROM sakila.payment
	JOIN rental USING (rental_id)
	JOIN inventory USING (inventory_id)
	JOIN film USING (film_id)
GROUP BY (film_id)

ORDER BY ganancias DESC
;