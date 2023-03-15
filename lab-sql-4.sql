SELECT rating
FROM sakila.film;

SELECT release_year
FROM sakila.film;

SELECT *
FROM sakila.film
WHERE title like '%Armageddon%';

SELECT *
FROM sakila.film
WHERE title like '%Apollo%';

SELECT *
FROM sakila.film
WHERE title like '%Apollo';

SELECT *
FROM sakila.film
WHERE title REGEXP 'date';

SELECT title
FROM sakila.film
ORDER BY length(title) DESC
LIMIT 10;

SELECT *
FROM sakila.film
ORDER BY length(length) DESC
LIMIT 10;

SELECT count(special_features)
FROM sakila.film
WHERE special_features REGEXP 'behind the scenes';

SELECT *
FROM sakila.film
ORDER BY release_year,title ASC;
