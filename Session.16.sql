--                                      Session 16
-- Task : 1
use regular;

create table foodorders (
    order_id int primary key,
    restaurant_name varchar(100),
    customer_name varchar(100),
    order_amount decimal(10,2),
    order_date date
);
insert into foodorders values
(1, 'dominos', 'Kavy', 450.00, '2026-09-01'),
(2, 'swiggy kitchen', 'dhruv', 650.00, '2026-09-01'),
(3, 'pizza hut', 'krish', 300.00, '2026-09-02'),
(4, 'zomato cafe', 'dhruv', 550.00, '2026-09-02'),
(5, 'dominos', 'jaydip', 750.00, '2026-09-03'),
(6, 'dominos', 'tarang', 500.00, '2026-09-03'),
(7, 'zomato cafe', 'rahul', 400.00, '2026-09-04'),
(8, 'pizza hut', 'neha', 900.00, '2026-09-04'),
(9, 'swiggy kitchen', 'krish', 350.00, '2026-09-05'),
(10, 'dominos', 'jay', 800.00, '2026-09-05');
select * from foodorders;

-- Task : 2
create table topsongs (
    song_id int primary key,
    song_title varchar(150),
    artist varchar(100),
    streams bigint,
    release_date date
);
insert into topsongs values
(1, 'blinding lights', 'the weeknd', 40000, '2020-01-30'),
(2, 'shape of you', 'ed sheeran', 38000, '2023-05-13'),
(3, 'as it was', 'harry styles', 25000, '2025-04-19'),
(4, 'starboy', 'the weeknd', 22000, '2016-07-23'),
(5, 'perfect', 'ed sheeran', 21000, '2017-05-09');
select * from topsongs;

-- Task : 3
select
    customer_name,
    sum(order_amount) as total_spent
from foodorders
group by customer_name
order by total_spent desc
limit 3;

-- Task : 4
select
    restaurant_name,
    count(order_id) as number_of_orders,
    sum(order_amount) as total_order_amount
from foodorders
group by restaurant_name
order by total_order_amount desc;

-- Task : 5
select
    "average order amount" as kpi_name,
    round(avg(order_amount), 2) as kpi_value
from foodorders

union all

select
    "total unique customers" as kpi_name,
    count(distinct customer_name) as kpi_value
from foodorders;
