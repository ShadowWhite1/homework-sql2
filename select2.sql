select genre_id, count(*)  from genre_singer
group by genre_id;

select year, count(*) from song s 
left join album a on s.album_id = a.id
group by year 
having year >= 2019 and year <= 2020;

select a.title, avg(duration) from album a
join song s on a.id = s.album_id
group by a.title;

select nickname from singer s 
join album a on s.id = a.id 
where year not in (2020);

select compilation.name from compilation 
join song_compilation on compilation.id = song_compilation.compilation_id
join song on song.id = song_compilation.song_id
join album on album.id = song.album_id 
join singer_album on singer_album.id = album.id  
join singer on singer.id = singer_album.id 
where singer.nickname like '%Eminem%';

select album.title from singer 
join genre_singer on singer.id = genre_singer.singer_id 
join genre on genre.id = genre_singer.genre_id
join singer_album on singer.id = singer_album.singer_id
join album on album.id = singer_album.album_id
group by album.title, singer.nickname
having count(genre.title) > 1
order by count(genre.title) desc;

select song.title from compilation 
full join song_compilation on compilation.id = song_compilation.compilation_id
full join song on song.id = song_compilation.song_id
where compilation.name is null;

SELECT title, duration FROM song
WHERE duration = (SELECT MIN(duration) FROM song);

select album.title from album
join song on song.album_id = album.id 
group by album.title 
having count(song.title) = (select count(song.title) from song
join album on album.id = song.album_id
group by album.title 
order by count(song.title) limit 1);