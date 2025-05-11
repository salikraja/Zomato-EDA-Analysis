/*  Question 4: Monthly Revenue Trend (All Restaurants)*/

SELECT
  DATE_FORMAT(o.order_date, '%Y-%m') AS month,
  SUM(oi.quantity * mi.price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN  menu_items mi on oi.item_id=mi.item_id
GROUP BY month
ORDER BY month;
