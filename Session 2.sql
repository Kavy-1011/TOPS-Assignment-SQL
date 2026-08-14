--                                        Session : 2

-- Task : 1

-- Installation completed

-- Task : 2

create database foodie_app ;
use foodie_app ;

-- Task : 3

create table restaurants (
	ID int Primary key,
    name varchar(100) not null,
    cuisine varchar(50) not null,
    rating decimal(4,3),
    location varchar(100) not null
) ;

-- Task : 4

create database  Flipkart_style ;
use Flipkart_style ;

create table user (
	user_id int primary key not null,
    user_name varchar(100),
    email varchar(50) unique not null,
	phone_number varchar(20) unique not null,
    created_at datetime default current_timestamp
);

select * from user ;


-- Task : 5

create table users (
    user_id int primary key,
    username varchar(100),
    email varchar(150) unique,
    phone_number varchar(15),
    created_at datetime
);



