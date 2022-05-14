# Write your MySQL query statement below

SELECT w2.id
FROM Weather w1
INNER JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL - 1 DAY)
WHERE w2.Temperature > w1.Temperature;

-- 使用 self join 
-- A self join is a regular join, but the table is joined with itself.
-- DATE_ADD(datetime, INTERVAL expr unit)
-- expr 用來指定你要加上的時間間隔，unit 是 expr 的單位。

SELECT w1.id as id 
FROM Weather w1, Weather w2 
WHERE w1.temperature > w2.temperature AND
DATEDIFF(w1.recordDate, w2.recordDate) = 1;