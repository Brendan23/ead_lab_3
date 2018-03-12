create function postgraphile.orders_done(orders postgraphile.orders) returns text as $$
    select orders.orderid || ' ' || orders.customerid
$$ language sql stable;
