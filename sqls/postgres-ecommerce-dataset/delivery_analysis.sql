-- avg delivery time
select EXTRACT(YEAR FROM o.order_delivered_customer_date) AS year, AVG(o.order_delivered_customer_date - o.order_purchase_timestamp) as avg_delivery_time
from orders o
where o.order_status = 'delivered'
  and o.order_delivered_customer_date IS NOT NULL
group by year;

-- top sellers with worst delivery time - who needs to be improved?
select
    oi.seller_id,
    AVG(EXTRACT(EPOCH FROM
        (o.order_delivered_customer_date - o.order_purchase_timestamp)
    ) / 86400) AS avg_delivery_days
from orders o
join orderitems oi ON o.order_id = oi.order_id
where o.order_status = 'delivered'
  and o.order_delivered_customer_date IS NOT NULL
group by oi.seller_id
order by avg_delivery_days DESC
limit 10;

-- % of late deliveries
SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE o.order_delivered_customer_date > o.order_estimated_delivery_date
        )
        / COUNT(*),
        2
    ) AS late_delivery_percent, EXTRACT(YEAR FROM o.order_delivered_customer_date) AS year
FROM orders o
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL
group by year;



