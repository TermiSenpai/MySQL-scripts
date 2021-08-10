SET @total = (SELECT 
SUM(amount) TOTAL
FROM sakila.payment);

SELECT 
SUM(amount) pagos,
CONCAT_WS(' ', first_name, last_name) cliente,
CONCAT ((SUM(amount)/@total) * 100, '%') porcentaje
FROM sakila.payment
    JOIN customer USING (customer_id)
GROUP BY (customer_id)
ORDER BY (pagos) DESC

;