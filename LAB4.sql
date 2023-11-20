-- 1.Get film ratings + 2. Get release years.
select rating, release_year from sakila.film
order by 2;

-- 3. Get all films with ARMAGEDDON in the title.
select * from sakila.film
where title regexp 'ARMAGEDDON';

-- 4. Get all films with APOLLO in the title
select * from sakila.film
where title like '%apollo%';

-- 5. Get all films which title ends with APOLLO.
select * from sakila.film
where title like '%apollo';

-- 6. Get all films with word DATE in the title.
select * from sakila.film
where title like '%date%';

-- 7. Get 10 films with the longest title.
select * , length(title) as length_title from sakila.film -- trim didn't affect the count so I simplied the funtion
order by length(title) desc
limit 10;

-- 8. Get 10 the longest films.
select * , length(title) as length_title from sakila.film
where length(title) = 10;

-- 9. How many films include **Behind the Scenes** content? 538
select count(film_id) from sakila.film
where special_features like '%Behind the Scenes%';

-- 10. List films ordered by release year and title in alphabetical order.
select * from sakila.film
order by release_year desc, title asc;

