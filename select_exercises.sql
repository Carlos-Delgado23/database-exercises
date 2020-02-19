USE codeup_test_db;


SELECT 'These are Pink Floyd''s top selling albums' AS 'Caption';
SELECT * FROM albums WHERE artist = 'Pink Floyd';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Caption';
SELECT release_date FROM albums WHERE album_name =
'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Caption';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'Albums released in the 1990s' AS 'Caption';
SELECT album_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that had less than 20 million certified sales' AS 'Caption';
SELECT album_name FROM albums WHERE sales < 20.0;

SELECT 'All the albums with a genre of "Rock"' AS 'Caption';
SELECT album_name FROM albums WHERE genre = 'Rock';

