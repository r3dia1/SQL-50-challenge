# 1581. Customer Who Visited but Did Not Make Any Transactions
> My solution:
>> 1. 利用WHERE Visits.visit_id NOT IN去篩選出沒有進行Transaction的visit_id有哪些?  
>> 2. 再利用count(customer_id)去統計每個customer_id有幾次visit時沒有交易。  
>> 3. 最後利用GROUP BY customer_id來針對customer_id每個類別排版輸出結果。  
  
> Other solution:
>> 1. 利用LEFT JOIN把Transactions合併到Visits裡面 (ON v.visit_id = t.visit_id)。  
>> 2. 若是有不足的資料，LEFT JOIN會用NULL來補齊。  
>> 3. 而存在NULL也代表著，該次visit並沒有進行transaction。  
>> 4. 所以只統計那些NULL的列，就可以達到答案。  
>> // LEFT JOION 效果
>> ![image](https://raw.githubusercontent.com/r3dia1/SQL-50-challenge/main/1581.%20Customer%20Who%20Visited%20but%20Did%20Not%20Make%20Any%20Transactions/LEFT%20JOIN%20%E6%95%88%E6%9E%9C.jpg)
  
>RUN TIME comparation: Other faster than mine :(
