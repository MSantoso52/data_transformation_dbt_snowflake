with customerorders as(
    select c.customer_id, concat(c.first_name,' ',c.last_name) as customer_name, count(o.order_id) as no_order
    from customers c
    join orders o
    on c.customer_id = o.customer_id
    group by c.customer_id, customer_name
    order by no_order desc
)

select customer_id, customer_name, no_order
from customerorders
