/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT s.first_name, s.last_name, SUM(p.amount) AS sum
FROM staff s
JOIN payment p using(staff_id) 
WHERE p.payment_date >= '2020-01-01' AND p.payment_date < '2020-02-01'
GROUP BY s.staff_id
order by sum;
