SELECT 
SUM(moneyPerActor) money,
CONCAT_WS(' ',actor.first_name, actor.last_name) actor
FROM sakila.film
JOIN film_actor USING (film_id)
JOIN moneyPerActor USING (film_id)
JOIN actor USING (actor_id)
GROUP BY actor_id
ORDER BY money DESC



;