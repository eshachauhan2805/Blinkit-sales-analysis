SELECT SUM(order_total) AS total_revenue FROM blinkit_orders;
SELECT delivery_status, COUNT(*) AS total_orders
FROM blinkit_orders GROUP BY delivery_status;
SELECT product_id, SUM(quantity) AS units_sold
FROM blinkit_order_items
GROUP BY product_id
ORDER BY units_sold DESC LIMIT 10;
SELECT payment_method, SUM(order_total) AS revenue
FROM blinkit_orders GROUP BY payment_method;
SELECT o.order_id, o.order_total, COUNT(oi.product_id) AS items_in_order
FROM blinkit_orders o
JOIN blinkit_order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
LIMIT 20;
SELECT store_id, COUNT(order_id) AS total_orders, SUM(order_total) AS revenue
FROM blinkit_orders GROUP BY store_id
ORDER BY revenue DESC;
select p.product_name, sum(oi.quantity) as units_sold
from blinkit_order_items oi
join blinkit_products p on oi.product_id = p.product_id
group by p.product_name
order by units_sold desc
limit 10;