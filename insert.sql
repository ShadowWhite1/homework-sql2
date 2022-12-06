insert into singer(id, nickname)
values
    (1, 'Martin Garrix'),    
    (2, 'Kizaru'),
    (3, 'Петро Щур'),
    (4, 'David Guetta'),
    (5, 'Sia'),    
    (6, 'Eminem'),
    (7, 'Lanna Del Rey'),
    (8, 'Ed Sheeran');

insert into genre(id, title)
values
    (1, 'Rap'),
    (2, 'Pop'),
    (3, 'Classik'),
    (4, 'Electro House'),
    (5, 'Rock');

insert into genre_singer(id, genre_id, singer_id)
values
    (1,4,1),
    (2,1,2),
    (3,3,3),
    (4,2,4),
    (5,2,5),
    (6,1,6),
    (7,2,7),
    (8,2,8);

insert into album(id, title, year)
values
    (1, 'Bandana', 2021),
    (2, 'Назад в Будущее', 2018),
    (3, 'This Is Acting', 2016),
    (4, 'Animals', 2013),
    (5, '7', 2018),
    (6, 'The Eminem Show', 2002),
    (7, '÷', 2017),
    (8, 'The Great Gatsby', 2013);

	insert into song(id, title, duration, album_id)
values
    (1, 'Animals', '00:03:12', 4),
    (2, 'Мамині світлиці', '00:02:18', 2),
    (3, 'Mama Makusa', '00:02:53', 1),
    (4, '99 Promlems', '00:02:40', 1),
    (5, '5 Nights Crazy', '00:02:20', 1),
    (6, 'Unstappble', '00:03:37', 3),
    (7, 'Bird Set Free', '00:04:12', 3),
    (8, 'Flames', '00:03:15', 5),
    (9, 'Do not Leave Me Alone', '00:03:04', 5),
    (10, 'Without Me', '00:04:58', 6),
    (11, 'Superman', '00:04:47', 6),
    (12, 'Shape with You', '00:03:54', 7),
    (13, 'Perfect', '00:04:23', 7),
    (14, 'Young and Beautiful', '00:03:59', 8),
    (15, 'Summertime Sadness', '00:04:25', 8);
    
   insert into singer_album(id, singer_id, album_id)
values
	(1, 2, 1),
	(2, 2, 2),
	(3, 5, 3),
	(4, 1, 4),
	(5, 4, 5),
	(6, 6, 6),
	(7, 8, 7),
	(8, 7, 8);
	
insert into compilation(id, name, year)
values
	(1, 'English', 2018),
	(2, 'Russia', 2020),
	(3, 'Ukraine', 2013),
	(4, 'DJ', 2017),
	(5, 'Сборник 1', 2021),
	(6, 'Сборник 2', 2021),
	(7, 'Compilation 3', 2022),
	(8, 'Compilation 4', 2019);	

insert into song_compilation(id, song_id, compilation_id)
values
	(1, 1, 1),
	(2, 1, 4),
	(3, 2, 3),
	(4, 3, 2),
	(5, 4, 2),
	(6, 5, 2),
	(7, 6, 1),
	(8, 7, 1),
	(9, 8, 1),
	(10, 9, 1),
	(11, 9, 4),
	(12, 10, 1),
	(13, 11, 1),
	(14, 12, 1),
	(15, 13, 1),
	(16, 14, 1),
	(17, 15, 1),
	(18, 3, 5),
	(19, 10, 5),
	(20, 12, 6),
	(21, 14, 6),
	(22, 2, 7),
	(23, 3, 7),
	(24, 6, 8),
	(25, 8, 8);	


-- дополнительно ко 2 пункту ДЗ
-- сначало это
insert into album(id, title, year)
values
    (9, 'Test1', 2020),
    (10, 'Test2', 2019);
-- потом это ( вместе оно не добаляется, я понимаю почему просто расписывать не хочу )
insert into song(id, title, duration, album_id)
values
    (16, 'm1', '00:03:00', 9),
    (17, 'm2', '00:03:01', 10);

-- это к 6 пункту ДЗ
insert into genre_singer(id, genre_id, singer_id)
values
    (9,4,4);    