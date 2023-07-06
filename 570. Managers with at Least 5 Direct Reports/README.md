# 570. Managers with at Least 5 Direct Reports
> My Solution:
>> 1. LEFT JOIN LEFT JOIN Employee t2 ON t1.id = t2.managerId
>> ![image]()
>> 2. GROUP BY name HAVING COUNT(t1.id) > 4: Choose the t1.id that has been showen st least 5 times.