select distinct rating
from sakila.film;

select distinct release_year
from sakila.film;

select * 
from sakila.film
where title like '%ARMAGEDDON%';

select * 
from sakila.film
where title like '%APOLLO%';

SELECT title
FROM sakila.film
WHERE title LIKE '%APOLLO';

select * 
from sakila.film
where title like '%DATE%';

select title as title_length
from sakila.film
order by length(title) desc
limit 10;

select title, length
from sakila.film
order by length desc
limit 10;

select count(*) 
from sakila.film
where special_features like '%Behind the Scenes%';

select title, release_year
from sakila.film
order by release_year, title;




