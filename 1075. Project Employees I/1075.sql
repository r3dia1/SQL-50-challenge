# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(t2.experience_years), 2) as average_years
FROM Project t1
LEFT JOIN Employee t2 
ON t1.employee_id = t2.employee_id
GROUP BY project_id;