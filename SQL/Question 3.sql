/* ques3___Most Popular Food Item Overall (All Restaurants Combined)
followo-up ques Top 5 Most Popular Food Items (Across All Restaurants)*/

SELECT
  mi.item_name AS food_item,
  SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN menu_items mi ON oi.item_id = mi.item_id
GROUP BY mi.item_name
ORDER BY total_quantity_sold DESC
LIMIT 1;


SELECT
  mi.item_name AS food_item,
  SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN menu_items mi ON oi.item_id = mi.item_id
GROUP BY mi.item_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

