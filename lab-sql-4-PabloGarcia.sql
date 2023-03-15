-- Get film ratings.
SELECT rating FROM sakila.film;

-- Get release years.
SELECT release_year FROM sakila.film;

-- Get all films with ARMAGEDDON in the title.
SELECT title FROM sakila.film WHERE title LIKE '%ARMAGEDDON%';

-- Get all films with APOLLO in the title
SELECT title FROM sakila.film WHERE title LIKE '%APOLLO%';

-- Get all films which title ends with APOLLO.
SELECT title FROM sakila.film WHERE title LIKE '%APOLLO';

-- Get all films with word DATE in the title.
SELECT title FROM sakila.film WHERE title LIKE '%DATE%';

-- Get 10 films with the longest title.
SELECT title, length(title) FROM sakila.film ORDER BY length(title) DESC LIMIT 10;

-- Get 10 the longest films.
SELECT title, length FROM `sakila`.`film` ORDER BY length DESC LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT COUNT(title) FROM `sakila`.`film` WHERE special_features LIKE '%Behind the Scenes%';

-- List films ordered by release year and title in alphabetical order.
SELECT title, release_year FROM `sakila`.`film` ORDER BY release_year, title;