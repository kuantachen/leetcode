# Write your MySQL query statement below
SELECT sell_date, COUNT(DISTINCT product) AS num_sold,
-- GROUP_CONCAT =  string aggregastion 用於將多行數據合並為一個字段
-- GROUP_CONCAT ( [DISTINCT] col_name1 [ORDER BY clause]  [SEPARATOR str_val] )
GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;