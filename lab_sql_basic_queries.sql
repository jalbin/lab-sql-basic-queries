
/* 0. Using sakila
-------------------*/

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

select count(*) from (select distinct store_id from store) as number_of_stores;

    /* - 5.2 Determine the number of employees that the company has.
    ----------------------------------------------------------------*/

    /* - 5.3 Determine how many films are available for rent and (actually how many times have films being rented).
    ---------------------------------------------------------------------------------------------------------------

    /* - 5.4 Determine the number of distinct last names of the actors in the database.
    -----------------------------------------------------------------------------------*/

/* 6. Retrieve the 10 longest films.
-----------------------------------*/

/* 7. Use filtering techniques in order to:
-------------------------------------------*/

    /* - 7.1 Retrieve all actors with the first name "SCARLETT".
    -----------------------------------------------------------

/* BONUS: */

    /* - 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
    ------------------------------------------------------------------------------------------------------------*/

    /* - 7.3 Determine the number of films that include Behind the Scenes content
    -----------------------------------------------------------------------------*/
