SELECT 

CONCAT_WS(' ', actor.first_name, actor.last_name) actor,
title,

SUM(amount) / COUNT(actor_id) moneyActor,
COUNT(actor_id)actores,
sum(amount) dineroTotal

-- (amount / COUNT(actor_id)) actorMoney
FROM payment
	JOIN rental USING (rental_id)
    JOIN inventory USING (inventory_id)
	JOIN film USING (film_id)
    JOIN film_actor USING(film_id)
    JOIN actor USING(actor_id)
group by film_id
-- ORDER BY money DESC


;