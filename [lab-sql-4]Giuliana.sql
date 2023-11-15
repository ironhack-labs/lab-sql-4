-- 1. Get film ratings
select title, rating from sakila.film;

-- 2. Get all films with ARMAGEDDON in the title
select title
from sakila.film
where title regexp 'ARMAGEDDON';

-- 3. Get all films with APOLLO in the title
select title as apollo_films
from sakila.film
where title like '%APOLLO%';

-- 4. Get all films which title ends with APOLLO
select title as apollo_in_the_end
from sakila.film
where title like '%Apollo';

-- 5. Get all films with word DATE in the title
select title as films_with_date
from sakila.film
where title like '% date%';

-- 6. Get 10 films with the longest title
select title as longest_titles, length(title) as len_of_title
from sakila.film
order by length(title) desc
limit 10;

-- 7. Get 10 the longest films
select title as longest_films, length 
from sakila.film
order by length desc
limit 10;

-- 8. How many films include Behind the Scenes content?
select count(title)
from sakila.film
where special_features like '%Behind the Scenes%';

-- 9. List films ordered by release year and title in alphabetical order
select *, title
from sakila.film
order by release_year, title asc;






