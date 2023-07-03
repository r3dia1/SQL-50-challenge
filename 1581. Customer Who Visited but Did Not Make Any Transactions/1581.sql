SELECT customer_id, COUNT(customer_id) as count_no_trans
FROM Visits a1
WHERE a1.visit_id NOT IN (SELECT visit_id FROM Transactions a2 WHERE a1.visit_id = a2.visit_id)
GROUP BY customer_id;