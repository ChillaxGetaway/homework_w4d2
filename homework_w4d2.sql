--1. How many actors are there with the last name ‘Wahlberg’? 

select * from actor where last_name like 'Wahlberg'


--2. How many payments were made between $3.99 and $5.99?
 
select count(*) from payment where amount between 3.99 and 5.99


--3. What film does the store have the most of? (search in inventory) 

select count (inventory.film_id), film.title from inventory,film group by inventory.film_id , film.title
																																											--show both for visual 

--4. How many customers have the last name ‘William’? 

select * from customer where last_name like 'William'


--5. What store employee (get the id) sold the most rentals? 

select count(staff.staff_id) , first_name from payment join staff on payment.staff_id  = staff.staff_id group by staff.staff_id 
																																											--cant choose only one

--6. How many different district names are there? 

select count (distinct district) from address 


--7. What film has the most actors in it? (use film_actor table and get film_id) 

select  count (distinct film_actor.actor_id) , film.title from film_actor join film on film.film_id = film_actor.film_id group by film.film_id 

																																									--cant choose only one, or visuals

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 

select distinct store_id, count(store_id) from customer group by customer.store_id


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 

																																											--dindt get...


--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?

select count (distinct rating) from film 

select distinct rating , count(rating) from film group by rating 





