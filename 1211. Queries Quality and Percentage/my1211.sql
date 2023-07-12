# Write your MySQL query statement below
SELECT query_name, ROUND(AVG(rating/position), 2) as quality,
ROUND((SELECT COUNT(*) FROM Queries t2 WHERE t1.query_name=t2.query_name AND t2.rating < 3)/COUNT(t1.query_name)*100, 2) as poor_query_percentage
FROM Queries t1
GROUP BY query_name;