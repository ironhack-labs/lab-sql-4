-- 1) Getting film ratings
select distinct(rating)
from sakila.film;

-- 2) Getting release years
select distinct(release_year)
from sakila.film;

-- 3) Getting all films with ARMAGEDDON in the title
select *
from sakila.film
where title LIKE "%ARMAGEDDON%";

-- 4) Getting all films with APOLLO in the title
select *
from sakila.film
where title LIKE "%APOLLO%";

-- 5) Getting all films which title ends with APOLLO
select *
from sakila.film
where title like "%APOLLO";

-- 6) Getting all films with word DATE in the title
select *
from sakila.film
where (title like "% DATE %") or (title like "% DATE") or (title like "DATE %");

-- 7) Getting 10 films with the longest title
select *
from sakila.film
order by length(title) desc
limit 10;

-- 8) Getting 10 the longest films
select *
from sakila.film
order by length desc
limit 10;

-- 9) How many films include Behind the Scenes content?
select count(*) as number_of_films
from sakila.film
where special_features like "%Behind the Scenes%";

-- 10) Listing films ordered by release year and title in alphabetical order
select *
from sakila.film
order by release_year asc, title;