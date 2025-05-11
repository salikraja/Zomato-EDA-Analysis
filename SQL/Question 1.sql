/*Ques1  Which restaurant has the highest revenue?*/
SELECT 
    r.item_name AS restaurant_item_name,
    ROUND(SUM(oi.quantity * mi.price), 2) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN menu_items mi ON oi.item_id = mi.item_id
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_id, r.item_name
ORDER BY total_revenue DESC
LIMIT 1;
