SELECT
last_name,
concat_ws(' ', first_name, last_name) nombre,
group_concat(first_name, ' ', last_name, ' ') sameName
FROM sakila.actor
WHERE last_name like last_name
GROUP BY last_name
ORDER BY last_name




;