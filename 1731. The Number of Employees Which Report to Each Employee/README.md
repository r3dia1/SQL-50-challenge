# 1731. The Number of Employees Which Report to Each Employee
> Solution: 
> 1. Use left join to dorm the manager & its employees' table
> 2. Select the desire value and calculate : COUNT(DISTINCT ) & ROUND(AVG())
> 3. Notice: dont use GROUP BY ... HAVING ... , while calculating it may cause error.