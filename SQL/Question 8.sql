/*--Question8: Day with Highest Sales*/
 
 SELECT 
    DATE(o.order_date) AS order_day, 
    SUM(oi.quantity * mi.price) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN menu_items mi ON oi.item_id = mi.item_id
GROUP BY order_day
ORDER BY total_sales DESC
LIMIT 1;
