use sakila;

-- 1

SELECT title, rating FROM FILM;

-- 2

SELECT title, release_year FROM FILM;

-- 3

SELECT title FROM FILM where title like ('%ARMAGEDDON%');

-- 4

SELECT title FROM FILM where title like ('%APOLLO%');

-- 5
SELECT title FROM FILM where title like ('APOLLO%');

-- 6
SELECT title FROM FILM where title like ('%DATE%');

-- 7

SELECT title FROM FILM ORDER BY LENGTH(title) desc limit 10;

-- 8

SELECT title, length FROM FILM ORDER BY length desc limit 10;

-- 9

select * from film where special_features like ('%behind the scenes%');

-- 10

select * from film order by release_year, title asc;