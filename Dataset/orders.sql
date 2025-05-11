CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO orders VALUES
(1, 1, 1, '2025-05-08'),
(2, 2, 2, '2025-05-08'),
(3, 3, 3, '2025-05-07'),
(4, 1, 1, '2025-05-06'),
(5, 4, 4, '2025-05-06'),
(6, 5, 4, '2025-05-05'),
(7, 1, 2, '2025-05-04'),
(8, 2, 3, '2025-05-04'),
(9, 3, 1, '2025-05-03'),
(10, 5, 3, '2025-05-02');
