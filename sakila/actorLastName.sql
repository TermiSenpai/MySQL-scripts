SELECT
	concat_ws(' ', a.first_name, a.last_name) nombre,
	group_concat(b.first_name, ' ', b.last_name) sameName
FROM sakila.actor a
	JOIN actor b ON (a.last_name = b.last_name AND a.actor_id != b.actor_id) 

GROUP BY a.actor_id 
ORDER BY a.last_name




;