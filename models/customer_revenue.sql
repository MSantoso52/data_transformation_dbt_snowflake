SELECT
  os.customer_id,
  c.customer_name,
  SUM(os.order_count) AS order_count,
  SUM(os.revenue) AS revenue
FROM
  {{ ref('order_fact') }} os
JOIN {{ ref('customer_stg') }} c ON os.customer_id = c.customer_id
GROUP BY
  os.customer_id,
  c.customer_name
ORDER BY
  order_count,
  revenue
