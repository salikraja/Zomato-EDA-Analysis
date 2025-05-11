/* Ques 2 ___Which are the top 3 most sold food items (by quantity)?*/

select mi.item_name as food_item,
sum(oi.quantity) as total_sold
from order_items oi
join menu_items mi on oi.item_id=mi.item_id
group by mi.item_id, mi.item_name
order by total_sold desc
limit 3;

/* bonus question
Top 3 sold food items restaurant-wise*/

WITH item_sales AS (
    SELECT 
        r.name AS restaurant_name,
        mi.item_name AS food_item,
        SUM(oi.quantity) AS total_sold,
        dense_rank() OVER (PARTITION BY r.restaurant_id ORDER BY SUM(oi.quantity) DESC) AS rn
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN menu_items mi ON oi.item_id = mi.item_id
    JOIN restaurants r ON o.restaurant_id = r.restaurant_id
    GROUP BY r.restaurant_id, r.name, mi.item_id, mi.item_name
)

SELECT 
    restaurant_name,
    food_item,
    total_sold
FROM item_sales
WHERE rn <= 3
ORDER BY restaurant_name, total_sold DESC;
