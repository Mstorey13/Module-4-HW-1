-- How many actors are there with the last name ‘Wahlberg’?
select last_name 
from actor
where last_name like 'Wahlberg'
-- 2

-- How many payments were made between $3.99 and $5.99?
select customer_id, amount
from payment 
where amount between 3.99 and 5.99
order by amount desc 
-- 2

-- What film does the store have the most of? (search in inventory)
select title, rental_duration
from film
group by rental_duration, title
order by title asc;
-- Academy Dinosaur 

-- How many customers have the last name ‘William’?
select last_name
from customer
where last_name like 'William'
-- 0

-- What store employee (get the id) sold the most rentals?
select rental_id, staff_id
from rental
group by staff_id, rental_id 
order by rental_id asc;
-- Mike Hillyer 

-- How many different district names are there?
select address_id, district
from address
group by district, address_id
order by address_id desc; 
-- 603

-- What film has the most actors in it? (use film_actor table and get film_id)
select film_id, actor_id
from film_actor 
group by actor_id, film_id
order by film_id desc;
-- 965 

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select last_name
from customer
where last_name like '_es';
-- 0


-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select rental_id
from rental
where customer_id between 380 and 430
order by customer_id desc;


-- Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select film_id, rating
from film 
group by rating, film_id
order by film_id desc;
-- 5 categories, NC-17


