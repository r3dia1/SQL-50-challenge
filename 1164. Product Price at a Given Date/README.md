# 1164. Product Price at a Given Date
> ## Solution: UNION ALL
> 題意分析: 根據題目，我們必須要分兩種情況來討論
>> 1. 對於在'2019-08-16'前都沒有更改過價格的產品，它的在'2019-08-16'當天的價格必定為10。  
>> 2. 對於在'2019-08-16'前已經更改過價格的產品，我們必須選擇最靠近'2019-08-16'的更改日期，作為欲選取價格。

> Method: UNION ALL便可以結合上述兩種情況做輸出
1. Group the table with the product_id field and find the first changed date over 2019-08-16 by using MIN aggregation function on HAVING clause.
2. Set the price table as 10.
3. Group the table with the product_id again, and find the product_id field and the last changed date until 2019-08-16.
4. Find the last changed new_price field with the last changed date.
5. Union the two tables by using UNION ALL.