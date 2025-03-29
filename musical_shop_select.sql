-- ЗАДАНИЕ 2
-- 1. Название и продолжительность самого длительного трека
-- У меня поле duration_sec заполняется в секундах, поэтому при выборке я выделяю минуты для читабельности

SELECT t.track_name, concat(t.duration_sec/60,'min ',mod(t.duration_sec,60),'sec') as duration
  FROM tracks t
 WHERE t.duration_sec = (select max(duration_sec) from tracks);

-- 2. Название треков, продолжительность которых не менее 3,5 минут

  SELECT t.track_name, concat(t.duration_sec/60,'min ',mod(t.duration_sec,60),'sec') as duration
    FROM tracks t
   WHERE t.duration_sec >= 210
ORDER BY t.duration_sec;

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT title, release_year
  FROM collections
 WHERE release_year between 2018 and 2020;

-- 4. Исполнители, чьё имя состоит из одного слова

SELECT artist_name
  FROM musical_artists
 WHERE NOT artist_name LIKE '% %'

-- 5. Название треков, которые содержат слово «мой» или «my»

SELECT track_name
  FROM tracks
 WHERE UPPER(track_name) LIKE '% МОЙ %'
    OR UPPER(track_name) LIKE '% MY %'
    OR UPPER(track_name) LIKE 'МОЙ %'
    OR UPPER(track_name) LIKE 'MY %';

-- ЗАДАНИЕ 3
-- 1. Количество исполнителей в каждом жанре

  SELECT g.genre_name, COUNT(ga.artist_id) artist_q 
    FROM genres g 
    JOIN genres_artists ga ON g.genre_id = ga.genre_id
GROUP BY g.genre_name

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.

  SELECT a.title, a.release_year, COUNT(t.track_id) track_q 
    FROM musical_albums a 
    JOIN tracks t on a.album_id = t.album_id
   WHERE a.release_year between 2019 and 2020
GROUP BY a.album_id

-- 3. Средняя продолжительность треков по каждому альбому

  SELECT a.title, AVG(t.duration_sec) avg_duration 
    FROM musical_albums a 
    JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.album_id

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT artist_name 
  FROM musical_artists
 WHERE artist_id NOT IN (SELECT aa.artist_id
			   FROM albums_artists aa 
   		     INNER JOIN musical_albums ma 
                             ON ma.album_id = aa.album_id 
                            AND ma.release_year = 2020)

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (Frank Sinatra)

SELECT DISTINCT c.title 
           FROM collections c
           JOIN collections_tracks ct ON c.collection_id = ct.collection_id
           JOIN tracks t ON ct.track_id = t.track_id
           JOIN albums_artists aa ON t.album_id = aa.album_id
           JOIN musical_artists ma ON aa.artist_id = ma.artist_id
          WHERE ma.artist_name = 'Frank Sinatra'

-- ЗАДАНИЕ 4
-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра

SELECT a.title album_title, ma.artist_name
FROM musical_albums a 
JOIN albums_artists aa ON a.album_id = aa.album_id
JOIN musical_artists ma ON aa.artist_id = ma.artist_id
WHERE ma.artist_id IN (SELECT ga.artist_id 
                         FROM genres_artists 
                     GROUP BY artist_id 
                       HAVING COUNT(genre_id)>1) 

-- 2. Наименования треков, которые не входят в сборники.

SELECT track_name
FROM tracks
WHERE track_id NOT IN (SELECT track_id 
                         FROM collections_tracks)

-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — 
-- теоретически таких треков может быть несколько.

SELECT DISTINCT a.artist_name
  FROM musical_artists a
  JOIN albums_artists aa ON a.artist_id = aa.artist_id
  JOIN tracks t ON aa.album_id = t.album_id
 WHERE t.duration_sec = (SELECT MIN(duration_sec) FROM tracks)

-- 4. Названия альбомов, содержащих наименьшее количество треков.

  SELECT ma.title album_title, COUNT(t.track_id) tracks_q 
    FROM musical_albums ma 
    JOIN tracks t ON ma.album_id = t.album_id
GROUP BY ma.title
  HAVING COUNT(t.track_id) = (SELECT count(track_id)
                                FROM tracks
                            GROUP BY album_id 
                            ORDER BY count(track_id)
                               LIMIT 1)