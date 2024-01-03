/* LAB: SQL Basic Queries */

/* 0. Using sakila database
---------------------------*/

use sakila;

/* 1. Displaying all available tables in the Sakila database.
-------------------------------------------------------------*/

show tables;

/* 2. Retrieve all the data from the tables actor, film and customer.
--------------------------------------------------------------------*/

select * from actor;
select * from film;
select * from customer;

/* 3. Retrieve the following columns from their respective tables:
------------------------------------------------------------------*/

   /* - 3.1 Titles of all films from the film table
      ---------------------------------------------*/

select title from film;

   /*  - 3.2 List of languages used in films, with the column aliased as language from the language table
      --------------------------------------------------------------------------------------------------*/

select name as language from language;

   /*  - 3.3 List of first names of all employees from the staff table
       ---------------------------------------------------------------*/

select first_name from staff;

/* 4. Retrieve unique release years.
-----------------------------------*/

select distinct release_year from film;

/* 5. Counting records for database insights:
---------------------------------------------*/

    /* - 5.1 Determine the number of stores that the company has.
    ------------------------------------------------------------*/

select count(distinct(store_id)) number_of_stores from store;

    /* - 5.2 Determine the number of employees that the company has.
    ----------------------------------------------------------------*/
select count(distinct(staff_id)) as number_of_employees from staff;

    /* - 5.3 Determine how many films are available for rent (actually how many times have films being rented).
    ---------------------------------------------------------------------------------------------------------------*/

select count(distinct(film_id)) from inventory;

	/*  Actually how many times have films being rented : */ 
    
select title, count(film_id) as times_rented
from film
join inventory
using (film_id)
group by film_id
having count(film_id) > 1;

    /* - 5.4 Determine the number of distinct last names of the actors in the database.
    -----------------------------------------------------------------------------------*/
    
select count(distinct(last_name)) from actor;

/* 6. Retrieve the 10 longest films.
-----------------------------------*/

select title, length from film order by length desc limit 10;

/* 7. Use filtering techniques in order to:
-------------------------------------------*/

    /* - 7.1 Retrieve all actors with the first name "SCARLETT".
    -----------------------------------------------------------*/
    
select first_name, last_name from actor where first_name = "SCARLETT";   
 
/* BONUS: */
    /* - 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
    ------------------------------------------------------------------------------------------------------------*/
    
select title, length from film where title  like "%ARMAGEDDON%" and length > 100;  
 
    /* - 7.3 Determine the number of films that include Behind the Scenes content
    -----------------------------------------------------------------------------*/

select count(special_features) as films_behind_scenes from film where special_features like "%Behind the Scenes%";   