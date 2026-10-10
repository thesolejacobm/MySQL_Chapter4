SELECT film.film_id, film.title, film.description, language.language_id, language.name
FROM film
INNER JOIN language
ON film.language_id = language.language_id
LIMIT 1, 10;



SELECT 
	CONCAT(customer.first_name, ', ',  customer.last_name) AS customer_name, 
    CONCAT(actor.first_name, ', ', actor.last_name) AS actor_name
FROM customer
INNER JOIN actor
WHERE CONCAT(customer.first_name, ', ',  customer.last_name) = CONCAT(actor.first_name, ', ', actor.last_name);



SELECT T1.customer_id, T1.store_id, T1.first_name, T1.last_name
FROM customer T1, customer T2
WHERE T1.customer_id <> T2.customer_id
AND T1.first_name = T2.first_name
ORDER BY first_name, last_name;



\* Four and Five Skipped. If this message is still here by when I submit it, it likely means I wasn't able to figure it out *\



SELECT film.film_id, film.title, rental.rental_id, rental.rental_date
FROM film
	LEFT OUTER JOIN inventory
		ON film.film_id = inventory.film_id
	LEFT OUTER JOIN rental
		ON inventory.inventory_id = rental.inventory_id
WHERE rental.rental_date IS NULL
ORDER BY film.title;



SELECT film.film_id, film.title, language.language_id, language.name
FROM film
RIGHT OUTER JOIN language
ON film.language_id = language.language_id
WHERE film_id IS NULL
ORDER BY language.name



SELECT film_text.film_id, film_text.title, inventory.store_id, inventory.inventory_id
FROM film_text
NATURAL JOIN inventory
ORDER BY film_text.title, inventory.store_id, inventory.inventory_id
LIMIT 1, 100



SELECT staff.staff_id, staff.first_name, staff.last_name, store.store_id
FROM staff
CROSS JOIN store
ORDER BY staff.staff_id, store.store_id;



\* Query 11: This is another one that I'm confused on. It says to only use one table, but my reference
( https://www.w3schools.com/sql/sql_union.asp ) only gives examples with multiple tables. 


SELECT film.film_id, film.title, language.language_id, language.name
FROM film
FULL JOIN language
ON film.language_id = language.language_id
ORDER BY language.language_id DESC, film.title ASC