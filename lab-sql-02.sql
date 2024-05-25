use sakila;
 -----1. Select all the actors with the first name ‘Scarlett’.

select * from actor;
select * from actor where first_name='Scarlett';

----2.Select all the actors with the last name ‘Johansson’.
select * from actor where last_name='Johansson';

----3.How many films (movies) are available for rent?
select * from rental;
select count(*) as nooffilm from film;

----4.How many films have been rented?
select * from film;
select count(*) as rentedmovie from rental;

----5.What is the shortest and longest rental period?
SELECT MIN(rental_rate) AS shortest_rental_period, MAX(rental_rate) AS longest_rental_period
FROM film;

-----6.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(rental_date) AS max_duration FROM rental;
SELECT MIN(rental_date) AS min_duration FROM rental;

----- 7.What's the average movie duration?
SELECT avg() AS max_duration FROM rental;
select * from rental;
select * from film;

-----8. Whats the average movie duration expressed in format (hours, minutes)?

SELECT 
    AVG(length) / 60 AS hours, 
    AVG(length) % 60 AS minutes
FROM 
    film;
    
    ------9.How many movies longer than 3 hours?
    
    SELECT 
    COUNT(*) 
FROM 
    film
WHERE 
    length > 3 * 60;
    
    
    ----------10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
    select * from actor;
   
    
    SELECT 
    CONCAT(
        first_name, ' ', last_name, ' - ', 
        LOWER(CONCAT(first_name, '.', last_name, '@sakilacustomer.org'))
    ) AS formatted_name_email
FROM 
    actor;
    
    ------11.Whats the length of the longest film title?

SELECT 
    MAX(LENGTH(title)) AS longest_title_length
FROM 
    film;


    
    


