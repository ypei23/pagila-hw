/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT country, SUM(payment.amount) AS profit
FROM country
inner join city on city.country_id = country.country_id
inner join address on address.city_id = city.city_id
inner join customer on customer.address_id = address.address_id 
inner join rental on rental.customer_id = customer.customer_id
inner join payment on payment.rental_id = rental.rental_id
GROUP BY country
ORDER BY country;
