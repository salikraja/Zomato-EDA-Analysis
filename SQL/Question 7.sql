/*--Question7: Top 5 Customers by Spend */

SELECT 
    c.name, 
    SUM(oi.quantity * mi.price) AS total_spend
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN menu_items mi ON oi.item_id = mi.item_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spend DESC
LIMIT 5;
