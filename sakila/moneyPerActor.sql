SELECT 
film_id,
money,
actores,
money / actores moneyPerActor
FROM film
    -- JOIN film USING (film_id)
    JOIN money_per_film USING(film_id)
    JOIN actors_per_film USING(film_id)
GROUP BY film_id
ORDER BY film_id




;

