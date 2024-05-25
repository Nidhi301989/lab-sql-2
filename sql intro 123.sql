1.---Use sakila database.
use sakila;

2.---Get all the data from tables actor, film and customer.

select * from actor;
select * from film;
select * from customer;

3.----Get film titles

select title from film;

4.----Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language
---- per each film, but this is a good time to think about how you might get that information in the future.


select distinct language_id AS language
from film;
select name as languages 
from language;

5.1----- Find out how many stores does the company have?
5.2----- Find out how many employees staff does the company have?
5.3------ Return a list of employee first names only?

select * from store;
select count(*) as numbersofstores from store;

SELECT COUNT(*) AS NumberOfStores FROM Store;

select * from staff;
SELECT COUNT(*) AS EMPStaff FROM staff;

use sakila;

SELECT first_Name FROM Staff;
SELECT first_Name FROM Staff WHERE Staff_id = 1;






