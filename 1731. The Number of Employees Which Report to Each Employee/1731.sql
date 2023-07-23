# Write your MySQL query statement below
SELECT  t1.employee_id, t1.name, COUNT(DISTINCT t2.employee_id) as reports_count, ROUND(AVG(t2.age)) as average_age
FROM Employees t1
LEFT JOIN Employees t2 ON t2.reports_to = t1.employee_id
WHERE t1.employee_id = t2.reports_to
GROUP BY 1
ORDER BY 1 