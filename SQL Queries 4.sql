USE sakila;

-- 1
SELECT
	rating
FROM film;

-- 2
SELECT
	release_year
FROM film;

-- 3
SELECT
	title
FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- 4
SELECT
	title
FROM film
WHERE title LIKE '%APOLLO%';

-- 5
SELECT
	title
FROM film
WHERE title LIKE '%APOLLO';

-- 6
SELECT
	title
FROM film
WHERE title LIKE '% DATE' or title like 'DATE %' or title like '% DATE %' or title like 'DATE';

-- OR

SELECT
	title
FROM film
WHERE title REGEXP ' Date$' or title REGEXP '^Date ' or title REGEXP ' Date ' or title REGEXP '^Date$';

-- 7
SELECT
	title
FROM film
ORDER by length(title) DESC
LIMIT 10;

-- 8
SELECT
	title,
    length
FROM film
ORDER by length DESC
LIMIT 10;

-- 9
SELECT
	count(special_features)
FROM film
WHERE special_features REGEXP 'Behind the Scenes';

-- 10
SELECT
	title,
    release_year
FROM film
ORDER BY title,release_year;