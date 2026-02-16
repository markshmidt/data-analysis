--how many repeated customers - are there any loyal customers?
CREATE VIEW per_person AS
  select c.customer_unique_id, COUNT(DISTINCT o.order_id) as orders_cnt
  from orders o
  join customers c on c.customer_id = o.customer_id
  group by c.customer_unique_id;

select COUNT(*) filter (where orders_cnt >= 2) as repeat_people
from per_person;

-- top five loyal customers
select *
from per_person
order by orders_cnt DESC;

-- how many customers in each state - estimating the most popular state
select c.customer_state, COUNT(c.customer_id) as customers_count
from customers c
group by c.customer_state
order by customers_count DESC;

-- customers live value distribution
with clv as (
  select
    o.customer_id,
    SUM(oi.price::numeric) as clv_gmv
  from orders o
  join orderitems oi ON oi.order_id = o.order_id
  where o.order_status = 'delivered'
  group by o.customer_id
)
select *
from clv
order by clv_gmv desc;

-- clv distribution with percentiles
with clv as (
  select
    o.customer_id,
    SUM(oi.price::numeric) AS clv_gmv
  from orders o
  join orderitems oi ON oi.order_id = o.order_id
  where o.order_status = 'delivered'
  group by o.customer_id
)
select
  percentile_cont(0.50) within group (order by clv_gmv) AS p50_median,
  percentile_cont(0.75) within group(order by clv_gmv) AS p75,
  percentile_cont(0.90) within group (order by clv_gmv) AS p90,
  percentile_cont(0.95) within group (order by clv_gmv) AS p95,
  percentile_cont(0.99) within group (order by clv_gmv) AS p99
FROM clv;





