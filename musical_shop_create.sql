create table if not exists GENRES (
		genre_id SERIAL primary key,
		genre_name VARCHAR(50) not null
);

create table if not exists MUSICAL_ARTISTS (
		artist_id SERIAL primary key,
		artist_name VARCHAR(50) not null
);

create table if not exists GENRES_ARTISTS (
		genre_id INTEGER references GENRES(genre_id),
		artist_id INTEGER references MUSICAL_ARTISTS(artist_id),
		constraint genre_artist_id primary key (genre_id, artist_id)
);

create table if not exists MUSICAL_ALBUMS (
		album_id serial primary key,
		title VARCHAR(60) not null,
		release_year integer
);

create table if not exists TRACKS (
		track_id SERIAL primary key,
		track_name VARCHAR(50),
		duration_sec integer,
		album_id integer not null references MUSICAL_ALBUMS(album_id)
);

create table if not exists ALBUMS_ARTISTS (
		artist_id integer references MUSICAL_ARTISTS(artist_id),
		album_id integer references MUSICAL_ALBUMS(album_id),
		constraint album_artist_id primary key (album_id, artist_id)
);

create table if not exists COLLECTIONS(
		collection_id SERIAL primary key,
		title VARCHAR(60) not null,
		release_year integer
);

create table if not exists COLLECTIONS_TRACKS(
		collection_id integer references COLLECTIONS(collection_id),
		track_id integer references TRACKS(track_id),
		constraint collection_track_id primary key (collection_id, track_id)
);