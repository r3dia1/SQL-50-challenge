# 1211. Queries Quality and Percentage
> Solution: 
>> 1. Use AVG(rating / position) to calculate the quality.  
>> 2. Use AVG(IF(rating < 3, 1, 0)) to calculate the percentage of all queries with rating less than 3.

> My solution:
>> 1. Use AVG(rating / position) to calculate the quality.  
>> 2. Use (SELECT COUNT(*) FROM Queries t2 WHERE t1.query_name=t2.query_name AND t2.rating < 3)/COUNT(t1.query_name) instead of the AVG() & IF() statement.