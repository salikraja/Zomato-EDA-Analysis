/* Question 5: Restaurant with Highest Number of Orders*/

SELECT 
    r.name AS restaurant_name, COUNT(o.order_id) AS total_orders
FROM
    orders o
        JOIN
    restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_id
ORDER BY total_orders DESC
LIMIT 5;

