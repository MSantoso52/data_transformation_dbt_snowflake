SELECT
  order_item_id,
  order_id,
  product_item,
  quantity,
  unit_price,
  quantity * unit_price as total_price,
  update_date
FROM
  LANDING.orderitems
