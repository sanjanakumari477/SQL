-- 1. Create table
CREATE TABLE sales (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

-- 2. Insert sample data
INSERT INTO sales (id, product, quantity, price) VALUES
(1, 'Laptop', 3, 55000),
(2, 'Laptop', 2, 60000),
(3, 'Phone', 10, 15000),
(4, 'Phone', 15, 12000),
(5, 'Tablet', 4, 30000),
(6, 'Tablet', 3, 25000),
(7, 'Headphones', 25, 2000),
(8, 'Headphones', 30, 1800);

-- 3. Query using arithmetic operation and HAVING
SELECT 
    product, 
    SUM(quantity * price) AS total_revenue,
    AVG(price) AS avg_price,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
HAVING SUM(quantity * price) > 100000 
   AND AVG(price) > 10000;
