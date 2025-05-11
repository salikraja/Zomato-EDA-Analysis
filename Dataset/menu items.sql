CREATE TABLE menu_items (
    item_id INT PRIMARY KEY,
    restaurant_id INT,
    item_item_name VARCHAR(100),
    price DECIMAL(6,2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO menu_items VALUES
(1, 1, 'Paneer Tikka', 250.00),
(2, 1, 'Butter Naan', 40.00),
(3, 2, 'Vada Pav', 30.00),
(4, 2, 'Pav Bhaji', 80.00),
(5, 3, 'Dosa', 100.00),
(6, 3, 'Idli Sambhar', 60.00),
(7, 4, 'Fish Curry', 180.00),
(8, 4, 'Mishti Doi', 50.00);
