--                                        Session 5

-- Task : 1

use foodie_app;

create table restaurants1 (
    id int primary key,
    name varchar(100),
    cuisine varchar(50),
    rating decimal(2,1),
    city varchar(50)
);

insert into restaurants1 values
(1, 'taste corner', 'south indian', 4.4, 'surat'),
(2, 'pizza palace', 'north indian', 3.1, 'vadodara'),
(3, 'swagat', 'chinese', 4.5, 'surat'),
(4, 'swadist', 'italian', 3.9, 'ahmedabad'),
(5, 'taste corner', 'south indian', 3.5, 'vadodara');

select * from restaurants1;

-- Task : 2

select * from restaurants1
where rating > 4.0
and city in ('vadodara', 'surat');

-- Task : 3

select * from restaurants1
where name like "taste corner";

-- Task : 4

select * from restaurants1
where rating between 4.2 and 4.5;

-- Task : 5

select * from restaurants1
where cuisine in ('chinese', 'italian', 'south indian');
