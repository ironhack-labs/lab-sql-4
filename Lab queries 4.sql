select * 
from sakila.film;

select rating
from sakila.film;

select release_year
from sakila.film;

select title
from sakila.film
where title like '%ARMAGEDDON%';

select title
from sakila.film
where title like '%APOLLO%';

select	title
from sakila.film
where title like '%APOLLO';

select	title
from sakila.film
where (title regexp '^DATE') or (title regexp " DATE$");

select	length(title), title
from sakila.film
order by length(title) desc
limit 10;

select title, length
from sakila.film
order by length desc
limit 10;

select count(special_features)
from sakila.film
where special_features like '%Behind the Scenes%';

select release_year, title
from sakila.film
order by release_year asc, title;
