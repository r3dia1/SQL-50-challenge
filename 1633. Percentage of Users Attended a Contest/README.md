# 1633. Percentage of Users Attended a Contest
> Solution:
>> 1. 在運算式中可以使用SELECT COUNT(*) FROM Users來當作operand。  
>> 2. 原本打算用JOIN來實作，但後來發現不用，原本如下:
```
SELECT contest_id, ROUND(COUNT(contest_id)/ (SELECT count(*) from Users) * 100, 2) as percentage
FROM Users t1
LEFT JOIN Register t2 ON t1.user_id = t2.user_id
GROUP BY contest_id HAVING contest_id IS NOT NULL
ORDER BY percentage DESC, contest_id ASC
```
>> 3. 省略JOIN之後還能獲得更短的runtime。