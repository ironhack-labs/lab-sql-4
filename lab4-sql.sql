-- Get film ratings.
SELECT title,rating
FROM sakila.film;


-- Get release years.
SELECT title, release_year
FROM sakila.film;

-- Get all films with ARMAGEDDON in the title.
SELECT *
FROM sakila.film
WHERE title regexp 'ARMAGEDDON'; 


-- Get all films with APOLLO in the title
SELECT *
FROM sakila.film
WHERE title regexp 'APOLLO'; 

-- Get all films with word DATE in the title.
SELECT *
FROM sakila.film
WHERE title LIKE '%DATE%'; 

-- Get 10 films with the longest title. 
SELECT *
FROM sakila.film
WHERE length(title)
ORDER BY length(title) DESC
LIMIT 10;

-- Get 10 the longest films.
SELECT *
FROM sakila.film 
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT title, special_features
FROM sakila.film
WHERE special_features regexp 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
SELECT *
FROM sakila.film
ORDER BY 4 ASC, 2 ASC;

