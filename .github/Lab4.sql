use sakila;
-- Get film ratings.
select *
from sakila.film;

select rating
from sakila.film;
-- Get release years.
select release_year
from sakila.film;
-- Get all films with ARMAGEDDON in the title.
select * from sakila.film
where title regexp 'ARMAGEDDON'; 
-- Get all films with APOLLO in the title
select * from sakila.film
where title regexp 'APOLLO'; 
-- Get all films which title ends with APOLLO.
select * from sakila.film
where title like '%APOLLO'; 
-- Get all films with word DATE in the title.
SELECT * FROM sakila.film
WHERE title REGEXP '^date' or title REGEXP ' date$' ;
-- Get 10 films with the longest title.
SELECT * FROM sakila.film
ORDER BY LENGTH(title) desc
limit 10;
-- Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY LENGTH(length) desc
limit 10;
-- How many films include Behind the Scenes content? 538
SELECT COUNT(special_features) FROM sakila.film
WHERE special_features regexp 'Behind the Scenes';
-- List films ordered by release year and title in alphabetical order.
SELECT * FROM sakila.film
ORDER BY release_year asc, title asc; 