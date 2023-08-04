# 180. Consecutive Numbers
> Solution1: LEFT JOIN and WHERE condition  
> 方法: 使用LEFT JOIN來建立一個連續三個id為one row的table，並選擇num皆相同者輸出。  

> Solution2: subquery  
> 方法: 針對同一個num，選擇三個連續id輸出 (相當於id.num = (id+1).num = (id+2).num)。  