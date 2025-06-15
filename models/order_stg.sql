SELECT
  order_id,
  order_date,
  customer_id,
  employee_id,
  store,
  status AS statusCD,
  update_date
FROM
  LANDING.orders
