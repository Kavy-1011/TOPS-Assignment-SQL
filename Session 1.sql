-- Task : 1

create database music_streaming_app ;
use music_streaming_app ; 

-- Task : 2

create table playlists (
	playlist_id int primary key,
	name varchar(100),
    created_by varchar(50)
);

-- Task : 3

insert into playlists (playlist_id, name, created_by) values
(1, 'Bollywood Hits', 'Kavy'),
(2, 'Chill Vibes', 'Dax'),
(3, 'Workout Mix', 'Amit') ;

select * from playlists ;


-- Task : 4

select * from playlists
where created_by = 'Amit';

-- Task : 5

/* In SQL, **table, row, and column** are three basic parts of a database. Let’s understand them using a **Zomato-like food delivery app**.

### Example: `restaurants` table

| restaurant_id | restaurant_name | city      | rating |
| ------------- | --------------- | --------- | ------ |
| 101           | Pizza Palace    | Ahmedabad | 4.5    |
| 102           | Spice Hub       | Surat     | 4.2    |
| 103           | Burger Point    | Mumbai    | 4.6    |

### 1. Table

A **table** is a collection of related data organized into rows and columns.

Here, `restaurants` is the **table**.

Think of it like an Excel sheet where we store information about restaurants.

```sql
restaurants
```

### 2. Column

A **column** represents one type/category of information.

In our example:

* `restaurant_id` → ID of the restaurant
* `restaurant_name` → Name of the restaurant
* `city` → Restaurant's city
* `rating` → Restaurant's rating

For example:

```sql
restaurant_name
```

is a column containing restaurant names.

### 3. Row

A **row** represents one complete record.

For example:

| restaurant_id | restaurant_name | city      | rating |
| ------------- | --------------- | --------- | ------ |
| 101           | Pizza Palace    | Ahmedabad | 4.5    |

This entire line is **one row**, representing one restaurant.

### Easy way to remember

**Table = Whole collection**
**Column = Type of information**
**Row = One complete record**

You can think of it like this:

```text
restaurants       → Table
       ↓
restaurant_name   → Column
       ↓
Pizza Palace      → Data in a row
```

### SQL Example

```sql
CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    rating DECIMAL(2,1)
);
```

Here, `restaurants` is the **table**, while `restaurant_id`, `restaurant_name`, `city`, and `rating` are **columns**. When we insert a restaurant, the inserted record becomes a **row**.
*/
