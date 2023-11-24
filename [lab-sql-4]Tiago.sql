-- 1. Get film ratings.
select  distinct film.rating
from sakila.film
;

-- 2. Get release years.
select distinct film.release_year
from sakila.film
;
-- 3. Get all films with ARMAGEDDON in the title.
select *
from sakila.film
where film.title like '%ARMAGEDDON%'
;

#or 
select *
from sakila.film
where film.title regexp 'ARMAGEDDON'
;
-- 4. Get all films with APOLLO in the title
select *
from sakila.film
where film.title regexp 'APOLLO'
;

-- 5. Get all films which title ends with APOLLO.
select *
from sakila.film
where film.title regexp 'APOLLO$'
;
#or
select *
from sakila.film
where film.title like '%APOLLO'
;
-- 6. Get all films with word DATE in the title.
select *
from sakila.film
where film.title regexp  '^DATE| DATE| DATE$'
;
-- 7. Get 10 films with the longest title.
select film.title
from sakila.film
order by length(title) desc
limit 10
;
-- 8. Get 10 the longest films.
select film.title, concat(film.length div 60 ,'h:', film.length  % 60,'min') as duration
from sakila.film
order by film.length   desc
limit 10
;
-- 9 How many films include Behind the Scenes content?
select count(*) as number_of_films_with_behind_the_scenes
from sakila.film
where film.special_features regexp 'Behind the Scenes'
;

-- 10. List films ordered by release year and title in alphabetical order.
select *
from sakila.film
order by release_year asc, title asc
;