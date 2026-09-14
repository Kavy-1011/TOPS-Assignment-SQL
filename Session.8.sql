--                                        Session 8
-- Task : 1
use amazon;
create table orders(
	order_id int primary key,
    user_id int,
    payment_method varchar(50),
    amount decimal(10,2)
);

insert into orders values
(1, 101, 'upi', 950.00),
(2, 102, 'card', 600.00),
(3, 103, 'wallet', 150.00),
(4, 104, 'upi', 350.00),
(5, 102, 'card', 700.00),
(6, 103, 'wallet', 900.00),
(7, 101, 'card', 500.00),
(8, 104, 'upi', 530.00);

select * from orders;

-- Task : 2
select payment_method, count(*) as order_count
from orders
group by payment_method;

-- Task : 3
select user_id, sum(amount) as total_spend
from orders
group by user_id;

-- Task : 4
select payment_method, avg(amount) as average_amount
from orders
group by payment_method
having avg(amount) > 300;

-- Task : 5
select *
from orders
where amount > 300;

select payment_method, sum(amount) as price
from orders
group by payment_method
having sum(amount) > 300;
