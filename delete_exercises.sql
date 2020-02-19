USE codeup_test_db;


SELECT 'Doing away with all albums after 1991' as 'Caption';
SELECT * FROM albums WHERE release_date > 1991;
-- Convert to:
DELETE FROM albums WHERE release_date > 1991;


SELECT 'Doing away with all albums under disco' as 'Caption';
SELECT * FROM albums WHERE genre = 'Disco';
-- Convert to:
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Doing away with Whitney''s Albums' as 'Caption';
SELECT * FROM albums WHERE artist = 'Whitney Houston';
-- Convert to:
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;