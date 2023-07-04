# 1661. Average Time of Process per Machine
> My solution: 
>> 1. 利用LEFT JOIN讓建立一個start & end存在於同一row的table，如圖下:  
>> ![image]()
>> 2. 利用ROUND(AVG(end_time - start_time), 3)來對執行時間取平均值，並四捨五入至小數第三位。  
>> 3. 再利用GROUP BY machine_id，使之以machine_id對step 2做分群。
