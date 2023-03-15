# 1 - Get film ratings

use sakila;
select rating
from FILM;

# 2 - Get release years.
select release_year
from FILM;

# 3 - Get all films with ARMAGEDDON in the title.
select title
from FILM
where title like '%Armageddon%';

#4 Get all films with APOLLO in the title
select title
from FILM
where title like '%Apollo%';

#5 Get all films which title ends with APOLLO.
select title
from FILM
where title like '%Apollo';

#6 Get all films with word DATE in the title.
select * from FILM
where title regexp '^date' or title regexp ' date$' ;

# 7 Get 10 films with the longest title.
select title
from FILM 
order by length(title) desc
limit 10;

#8 Get 10 the longest films.
select
    title,
	length
from FILM
order by length desc
limit 10;

#9 How many films include Behind the Scenes content?
select count(special_features)
from FILM
where special_features like 'Behind the Scenes';

#10 List films ordered by release year and title in alphabetical order.
select *
from FILM
order by release_year, title asc;



