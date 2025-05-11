CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

INSERT INTO order_items VALUES
(1, 1, 1, 2),
(2, 1, 2, 3),
(3, 2, 3, 4),
(4, 2, 4, 1),
(5, 3, 5, 1),
(6, 3, 6, 2),
(7, 4, 1, 1),
(8, 5, 7, 2),
(9, 5, 8, 1),
(10, 6, 8, 3),
(11, 7, 3, 2),
(12, 8, 6, 2),
(13, 9, 2, 2),
(14, 10, 5, 2),
(15, 10, 6, 1);
