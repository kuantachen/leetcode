# Write your MySQL query statement below

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary NOT IN (SELECT MAX(salary) FROM Employee);

-- 第二高 = 排除第一高的選項