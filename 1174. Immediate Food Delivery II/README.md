# 1174. Immediate Food Delivery II
> Solution:
>> 1. Use subquery to get the select the table of every first order.  
>> ![image](https://github.com/r3dia1/SQL-50-challenge/blob/main/1174.%20Immediate%20Food%20Delivery%20II/subquery.jpg)  
>> 2. Use SUM( IF( order_date = customer_pref_delivery_date, 1, 0 ) ) to sum up the correspond order.  
>> 3. Calculate the average.
