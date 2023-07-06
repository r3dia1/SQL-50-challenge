# Write your MySQL query statement below
SELECT t1.product_id, ROUND(SUM(units * price)/SUM(units), 2) as average_price
FROM Prices t1
LEFT JOIN UnitsSold t2
ON t1.product_id = t2.product_id
AND DATEDIFF(start_date, purchase_date) <= 0 AND DATEDIFF(purchase_date, end_date) <= 0
GROUP BY t1.product_id