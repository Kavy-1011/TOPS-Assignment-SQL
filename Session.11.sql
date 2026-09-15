--                                         Session 11
-- Task : 1

use foodie_app;
select
    name,
    city,
    cuisine,
    rating
from restaurants1 r
where rating > (
    select avg(r2.rating)
    from restaurants1 r2
    where r2.city = r.city
);

-- Task : 2
use regular;
select
    u.username,
    (
        select count(*)
        from orders o
        where o.user_id = u.id
    ) as total_orders
from users u;

-- Task : 3
create table movies (
    m_id int primary key,
    title varchar(100),
    genre varchar(50)
);
insert into movies (m_id, title, genre) values
(1, 'singham', 'action'),
(2, 'sultan', 'sports'),
(3, 'chhelo divas', 'comedy'),
(4, 'drishyam', 'thriller'),
(5, 'stree 2', 'horror');
select * from movies;

create table m_reviews (
    id int primary key,
    m_id int,
    rating decimal(2,1),
    review_text varchar(255),
    foreign key (m_id) references movies (m_id)
);
insert into m_reviews (id, m_id, rating, review_text) values
(1, 1, 5, 'excellent'),
(2, 1, 4, 'very good'),
(3, 2, 5, 'amazing'),
(4, 3, 4, 'great movie'),
(5, 4, 5, 'excellent thriller'),
(6, 5, 3, 'good movie');
select * from m_reviews;

select
    m_id,
    title,
    genre
from movies
where m_id in (
    select id
    from reviews
    where rating > 4.5
);

-- Task : 4
create table sellers1 (
    s_id int primary key,
    s_name varchar(100)
);
insert into sellers1 values
(1, 'abc traders'),
(2, 'xyz electronics'),
(3, 'best sellers'),
(4, 'super mart');
select * from sellers1;

create table categories1 (
    c_id int primary key,
    c_name varchar(100)
);
insert into categories1 values
(1, 'electronics'),
(2, 'fashion'),
(3, 'grocery');
select * from categories1;

create table products1 (
    p_id int primary key,
    s_id int,
    c_id int,
    p_name varchar(100),
    price decimal(10,2),
    foreign key (s_id) references sellers1(s_id),
    foreign key (c_id) references categories1(c_id)
);
insert into products1 values
(101, 1, 1, 'laptop', 53800),
(102, 1, 2, 'shirt', 2300),
(103, 1, 3, 'rice', 500),
(104, 2, 1, 'mobile', 60000),
(105, 2, 2, 'jeans', 2100),
(106, 3, 1, 'tablet', 8000),
(107, 3, 2, 'shoes', 2900),
(108, 3, 3, 'oil', 350),
(109, 4, 1, 'headphones', 2400);
select * from products1;

select
    s_name
from sellers1 s
where not exists (
    select *
    from categories1 c
    where not exists (
        select *
        from products1 p
        where p.s_id = s.s_id
        and p.c_id = c.c_id
    )
);
