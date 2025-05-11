/*--Question9: Most Common Item Combinations*/

SELECT 
    CONCAT(mi1.item_name, ' + ', mi2.item_name) AS item_pair, 
    COUNT(*) AS pair_count
FROM order_items oi1
JOIN order_items oi2 ON oi1.order_id = oi2.order_id AND oi1.item_id < oi2.item_id
JOIN menu_items mi1 ON oi1.item_id = mi1.item_id
JOIN menu_items mi2 ON oi2.item_id = mi2.item_id
GROUP BY item_pair
ORDER BY pair_count DESC;
