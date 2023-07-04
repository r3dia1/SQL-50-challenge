# 197. Rising Temperature
> Solution:
>> 1. Use JOIN ON DATEDIFF = -1 去建立一個each row日期相差一的table，如下圖  
>> ![image](https://raw.githubusercontent.com/r3dia1/SQL-50-challenge/main/197.%20Rising%20Temperature/DATEDIFF.jpg)  
>> 2. 篩選後一天比前一天溫度高的id有哪些，並SELECT輸出。
