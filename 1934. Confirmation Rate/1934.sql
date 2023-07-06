# Write your MySQL query statement below
SELECT t1.user_id, CASE WHEN t2.time_stamp is null
then 0.00
else ROUND(SUM(action = "confirmed")/COUNT(t1.user_id), 2)
end as confirmation_rate
FROM Signups t1
LEFT JOIN Confirmations t2 ON t1.user_id = t2.user_id
GROUP BY t1.user_id