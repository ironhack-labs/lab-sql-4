-- Get film ratings.

SELECT (rating)
FROM sakila.film;

-- Get release years.
SELECT (release_year)
FROM sakila.film;

-- Get all films with ARMAGEDDON in the title.

SELECT *

FROM sakila.film
where title regexp 'ARMAGEDDON';

-- Get all films with APOLLO in the title

SELECT *
FROM sakila.film
where title regexp 'APOLLO';

-- Get all films which title ends with APOLLO.
SELECT *
FROM sakila.film
where title like '%APOLLO';


-- Get all films with word DATE in the title.
SELECT *
FROM sakila.film
where title like '%DATE%';

-- Get 10 films with the longest title.
SELECT title,
	length(title)


FROM sakila.film
order by length(title) desc LIMIT 10
;


-- Get 10 the longest films.

SELECT *
FROM sakila.film
order by length asc LIMIT 10;
-- How many films include Behind the Scenes content?
SELECT *
FROM sakila.film
WHERE special_features = 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
SELECT *
FROM sakila.film
order by release_year asc;