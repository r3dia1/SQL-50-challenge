# Write your MySQL query statement below
SELECT product_id, Sales.year as first_year, quantity, price
FROM Sales
WHERE (product_id, Sales.year) IN (SELECT product_id, MIN(Sales.year) FROM Sales GROUP BY 1)