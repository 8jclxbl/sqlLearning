SELECT c.name,COUNT(fcc.film_id) AS num 
FROM film_category fc 
INNER JOIN category c on c.category_id=fc.category_id
INNER JOIN (SELECT * FROM film f WHERE f.description LIKE '%robot%') AS f ON f.film_id=fc.film_id
INNER JOIN (SELECT *,COUNT (fc.film_id) AS num FROM film_category fc GROUP BY category_id HAVING num>=5) AS fcc ON fc.category_id=fcc.category_id;

