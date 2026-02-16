-- total revenue - How much money business earned?

SELECT SUM(oi.price::numeric) AS total_revenue
FROM orderitems oi;

-- total revenue per order - how much money each order brought us?
SELECT
  order_id,
  SUM(price::numeric) AS order_revenue
FROM orderitems
GROUP BY order_id
ORDER BY order_revenue DESC;

-- average revenue per order - can be useful for expected revenue
select avg(price::numeric) as avg_price
from orderitems;

-- total revenue per item - which items are sold better, which are sold worse?
select oi.product_id, SUM(oi.price::numeric) as total_revenue
from orderitems oi
GROUP BY oi.product_id;

-- five most selling products
select oi.product_id, SUM(oi.price::numeric) as total_revenue
from orderitems oi
GROUP BY oi.product_id
ORDER BY total_revenue desc
LIMIT 5;

-- five least selling products
select oi.product_id, SUM(oi.price::numeric) as total_revenue
from orderitems oi
GROUP BY oi.product_id
ORDER BY total_revenue asc
LIMIT 5;

--top five sellers
select oi.seller_id, SUM(oi.price::numeric) as total_revenue
from orderitems oi
group by oi.seller_id
order by total_revenue desc
limit 5;

--five most selling categories
select p.product_category_name, SUM(oi.price::numeric) as total_revenue
from products p
join orderitems oi on oi.product_id = p.product_id
where p.product_category_name IS NOT NULL
group by p.product_category_name
order by total_revenue desc
LIMIT 5;



-- total revenue per year - is there any revenue growth?
select SUM(oi.price::numeric) as total_revenue, EXTRACT(YEAR FROM o.order_delivered_customer_date) AS year
from orderitems oi
join orders o on o.order_id = oi.order_id
where o.order_delivered_customer_date IS NOT NULL
  and o.order_status = 'delivered'
group by year;

--total revenue per month each year - closely revenue growth analysis
select date_trunc('month', o.order_purchase_timestamp)::date AS month, SUM(oi.price::numeric) as total_revenue
from orderitems oi
join orders o on o.order_id = oi.order_id
where o.order_delivered_customer_date IS NOT NULL
  and o.order_status = 'delivered'
group by month
order by month asc;

-- total revenue per month - which month is more selling in total?
select SUM(oi.price::numeric) as total_revenue, EXTRACT(MONTH FROM o.order_delivered_customer_date) AS month
from orderitems oi
join orders o on o.order_id = oi.order_id
where o.order_delivered_customer_date IS NOT NULL
  and o.order_status = 'delivered'
group by month;


