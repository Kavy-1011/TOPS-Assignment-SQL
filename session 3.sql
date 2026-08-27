-- Task : 1

create table Playlist (
	id int primary key,
    song_name varchar(100)
    artist varchar(100)
    duration int second()
);

insert into Playlist (id, song_name, artist, duration) values 
(1, 'Sarphira', 'Pritam', 200);

-- Task : 2

insert into Playlist  values
(2, 'Arz kiya hai', 'anuv jain', 233),
(3, 'Darmiyaan', 'Raghav Kaushik', 263),
(4, 'Saware', 'Ajit Singh', 141);

-- Task : 3

update Playlist
set artist = 'Arijit Singh'
where artist = 'Arjit Singh';

-- Task : 4

delete from Playlist
where song_name = 'Darmiyaan'
and duration < 300;

-- Task : 5

update Playlist
set song_name = CONCAT(song_name, 'Saware')
where artist = 'Ajit Singh'
and duration > 120;
