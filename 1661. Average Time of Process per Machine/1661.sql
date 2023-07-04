# Write your MySQL query statement below
SELECT t1.machine_id, ROUND(AVG(t2.timestamp - t1.timestamp), 3) as processing_time
FROM Activity t1
LEFT join Activity t2 ON t1.machine_id = t2.machine_id
AND t1.process_id = t2.process_id
AND t2.activity_type = "end" 
WHERE t1.activity_type = "start"
GROUP BY t1.machine_id;