# 1193. Monthly Transactions I
> Solution:
>> 1. Use SUBSTR to get the substring of trans_date column.  
>> 2. Base on GROUP BY MONTH(trans_date), country  
>> 3. We can use SUM(IF()) statements to calculate the sum of transcation times and transaction amounts.  