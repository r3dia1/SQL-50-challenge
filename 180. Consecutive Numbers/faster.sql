SELECT distinct num AS ConsecutiveNums
FROM
Logs 
WHERE (id+1,num) in (SELECT * FROM Logs) AND
 (id+2,num) in  (SELECT * FROM Logs)