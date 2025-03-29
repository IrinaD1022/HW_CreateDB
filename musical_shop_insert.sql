-- заполнение таблицы жанров

INSERT INTO genres(genre_name) 
VALUES ('Джаз');

INSERT INTO genres(genre_name) 
VALUES ('Рок');

INSERT INTO genres(genre_name) 
VALUES ('Поп-музыка');

-- заполнение таблицы испонителей

INSERT INTO musical_artists (artist_name) 
VALUES ('Frank Sinatra');

INSERT INTO musical_artists (artist_name) 
VALUES ('Ray Charles');

INSERT INTO musical_artists (artist_name) 
VALUES ('Fred Astaire');

INSERT INTO musical_artists (artist_name) 
VALUES ('Glenn Miller');

INSERT INTO musical_artists (artist_name) 
VALUES ('Poets Of The Fall');

INSERT INTO musical_artists (artist_name) 
VALUES ('БИ-2');

INSERT INTO musical_artists (artist_name) 
VALUES ('OneRepublic');

INSERT INTO musical_artists (artist_name) 
VALUES ('Танцы Минус');

INSERT INTO musical_artists (artist_name) 
VALUES ('Sam Smith');

INSERT INTO musical_artists (artist_name) 
VALUES ('Сергей Лазарев');

INSERT INTO musical_artists (artist_name) 
VALUES ('Agnes');

INSERT INTO musical_artists (artist_name) 
VALUES ('Bon Jovi');

-- заполнение таблицы связей между жанрами и исполнителями

INSERT INTO genres_artists 
VALUES (1, 1);

INSERT INTO genres_artists 
VALUES (1, 2);

INSERT INTO genres_artists 
VALUES (1, 3);

INSERT INTO genres_artists 
VALUES (1, 4);

INSERT INTO genres_artists 
VALUES (2, 5);

INSERT INTO genres_artists 
VALUES (2, 6);

INSERT INTO genres_artists 
VALUES (2, 7);

INSERT INTO genres_artists 
VALUES (2, 8);

INSERT INTO genres_artists 
VALUES (3, 9);

INSERT INTO genres_artists 
VALUES (3, 10);

INSERT INTO genres_artists 
VALUES (3, 11);

INSERT INTO genres_artists 
VALUES (3, 12);

INSERT INTO genres_artists 
VALUES (1, 12);

INSERT INTO genres_artists 
VALUES (3, 5);

INSERT INTO genres_artists 
VALUES (3, 1);

-- заполнение таблицы музыкальных альбомов

INSERT INTO musical_albums(title, release_year)
VALUES ('Crush', 2000);

INSERT INTO musical_albums(title, release_year)
VALUES ('Have A Nice Day', 2005);

INSERT INTO musical_albums(title, release_year)
VALUES ('My Way', 1969);

INSERT INTO musical_albums(title, release_year)
VALUES ('A Jolly Christmas', 1957);

INSERT INTO musical_albums(title, release_year)
VALUES ('Carnival of Rust', 2006);

INSERT INTO musical_albums(title, release_year)
VALUES ('Clearview', 2016);

INSERT INTO musical_albums(title, release_year)
VALUES ('Оптимист', 2013);

INSERT INTO musical_albums(title, release_year)
VALUES ('Мяу кисс ми', 2001);

INSERT INTO musical_albums(title, release_year)
VALUES ('Dancing in a Dream', 1970);

INSERT INTO musical_albums(title, release_year)
VALUES ('American Rhapsody', 1979);

INSERT INTO musical_albums(title, release_year)
VALUES ('Soul Brothers', 1958);

INSERT INTO musical_albums(title, release_year)
VALUES ('The Great Ray Charles', 1987);

INSERT INTO musical_albums(title, release_year)
VALUES ('Флора и Фауна', 2000);

INSERT INTO musical_albums(title, release_year)
VALUES ('Oh My My', 2016);

INSERT INTO musical_albums(title, release_year)
VALUES ('Dreaming Out Loud', 2007);

INSERT INTO musical_albums(title, release_year)
VALUES ('В Эпицентре', 2019);

INSERT INTO musical_albums(title, release_year)
VALUES ('Magic Still Exists', 2020);

INSERT INTO musical_albums(title, release_year)
VALUES ('The Essential Fred Astaire', 1935);

INSERT INTO musical_albums(title, release_year)
VALUES ('In The Lonely Hour', 2014);

-- заполнение связей между альбомами и исполнителями

INSERT INTO albums_artists
VALUES (1, 3);

INSERT INTO albums_artists
VALUES (1, 4);

INSERT INTO albums_artists
VALUES (2, 11);

INSERT INTO albums_artists
VALUES (2, 12);

INSERT INTO albums_artists
VALUES (4, 9);

INSERT INTO albums_artists
VALUES (4, 10);

INSERT INTO albums_artists
VALUES (5, 5);

INSERT INTO albums_artists
VALUES (5, 6);

INSERT INTO albums_artists
VALUES (6, 7);

INSERT INTO albums_artists
VALUES (6, 8);

INSERT INTO albums_artists
VALUES (7, 14);

INSERT INTO albums_artists
VALUES (7, 15);

INSERT INTO albums_artists
VALUES (8, 13);

INSERT INTO albums_artists
VALUES (10, 16);

INSERT INTO albums_artists
VALUES (11, 17);

INSERT INTO albums_artists
VALUES (12, 1);

INSERT INTO albums_artists
VALUES (12, 2);

INSERT INTO albums_artists
VALUES (3, 18);

INSERT INTO albums_artists
VALUES (9, 19);

-- заполнение таблицы музыкальных треков

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('It''s My Life', 223, 1);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('You Give Love A Bad Name', 223, 1);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Save The World', 332, 1);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Have A Nice Day', 229, 2);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Last Man Standing', 227, 2);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Wildflower', 254, 2);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Hallelujah, I Love Her So', 168, 3);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('My Way', 277, 3);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Yesterday', 235, 3);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Mistletoe And Holly', 138, 4);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('The First Noel', 164, 4);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Carnival of Rust', 263, 5);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Maybe Tomorrow Is a Better Day', 284, 5);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Drama For Life', 207, 6);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Center Stage', 245, 6);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Crystalline', 225, 6);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Мяу кисс ми', 230, 8);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Мой рок-н-ролл', 405, 8);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Волки', 329, 8);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Шер', 203, 8);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Оптимист', 238, 7);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Любовь и ненависть', 363, 7);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Февраль', 273, 7);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Como Antes', 187, 9);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Easy To Love', 254, 9);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Jack and Jill', 128, 9);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Diz Does Everything', 249, 9);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('A Hundred Years from Now', 166, 10);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('After You''ve Gone', 166, 10);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Brooklyn Boogie', 183, 10);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Soul Brothers', 575, 11);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Charlesville', 296, 11);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Funny But I Still Love You', 191, 12);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Hit the Road Jack', 117, 12);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Black Jack', 137, 12);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Город', 251, 13);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Иду', 221, 13);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Танцы', 270, 13);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Цветут цветы', 256, 13);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Весна', 213, 13);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Oh My My', 219, 14);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Better', 206, 14);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Born', 266, 14);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Dreaming Out Loud', 249, 15);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('All We Are', 266, 15);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Someone To Save You', 253, 15);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Sleep', 354, 15);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('В Эпицентре', 181, 16);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Сдавайся', 200, 16);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Шепотом', 178, 16);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Так красиво', 223, 16);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Новый Год', 179, 16);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Puttin'' On The Ritz', 154, 18);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Top Hat, White Tie And Tails', 228, 18);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Cheek To Cheek', 198, 18);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('I''m Not The Only One', 239, 19);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Life Support', 173, 19);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Money On My Mind', 194, 19);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Here Comes The Night', 212, 17);

INSERT INTO tracks(track_name, duration_sec, album_id)
VALUES ('Freedom', 42, 17);

-- заполнение таблицы музыкальных сборников

INSERT INTO collections(title, release_year)
VALUES ('Золотой джаз', 1990);

INSERT INTO collections(title, release_year)
VALUES ('Новогодние треки', 2010);

INSERT INTO collections(title, release_year)
VALUES ('Горячие новинки', 2020);

INSERT INTO collections(title, release_year)
VALUES ('Русский рок', 2019);

-- заполнение таблицы связей между треками и сборниками

INSERT INTO collections_tracks 
VALUES (1, 7);

INSERT INTO collections_tracks 
VALUES (1, 8);

INSERT INTO collections_tracks 
VALUES (1, 33);

INSERT INTO collections_tracks 
VALUES (1, 52);

INSERT INTO collections_tracks 
VALUES (2, 51);

INSERT INTO collections_tracks 
VALUES (2, 10);

INSERT INTO collections_tracks 
VALUES (2, 11);

INSERT INTO collections_tracks 
VALUES (3, 58);

INSERT INTO collections_tracks 
VALUES (3, 48);

INSERT INTO collections_tracks 
VALUES (3, 51);

INSERT INTO collections_tracks 
VALUES (4, 18);

INSERT INTO collections_tracks 
VALUES (4, 36);

INSERT INTO collections_tracks 
VALUES (4, 37);

INSERT INTO collections_tracks 
VALUES (4, 36);

INSERT INTO collections_tracks 
VALUES (4, 20);





