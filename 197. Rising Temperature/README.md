# 197. Rising Temperature
> Solution:
>> 1. Use JOIN ON DATEDIFF = -1 去建立一個each row日期相差一的table，如下圖  
>> ![image]()  
>> 2. 篩選後一添筆錢一天溫度高的id有哪些，並SELECT輸出。