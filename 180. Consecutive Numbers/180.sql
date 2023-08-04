# Write your MySQL query statement below
SELECT DISTINCT t1.num as ConsecutiveNums
FROM Logs t1
LEFT JOIN Logs t2 ON t2.id = t1.id + 1
LEFT JOIN Logs t3 ON t3.id = t2.id + 1
WHERE t1.num = t2.num AND t2.num = t3.num