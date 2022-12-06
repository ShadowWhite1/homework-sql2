create table if not exists Genre (
	id SERIAL primary key,
	title VARCHAR(50) not null
);

create table if not exists Singer (
	id SERIAL primary key,
	nickname VARCHAR(50) not null
);

create table if not exists Genre_Singer (
	id SERIAL primary key,
	genre_id INTEGER references Genre(id),
	singer_id INTEGER references Singer(id)
);

create table if not exists Album (
	id SERIAL primary key,
	title VARCHAR(50) not null,
	year INTEGER not null
);

create table if not exists Singer_Album (
	id SERIAL primary key,
	singer_id INTEGER references Singer(id),
	album_id INTEGER references Album(id)
);

create table if not exists Song (
	id SERIAL primary key,
	title VARCHAR(50) not null,
	duration TIME not null,
	album_id INTEGER references Album(id)
);	
	
create table if not exists Compilation (
	id SERIAL primary key,
	name VARCHAR(50) not null,
	year INTEGER not null
);

create table if not exists Song_Compilation (
	id SERIAL primary key,
	song_id INTEGER references Song(id),
	compilation_id INTEGER references Compilation(id)
);


