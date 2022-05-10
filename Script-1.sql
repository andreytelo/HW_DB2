create table if not exists Genre(
	id serial primary key,
	genre_name varchar(40)
);

create table if not exists Artist(
	id serial primary key,
	artist_name varchar(40)
);

create table if not exists ArtistGenre(
	idGenre integer references Genre(id),
	idArtist integer references Artist(id),
	constraint AG primary key (idGenre, idArtist)
);

create table if not exists Album(
	id serial primary key,
	album_name varchar(40),
	release_date integer
);

create table if not exists ArtistAlbum(
	idAlbum integer references Album(id),
	idArtist integer references Artist(id),
	constraint ArtAlb primary key (idAlbum, idArtist)
);

create table if not exists Tracks(
	id serial primary key,
	track_name varchar(40),
	track_duration time,
	album_id integer references album(id)
);

create table if not exists Collection(
	id serial primary key,
	Collection_name varchar(40),
	Release_date integer
);

create table if not exists TrackCollection(
	idTrack integer references Tracks(id),
	idCollection integer references Collection(id),
	constraint TC primary key (idTrack, idCollection)
);