# Write your MySQL query statement below
SELECT id, CASE WHEN p_id IS NULL THEN "Root"
WHEN id NOT IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL) THEN "Leaf"
ELSE "Inner" END AS Type
FROM Tree
ORDER BY id;

-- 若 p_id IS NULL 則為 root
-- 若 id NOT IN p_id 則為 leaf
-- 其他則為 Inner