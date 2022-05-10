create table if not exists Genre(
	id_genre serial primary key,
	genre_name varchar(40)
);

create table if not exists Artist(
	id_artist serial primary key,
	artist_name varchar(40)
);

create table if not exists ArtistGenre(
	idGenre integer references Genre(id_genre),
	idArtist integer references Artist(id_artist),
	constraint ArtGen primary key (idGenre, idArtist)
);

create table if not exists Album(
	id_album serial primary key,
	album_name varchar(40),
	release_date integer
);

create table if not exists ArtistAlbum(
	idAlbum integer references Album(id_album),
	idArtist integer references Artist(id_artist),
	constraint ArtAlb primary key (idAlbum, idArtist)
);

create table if not exists Tracks(
	id_track serial primary key,
	track_name varchar(40),
	track_duration integer,
	album_id integer references album(id_album)
);

create table if not exists Collection(
	id_collection serial primary key,
	collection_name varchar(40),
	release_date integer
);

create table if not exists TrackCollection(
	idTrack integer references Tracks(id_track),
	idCollection integer references Collection(id_collection),
	constraint TrCol primary key (idTrack, idCollection)
);