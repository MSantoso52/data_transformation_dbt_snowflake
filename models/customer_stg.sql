SELECT
  customer_id,
  first_name,
  last_name,
  email,
  phone,
  address,
  city,
  state,
  zipcode,
  update_date,
  CONCAT(first_name,' ',last_name) as customer_name
FROM
  LANDING.customers
