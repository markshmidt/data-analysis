-- avg review score by category - which categories are best and which are worst?
SELECT
    pct.c2 as category,
    AVG(orv.review_score::numeric) AS avg_review
FROM orderreviews orv
JOIN orders o ON o.order_id = orv.order_id
JOIN orderitems oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id
JOIN product_category_name_translation pct
     ON pct.c1 = p.product_category_name
GROUP BY category
ORDER BY avg_review DESC;

--correlation between sales and reviews (slightly negative, practically no correlation)
WITH revenue_per_order AS (
    SELECT
        order_id,
        SUM(price::numeric) AS revenue
    FROM orderitems
    GROUP BY order_id
)
SELECT
    corr(r.revenue::numeric, orv.review_score::numeric) AS revenue_review_correlation
FROM revenue_per_order r
JOIN orderreviews orv ON orv.order_id = r.order_id;

--sellers with high revenue but low scores
WITH seller_metrics AS (
    SELECT
        oi.seller_id,
        SUM(oi.price::numeric) AS total_revenue,
        AVG(orv.review_score::numeric) AS avg_review
    FROM orderitems oi
    JOIN orders o ON o.order_id = oi.order_id
    JOIN orderreviews orv ON orv.order_id = o.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY oi.seller_id
)
SELECT *
FROM seller_metrics
WHERE total_revenue > (
    SELECT percentile_cont(0.75)
    WITHIN GROUP (ORDER BY total_revenue)
    FROM seller_metrics
)
AND avg_review < 3.5
ORDER BY total_revenue DESC;

