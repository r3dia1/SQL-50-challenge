# Write your MySQL query statement below
SELECT SUBSTR(trans_date, 1, 7) as month, country, COUNT(state) as trans_count,
SUM(IF(state="approved", 1, 0)) as approved_count, SUM(amount) as trans_total_amount,
SUM(IF(state = 'approved',amount,0)) as approved_total_amount
FROM Transactions
GROUP BY MONTH(trans_date), country