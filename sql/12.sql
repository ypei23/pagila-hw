/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

select c.customer_id, c.first_name, c.last_name, sum(p.amount) 
from customer c
join payment p on c.customer_id = p.customer_id 
group by c.customer_id
ORDER BY c.last_name;
