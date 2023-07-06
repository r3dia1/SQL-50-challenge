# 1251. Average Selling Price
> Solution: 
>> 1. 利用LEFT JOIN使每個purchase_date與其start_date & end_date期間內的為同一row。  
>> 2. 把相同product_id的每一row的units * price想加總  
>> 3. 最後再除以每個product_id的總units數 (取小數到第二位)