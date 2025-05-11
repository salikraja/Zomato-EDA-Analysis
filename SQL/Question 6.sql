/*--Question6:Average Order Value per Restaurant*/

SELECT 
    r.name AS restaurant_name, 
    SUM(oi.quantity * mi.price) / COUNT(DISTINCT o.order_id) AS average_order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN menu_items mi ON oi.item_id = mi.item_id
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_id;
