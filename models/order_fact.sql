SELECT
  o.order_id,
  o.order_date,
  o.customer_id,
  o.employee_id,
  o.store,
  o.statusCD,
  o.update_date,
  COUNT(DISTINCT o.order_id) AS order_count,
  SUM(oi.total_price) AS revenue
FROM
  {{ ref('order_stg') }} o
JOIN
  {{ ref('orderitem_stg') }} oi ON o.order_id = oi.order_id
GROUP BY
  o.order_id,
  o.order_date,
  o.customer_id,
  o.employee_id,
  o.store,
  o.statusCD,
  o.update_date
ORDER BY
  order_count,
  revenue
