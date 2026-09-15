--                                         Session 14
-- Task : 1

use foodie_app;
create table orders (
    order_id int primary key,
    user_id int,
    order_date date,
    total_amount decimal(10,2)
);
insert into orders values
(1, 101, '2026-01-01', 350.00),
(2, 101, '2026-01-02', 500.00),
(3, 101, '2026-01-03', 500.00),
(4, 102, '2026-01-04', 700.00),
(5, 102, '2026-01-05', 750.00),
(6, 103, '2026-01-06', 800.00),
(7, 103, '2026-01-07', 850.00);
select * from orders;

-- Task : 2
select
    user_id,
    order_id,
    order_date,
    total_amount,
    lag(total_amount) over (
        partition by user_id
        order by order_date
    ) as previous_amount
from orders
order by user_id, order_date;

-- Task : 3
select
    user_id,
    order_id,
    order_date,
    total_amount,
    lead(total_amount) over (
        partition by user_id
        order by order_date
    ) as next_amount
from orders
order by user_id, order_date;

-- Task : 4
select
    user_id,
    order_id,
    order_date,
    total_amount,
    sum(total_amount) over (
        partition by user_id
        order by order_date
        rows between unbounded preceding and current row
    ) as running_total
from orders
order by user_id, order_date;

-- Task : 5
select
    user_id,
    order_id,
    order_date,
    total_amount,
    round(
        sum(total_amount) over (
            partition by user_id
            order by order_date
            rows between 2 preceding and current row
        )
        /
        count(total_amount) over (
            partition by user_id
            order by order_date
            rows between 2 preceding and current row
        ),
        2
    ) as moving_avg
from orders;
