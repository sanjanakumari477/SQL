--create database 
CREATE DATABASE Company_Sale;
--table 1 
CREATE TABLE product_details (
    product_id INT PRIMARY KEY ,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);
--viewing 
SELECT * FROM product_details;

--insertion 
INSERT INTO product_details (product_id, product_name, category, price, stock) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 120),
(2, 'Mechanical Keyboard', 'Electronics', 89.99, 75),
(3, 'Bluetooth Headphones', 'Electronics', 59.99, 200),
(4, 'Cotton T-Shirt', 'Clothing', 19.99, 300),
(5, 'Denim Jeans', 'Clothing', 49.99, 150),
(6, 'Coffee Maker', 'Home Appliances', 79.99, 50),
(7, 'Desk Lamp', 'Home Decor', 34.50, 80),
(8, 'Yoga Mat', 'Sports', 29.99, 100),
(9, 'Water Bottle', 'Sports', 15.75, 250),
(10, 'Novel - Midnight Echoes', 'Books', 14.99, 60),
(11, 'Cookbook - Vegan Delights', 'Books', 24.99, 40),
(12, 'Smartphone Case', 'Accessories', 12.99, 500),
(13, 'Laptop Sleeve', 'Accessories', 22.99, 120),
(14, 'Running Shoes', 'Footwear', 89.99, 90),
(15, 'Sandals', 'Footwear', 35.99, 110),
(16, 'Wall Clock', 'Home Decor', 45.00, 65),
(17, 'Cutlery Set', 'Kitchen', 39.99, 85),
(18, 'Face Cream', 'Beauty', 28.50, 180),
(19, 'Shampoo', 'Beauty', 8.99, 400),
(20, 'Backpack', 'Accessories', 55.00, 70),
(21, 'Gaming Mousepad', 'Electronics', 18.99, 160),
(22, 'Monitor Stand', 'Electronics', 42.75, 45),
(23, 'Stainless Steel Pan', 'Kitchen', 65.99, 55),
(24, 'Plant Pot', 'Home Decor', 23.99, 130),
(25, 'Resistance Bands', 'Sports', 19.99, 170),
(26, 'Eyeshadow Palette', 'Beauty', 52.99, 60),
(27, 'Handbag', 'Accessories', 120.00, 30),
(28, 'Sunglasses', 'Accessories', 89.99, 95),
(29, 'Wireless Charger', 'Electronics', 31.50, 140),
(30, 'Bath Towel Set', 'Home Essentials', 45.99, 110),
(31, 'Pillow', 'Home Essentials', 29.99, 200),
(32, 'Hair Dryer', 'Beauty', 44.50, 75),
(33, 'Action Figure', 'Toys', 24.99, 85),
(34, 'Board Game', 'Toys', 49.99, 40),
(35, 'Crayon Set', 'Toys', 12.99, 150),
(36, 'Grill Pan', 'Kitchen', 37.99, 65),
(37, 'Perfume', 'Beauty', 89.99, 50),
(38, 'Desk Organizer', 'Office Supplies', 27.99, 90),
(39, 'Notebook Set', 'Office Supplies', 18.50, 120),
(40, 'Instant Pot', 'Kitchen', 119.99, 35),
(41, 'Fitness Tracker', 'Electronics', 79.99, 80),
(42, 'Earrings', 'Jewelry', 29.99, 100),
(43, 'Necklace', 'Jewelry', 75.00, 45),
(44, 'Dumbbell Set', 'Sports', 149.99, 25),
(45, 'Romance Novel', 'Books', 9.99, 80),
(46, 'Mystery Thriller', 'Books', 13.50, 70),
(47, 'Curtains', 'Home Decor', 52.99, 60),
(48, 'Bed Sheet Set', 'Home Essentials', 69.99, 40),
(49, 'Phone Holder', 'Accessories', 15.99, 200),
(50, 'USB Cable', 'Electronics', 10.99, 500);

--2nd table 
CREATE TABLE product_sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES product_details(product_id)
);
--viewing 
SELECT * FROM product_sales;

--insertion 
INSERT INTO product_sales (sale_id, product_id, quantity_sold, sale_date) VALUES
(1, 3, 2, '2024-01-15'),
(2, 7, 1, '2024-01-16'),
(3, 12, 3, '2024-01-17'),
(4, 25, 2, '2024-01-18'),
(5, 8, 1, '2024-01-19'),
(6, 19, 4, '2024-01-20'),
(7, 33, 2, '2024-01-21'),
(8, 41, 1, '2024-01-22'),
(9, 15, 3, '2024-01-23'),
(10, 28, 2, '2024-01-24'),
(11, 5, 1, '2024-01-25'),
(12, 37, 2, '2024-01-26'),
(13, 22, 1, '2024-01-27'),
(14, 9, 5, '2024-01-28'),
(15, 46, 3, '2024-01-29'),
(16, 14, 2, '2024-01-30'),
(17, 31, 1, '2024-01-31'),
(18, 48, 2, '2024-02-01'),
(19, 2, 1, '2024-02-02'),
(20, 39, 3, '2024-02-03'),
(21, 17, 2, '2024-02-04'),
(22, 44, 1, '2024-02-05'),
(23, 11, 2, '2024-02-06'),
(24, 29, 4, '2024-02-07'),
(25, 6, 1, '2024-02-08'),
(26, 35, 2, '2024-02-09'),
(27, 50, 3, '2024-02-10'),
(28, 21, 2, '2024-02-11'),
(29, 13, 1, '2024-02-12'),
(30, 40, 2, '2024-02-13'),
(31, 4, 3, '2024-02-14'),
(32, 27, 1, '2024-02-15'),
(33, 45, 2, '2024-02-16'),
(34, 10, 4, '2024-02-17'),
(35, 32, 1, '2024-02-18'),
(36, 49, 2, '2024-02-19'),
(37, 1, 3, '2024-02-20'),
(38, 38, 1, '2024-02-21'),
(39, 23, 2, '2024-02-22'),
(40, 47, 1, '2024-02-23'),
(41, 16, 2, '2024-02-24'),
(42, 34, 3, '2024-02-25'),
(43, 26, 2, '2024-02-26'),
(44, 43, 1, '2024-02-27'),
(45, 18, 4, '2024-02-28'),
(46, 30, 2, '2024-02-29'),
(47, 42, 1, '2024-03-01'),
(48, 24, 3, '2024-03-02'),
(49, 36, 2, '2024-03-03'),
(50, 20, 1, '2024-03-04');

--Rank Products by Price
SELECT 
    product_id,
    product_name,
    price,
    RANK() OVER(ORDER BY price DESC) AS price_rank
FROM product_details;

-- Monthly Running Total of Sales
SELECT 
    product_id,
    sale_date,
    quantity_sold,
    SUM(quantity_sold) OVER(
        PARTITION BY product_id ORDER BY sale_date
    ) AS running_total
FROM product_sales;

--LAG or LEAD for Month-over-Month Growth
SELECT 
    product_id,
    sale_date,
    quantity_sold,
    LAG(quantity_sold) OVER(PARTITION BY product_id ORDER BY sale_date) AS previous_month,
    quantity_sold - LAG(quantity_sold) OVER(PARTITION BY product_id ORDER BY sale_date) AS growth
FROM product_sales;

--Total Sales Per Product
WITH sales_summary AS (
    SELECT product_id, SUM(quantity_sold) AS total_sales
    FROM product_sales
    GROUP BY product_id
)
SELECT p.product_name, s.total_sales
FROM product_details p
JOIN sales_summary s ON p.product_id = s.product_id;


--Selects products whose price is higher than the average price of products in the same category.
SELECT *
FROM product_details p1
WHERE price > (
    SELECT AVG(price)
    FROM product_details p2
    WHERE p1.category = p2.category
);

-- products never sold 
SELECT pd.product_id, pd.product_name
FROM product_details pd
LEFT JOIN product_sales ps ON pd.product_id = ps.product_id
WHERE ps.sale_id  IS NULL;

--Summary + Subtotals + Grand Total
SELECT 
    category,
    product_name,
    SUM(price) AS total_value
FROM product_details
GROUP BY ROLLUP(category, product_name);

-- Generates product-level, category-level, and grand total stock summaries using GROUPING SETS.
SELECT 
    category,
    product_name,
    SUM(stock) AS total_stock
FROM product_details
GROUP BY GROUPING SETS (
    (category, product_name),
    (category),
    ()
);

-- Best selling products
SELECT product_id, SUM(quantity_sold) AS total_sold
FROM product_sales
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 1;

--top 5 selling products 
SELECT *
FROM (
    SELECT 
        p.product_name,
        SUM(ps.quantity_sold) AS total_sold,
        RANK() OVER(ORDER BY SUM(ps.quantity_sold) DESC) AS rnk
    FROM product_details p
    JOIN product_sales ps ON p.product_id = ps.product_id
    GROUP BY p.product_name
) x
WHERE rnk <= 5;


-- Add the extra_info JSON column to your table
ALTER TABLE product_details ADD COLUMN extra_info JSON;

SELECT 
   product_id,product_name,
   JSON_VALUE(extra_info, '$.brand') AS brand
FROM product_details;


-- Update each product with brand information using proper JSON syntax
UPDATE product_details SET extra_info = '{"brand" "Logitech"}' WHERE product_id = 1;
UPDATE product_details SET extra_info = '{"brand": "Corsair"}' WHERE product_id = 2;
UPDATE product_details SET extra_info = '{"brand": "Sony"}' WHERE product_id = 3;
UPDATE product_details SET extra_info = '{"brand": "Nike"}' WHERE product_id = 4;
UPDATE product_details SET extra_info = '{"brand": "Levi''s"}' WHERE product_id = 5;
UPDATE product_details SET extra_info = '{"brand": "Keurig"}' WHERE product_id = 6;
UPDATE product_details SET extra_info = '{"brand": "IKEA"}' WHERE product_id = 7;
UPDATE product_details SET extra_info = '{"brand": "Lululemon"}' WHERE product_id = 8;
UPDATE product_details SET extra_info = '{"brand": "Hydro Flask"}' WHERE product_id = 9;
UPDATE product_details SET extra_info = '{"brand": "Penguin Books"}' WHERE product_id = 10;
UPDATE product_details SET extra_info = '{"brand": "Chronicle Books"}' WHERE product_id = 11;
UPDATE product_details SET extra_info = '{"brand": "Spigen"}' WHERE product_id = 12;
UPDATE product_details SET extra_info = '{"brand": "Amazon Basics"}' WHERE product_id = 13;
UPDATE product_details SET extra_info = '{"brand": "Nike"}' WHERE product_id = 14;
UPDATE product_details SET extra_info = '{"brand": "Adidas"}' WHERE product_id = 15;
UPDATE product_details SET extra_info = '{"brand": "Seiko"}' WHERE product_id = 16;
UPDATE product_details SET extra_info = '{"brand": "Cuisinart"}' WHERE product_id = 17;
UPDATE product_details SET extra_info = '{"brand": "Olay"}' WHERE product_id = 18;
UPDATE product_details SET extra_info = '{"brand": "Pantene"}' WHERE product_id = 19;
UPDATE product_details SET extra_info = '{"brand": "JanSport"}' WHERE product_id = 20;
UPDATE product_details SET extra_info = '{"brand": "SteelSeries"}' WHERE product_id = 21;
UPDATE product_details SET extra_info = '{"brand": "Amazon Basics"}' WHERE product_id = 22;
UPDATE product_details SET extra_info = '{"brand": "T-fal"}' WHERE product_id = 23;
UPDATE product_details SET extra_info = '{"brand": "IKEA"}' WHERE product_id = 24;
UPDATE product_details SET extra_info = '{"brand": "TheraBand"}' WHERE product_id = 25;
UPDATE product_details SET extra_info = '{"brand": "Urban Decay"}' WHERE product_id = 26;
UPDATE product_details SET extra_info = '{"brand": "Michael Kors"}' WHERE product_id = 27;
UPDATE product_details SET extra_info = '{"brand": "Ray-Ban"}' WHERE product_id = 28;
UPDATE product_details SET extra_info = '{"brand": "Samsung"}' WHERE product_id = 29;
UPDATE product_details SET extra_info = '{"brand": "Fieldcrest"}' WHERE product_id = 30;
UPDATE product_details SET extra_info = '{"brand": "Tempur-Pedic"}' WHERE product_id = 31;
UPDATE product_details SET extra_info = '{"brand": "Dyson"}' WHERE product_id = 32;
UPDATE product_details SET extra_info = '{"brand": "Hasbro"}' WHERE product_id = 33;
UPDATE product_details SET extra_info = '{"brand": "Mattel"}' WHERE product_id = 34;
UPDATE product_details SET extra_info = '{"brand": "Crayola"}' WHERE product_id = 35;
UPDATE product_details SET extra_info = '{"brand": "Lodge"}' WHERE product_id = 36;
UPDATE product_details SET extra_info = '{"brand": "Chanel"}' WHERE product_id = 37;
UPDATE product_details SET extra_info = '{"brand": "Staples"}' WHERE product_id = 38;
UPDATE product_details SET extra_info = '{"brand": "Moleskine"}' WHERE product_id = 39;
UPDATE product_details SET extra_info = '{"brand": "Instant Pot"}' WHERE product_id = 40;
UPDATE product_details SET extra_info = '{"brand": "Fitbit"}' WHERE product_id = 41;
UPDATE product_details SET extra_info = '{"brand": "Swarovski"}' WHERE product_id = 42;
UPDATE product_details SET extra_info = '{"brand": "Pandora"}' WHERE product_id = 43;
UPDATE product_details SET extra_info = '{"brand": "Bowflex"}' WHERE product_id = 44;
UPDATE product_details SET extra_info = '{"brand": "Harlequin"}' WHERE product_id = 45;
UPDATE product_details SET extra_info = '{"brand": "Penguin Books"}' WHERE product_id = 46;
UPDATE product_details SET extra_info = '{"brand": "IKEA"}' WHERE product_id = 47;
UPDATE product_details SET extra_info = '{"brand": "Boll & Branch"}' WHERE product_id = 48;
UPDATE product_details SET extra_info = '{"brand": "Anker"}' WHERE product_id = 49;
UPDATE product_details SET extra_info = '{"brand": "Anker"}' WHERE product_id = 50;

--Average Sales
SELECT product_id,SUM(quantity_sold) AS total_sold
FROM product_sales
GROUP BY product_id
HAVING SUM(quantity_sold) > (
    SELECT AVG(quantity_sold) FROM product_sales
);

-- Calculates total price at product, category, and grand-total levels using ROLLUP.
SELECT 
    category,
    product_name,
    SUM(price) AS total_price
FROM product_details
GROUP BY ROLLUP(category, product_name);

--Identify Duplicate Product Names
SELECT product_name, COUNT(*) AS count_name
FROM product_details
GROUP BY product_name
HAVING COUNT(*) > 1;

--Products With Last Sale Date
SELECT 
    p.product_name,
    MAX(ps.sale_date) AS last_sale
FROM product_details p
JOIN product_sales ps
ON p.product_id = ps.product_id
GROUP BY p.product_name;

--sales Contribution %
SELECT
    product_id,
    SUM(quantity_sold) AS total_sold,
    SUM(quantity_sold) * 100.0 /
    SUM(SUM(quantity_sold)) OVER() AS contribution_percent
FROM product_sales
GROUP BY product_id;

--create pivot table  
SELECT 
    product_id,

    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 1  THEN quantity_sold ELSE 0 END) AS Jan,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 2  THEN quantity_sold ELSE 0 END) AS Feb,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 3  THEN quantity_sold ELSE 0 END) AS Mar,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 4  THEN quantity_sold ELSE 0 END) AS Apr,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 5  THEN quantity_sold ELSE 0 END) AS May,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 6  THEN quantity_sold ELSE 0 END) AS Jun,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 7  THEN quantity_sold ELSE 0 END) AS Jul,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 8  THEN quantity_sold ELSE 0 END) AS Aug,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 9  THEN quantity_sold ELSE 0 END) AS Sep,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 10 THEN quantity_sold ELSE 0 END) AS Oct,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 11 THEN quantity_sold ELSE 0 END) AS Nov,
    SUM(CASE WHEN EXTRACT(MONTH FROM sale_date) = 12 THEN quantity_sold ELSE 0 END) AS Dec

FROM product_sales
GROUP BY product_id
ORDER BY product_id;



--Dates where product had no sale using joins 
WITH all_dates AS (
    SELECT DISTINCT sale_date FROM product_sales
),
product_dates AS (
    SELECT product_id, sale_date FROM product_sales
)
SELECT 
    ad.sale_date,
    p.product_name
FROM all_dates ad
CROSS JOIN product_details p
LEFT JOIN product_dates d
    ON d.sale_date = ad.sale_date 
    AND d.product_id = p.product_id
WHERE d.sale_date IS NULL;

 



