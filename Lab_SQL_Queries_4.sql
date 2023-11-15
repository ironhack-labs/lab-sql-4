-- Get film ratings.
select rating
from sakila.film;

-- using distrinct to get only the unique value 
select distinct rating
from sakila.film;

-- Get release years.
select release_year
from sakila.film;

-- using distrinct to get only the unique value 
select distinct release_year
from sakila.film;

-- Get all films with ARMAGEDDON in the title.

select * from sakila.film
where title regexp 'ARMAGEDDON';

-- counting the number of film with ARMAGEDDON
-- 6 films with ARMAGEDDON
 select count(*) as film_num from sakila.film 
where title regexp 'ARMAGEDDON' ;

-- Get all films with APOLLO in the title
-- 6 films with APOLLO
select * from sakila.film
where title regexp 'APOLLO';

select count(*) as film_num from sakila.film 
where title regexp 'APOLLO' ;

-- Get all films which title ends with APOLLO. 5 movies finishing by APOLLO

select * from sakila.film
where title like '%APOLLO';

select count(*) as film_num from sakila.film 
where title like '%APOLLO';

-- Get all films with word DATE in the title. 6 movies with DATE in the title
select * from sakila.film
where title regexp ' DATE|DATE ';

select count(*) as film_num from sakila.film 
where title regexp ' DATE|DATE ';

-- Get 10 films with the longest title.

select *, 
length(title) as title_len
from sakila.film
order by title_len desc
limit 10;

-- Get 10 the longest films.
-- all movies are 185 min 
select *
from sakila.film
order by length desc
limit 10;

-- How many films include Behind the Scenes content?
-- select them first by using regex
select * 
from sakila.film
where special_features regexp 'Behind the Scenes';

-- now counting them with count , 538 movies got Behind the scene 

select count(*) as Behind_count
from sakila.film
where special_features regexp 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
-- I think this is good and order by title and release year 
 
select *
from sakila.film
order by title, release_year desc
;
