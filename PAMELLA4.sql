use sakila;

-- 1.Get film ratings.
select rating from film;

-- 2.Get release years.
select  release_year from film;

-- 3.Get all films with ARMAGEDDON in the title.
select *
from film
where title regexp 'ARMAGEDDON'
;

-- 4.Get all films with APOLLO in the title
select *
from film
where title regexp 'APOLLO'
;

-- 5.Get all films which title ends with APOLLO.
select *
from film
where title like '%APOLLO'
;

-- 6.Get all films with word DATE in the title.
select title from sakila.film where (title regexp "^DATE ") or (title regexp " DATE") or (title regexp " DATE ");

-- 7.Get 10 films with the longest title.
select title, length(title) from sakila.film order by length(title) desc limit 10;

-- 8.Get 10 the longest films.
select *
from film
order by length desc
LIMIT 10
;

-- 9.How many films include Behind the Scenes content?
SELECT count(special_features) 
FROM film
WHERE special_features REGEXP 'Behind the Scenes';

-- 10.List films ordered by release year and title in alphabetical order.
select *
from film
order by release_year, title asc
;