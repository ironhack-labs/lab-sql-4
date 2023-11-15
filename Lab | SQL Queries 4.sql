-- 1. Get all columns from the 'film' table.
SELECT * FROM sakila.film;

-- 2. Get film ratings.
SELECT rental_rate, rating
FROM sakila.film;

-- 3. Get release years.
SELECT DISTINCT(release_year)
FROM sakila.film;

-- 4. Get all films with 'ARMAGEDDON' in the title using regular expressions.
SELECT title
FROM sakila.film
WHERE title REGEXP 'ARMAGEDDON';

-- 5. Get all films with 'APOLLO' in the title using the LIKE operator.
SELECT title
FROM sakila.film
WHERE title LIKE '%APOLLO%';

-- 6. Get all films which title ends with 'APOLLO' using the LIKE operator.
SELECT title
FROM sakila.film
WHERE title LIKE '%APOLLO';

-- 7. Get 10 films with the longest title.
SELECT title AS longest_titles
FROM sakila.film
ORDER BY LENGTH(title) DESC
LIMIT 10;

-- 9. Count how many films include 'Behind the Scenes' content.
SELECT COUNT(special_features) AS behind_the_scene_count
FROM sakila.film
WHERE special_features REGEXP 'Behind the Scenes';

-- 10. List films ordered by release year and title in alphabetical order.
SELECT *
FROM sakila.film
ORDER BY  title ASC, release_year ASC;

