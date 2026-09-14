--                                    Session 7
-- Task : 1
create database amazon;
use amazon;

create table orders (
    order_id int primary key,
    user_name varchar(100),
    total_amount decimal(10, 2),
    order_date date
);

insert into orders values
(1, 'Kavy', 1500.00, '2026-10-13'),
(2, 'Tarang', 2300.50, '2026-10-19'),
(3, 'Jaydip', null, '2026-10-12'),
(4, 'Krish', 1200.34, '2026-11-21'),
(5, 'Dhruv', 3100.00, '2026-12-26');
select * from orders;

-- Task : 2
select user_name, count(*) as order_count
from orders
group by user_name;

-- Task : 3
select avg(total_amount) as average_order_amount
from orders;

-- Task : 4
select max(total_amount) as highest_order_amount,
       min(total_amount) as lowest_order_amount
from orders;

-- Task : 5
select sum(total_amount) as total_sales
from orders
where total_amount is not null;
