--                                         Session 9
-- Task : 1
use regular;
create table restaurants (
	id int primary key,
    name varchar(100),
    city varchar(100)
);
insert into restaurants values
(1, 'royal bits', 'ahmedabad'),
(2, 'taste of india', 'bhavanagr'),
(3, 'spice hub', 'vadodara'),
(4, 'food corner', 'rajkot');

select * from restaurants;

create table dishes (
    id int primary key,
    restaurant_id int,
    dish_name varchar(100),
    price decimal(10,2)
);

insert into dishes values
(1, 1, 'pasta', 250.00),
(2, 1, 'veg biryani', 220.00),
(3, 1, 'masala dosa', 150.00),
(4, 2, 'pizza', 300.00),
(5, 2, 'burger', 180.00),
(6, 2, 'Paneer tikka', 250.00),
(7, 3, 'meggie', 150.00),
(8, 3, 'dal fry', 160.00),
(9, 3, 'naan', 80.00);
insert into dishes values 
(10, 99, 'special biryani', 400.00);
select * from dishes;

-- Task : 2
select 
    d.dish_name,
    d.price,
    r.name as restaurant_name,
    r.city
from dishes d
inner join restaurants r
on d.restaurant_id = r.id;

-- Task : 3
select 
    r.id,
    r.name as restaurant_name,
    r.city,
    d.dish_name,
    d.price
from restaurants r
left join dishes d
on r.id = d.restaurant_id;

-- Task : 4
select 
    d.id,
    d.dish_name,
    d.price,
    r.name as restaurant_name,
    r.city
from restaurants r
right join dishes d
on r.id = d.restaurant_id;

-- Task : 5
create table playlists (
    id int primary key,
    playlist_name varchar(100)
);
insert into playlists (id, playlist_name) values
(1, 'party songs'),
(2, 'romantic songs'),
(3, 'workout songs');
select * from playlists;

create table songs (
    id int primary key,
    playlist_id int,
    song_name varchar(100)
);
insert into songs (id, playlist_id, song_name) values
(1, 1, 'sarphira'),
(2, 1, 'champions'),
(3, 2, 'tu hai toh'),
(4, 3, 'kesariya');
select * from songs;

select 
    p.playlist_name, 
    s.song_name
from playlists p
inner join songs s
on p.id = s.playlist_id;
