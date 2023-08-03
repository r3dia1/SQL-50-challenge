# 1789. Primary Department for Each Employee
> ## Solution: subquery
> 1. 題意: 找出每個employee的primary department
> 2. 方法:
>> 情況一 : 若是該employee只隸屬於一個部門，則其部門為priamry  

>> 情況二 : 若是該employee隸屬於多個部門，則選擇其primary flag為'Y'的部門為primary  

>> 綜合以上，我們可以用subquery來處理這個問題，其中情況一的部分只要選擇count(employee_id) = 1的員工輸出即可。