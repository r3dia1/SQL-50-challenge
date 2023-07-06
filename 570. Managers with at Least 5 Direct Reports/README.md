# 570. Managers with at Least 5 Direct Reports
> My Solution:
>> 1. LEFT JOIN LEFT JOIN Employee t2 ON t1.id = t2.managerId  
>> ![image](https://github.com/r3dia1/SQL-50-challenge/blob/main/570.%20Managers%20with%20at%20Least%205%20Direct%20Reports/left%20join.jpg)  
>> 2. GROUP BY name HAVING COUNT(t1.id) > 4 : Choose the t1.id that has been showen st least 5 times.
