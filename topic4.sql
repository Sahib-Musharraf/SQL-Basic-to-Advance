#SQL interview question asked in hashtag#meesho hashtag#zomato :

Table 1 - Orders table
Columns - Order_id, cust_ID, city_id, order_date, order_status(placed, cancelled) ,order_value 

Question1. Identify the top 3 customers who have the highest average order value?

Answer------------------------------

SELECT cust_ID, 

AVG(order_value) as avg_order_value 

FROM Orders 

WHERE order_status = 'placed' 

GROUP BY cust_ID 

ORDER BY avg_order_value DESC 

LIMIT 3;

---------------
We can also use "subquery with window functions" to solve this problem.
---------------

SELECT cust_id
FROM (
 SELECT cust_id, AVG(order_value) AS avg_order_value,
 RANK() OVER (ORDER BY AVG(order_value) DESC) AS rnk
 FROM orders
 WHERE order_status = 'placed'
 GROUP BY cust_id
) AS new
WHERE rnk <= 3;

