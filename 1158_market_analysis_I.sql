# Write your MySQL query statement below
SELECT u.user_id AS buyer_id, u.join_date, IFNULL(temp.cnt_order, 0) AS orders_in_2019
FROM Users u
LEFT JOIN
(SELECT buyer_id, COUNT(DISTINCT order_id) cnt_order
FROM Orders
WHERE YEAR(order_date) = '2019'
GROUP BY buyer_id) temp
ON u.user_id = temp.buyer_id;