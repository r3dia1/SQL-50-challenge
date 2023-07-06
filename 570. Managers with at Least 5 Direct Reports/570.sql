# Write your MySQL query statement below
SELECT t1.name FROM Employee t1
LEFT JOIN Employee t2 
ON t1.id = t2.managerId
GROUP BY name
HAVING COUNT(t1.id) > 4