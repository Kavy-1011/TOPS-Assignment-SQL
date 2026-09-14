--                                       Session 4

-- Task : 1

use music_streaming_app ;

create table musicplaylist (
	id int primary key,
    song_name varchar(100),
    artist varchar(100),
    genre varchar(50),
    duration int
);

insert into musicplaylist values
(1, 'Arz kiya hai', 'anuv jain', 'bollywood', 234),
(2, 'Darmiyaan' 'Raghav Kaushik', 'pop', 174),
(3, 'kesariya', 'arijit singh', 'bollywood', 124),
(4, 'Sarphira', 'Pritam', 'rock', 434),
(5, 'Saware', 'Ajit Singh', 'bollywood', 321);

select * from musicplaylist;

-- Task : 2

select song_name, artist
from musicplaylist 
limit 3;

-- Task : 3

use music_streaming_app ;

create table FoodOrders (
	id int primary key,
    restaurant varchar(100),
    food_item varchar(50),
    order_date date
);

insert into FoodOrders values
(1, 'PizzaNova', 'pizza', '2026-09-01'),
(2, 'mcdonalds', 'burger', '2026-09-02'),
(3, 'dominos', 'garlic bread', '2026-09-03'),
(4, 'CrustCraft', 'Pizza', '2026-09-04'),
(5, 'mcdonalds', 'fries', '2026-09-05'),
(6, 'dominos', 'burger', '2026-09-06'),
(7, 'mcdonalds', 'fries', '2026-09-07');

select * from FoodOrders;

-- Task : 5

select distinct restaurant
from FoodOrders;

select food_item as dish, order_date as date_ordered
from FoodOrders;

select distinct food_item, restaurant
limit 2
from FoodOrders;

select distinct food_item, restaurant
from FoodOrders limit 2;
