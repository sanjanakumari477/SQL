--Find Customers Who Purchased All Products From a List
--Ans:-
--Tables assumed: customers(customer_id), orders(order_id, customer_id, product_id)
-- Suppose product_list = (1, 2, 3)
SELECT customer_id
FROM orders
WHERE product_id IN (1, 2, 3)
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = 3;
