# 610. Triangle Judgement
> Solution : CASE語法 + 兩邊之和大於第三邊
```
    CASE
        WHEN (x + y) > z AND (x + z) > y AND (y + z) > x THEN "Yes"
        ELSE "No"
    END
```