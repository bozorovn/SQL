create table orders
(
id int,
order_date date,
total_order int
);

insert all
into orders values (1, '23-apr-2023', 100)
into orders values (2, '23-apr-2023', 110)
into orders values (3, '23-apr-2023', 90)
into orders values (4, '24-apr-2023', 140)
into orders values (5, '24-apr-2023', 130)
select dummy from dual;


select 
id, order_date, total_order,

sum(total_order) over(
order by id asc )
as running_total

from orders
order by id asc;

--

select 
id, order_date, total_order,

sum(total_order) over(
order by order_date asc )
as running_total

from orders
order by order_date asc;

