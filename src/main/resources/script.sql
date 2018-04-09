INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (1, 'Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (2, 'Lavalantula', '83', 'Horror', '4.7', 'TV-14');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (3, 'Starship Troopers', '129', 'Sci-Fi', '7.2', 'PG-13');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (4, 'Waltz With Bashir', '90', 'Documentary', '8.0' , 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (5, 'Spaceballs', '96', 'Comedy', '7.1', 'PG');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (6, 'Monsters Inc.', '92', 'Animation', '8.1', 'G');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (7, 'Gladiator', '155', 'Action', '8.5', 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (8, 'I Love You, Man', '105', 'Comedy', '7.0', 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (9, 'Nacho Libre', '92', 'Comedy', '5.7', 'PG');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (10, 'Good Morning, Vietnam', '121',  'Biography', '7.3', 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating) VALUES (11, 'Coraline', '100', 'Animation', '7.7', 'PG');

SELECT *
FROM Movies
WHERE Genre = 'Sci-Fi';

SELECT *
FROM Movies
WHERE IMDB_SCORE > 6.5;

SELECT *
FROM Movies
WHERE Rating = 'G' OR Rating = 'PG' AND Runtime < 100;

SELECT Genre, AVG(Runtime)
FROM Movies
WHERE IMDB_SCORE <= 7.5
GROUP BY genre ;

UPDATE Movies
SET Rating = 'R'
WHERE Title = 'Starship Troopers';

SELECT id, rating
FROM movies
WHERE genre = 'Documentary' OR genre='Horror';

SELECT AVG(imdb_score),MAX(imdb_score),MIN(imdb_score)
FROM movies
GROUP BY rating;

SELECT AVG(imdb_score),MAX(imdb_score),MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';