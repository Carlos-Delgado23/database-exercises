USE codeup_test_db;

DROP TABLE IF EXISTS albums;


create table albums (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     artist VARCHAR(50) NOT NULL,
     album_name VARCHAR(50) NOT NULL,
     release_date SMALLINT,
     sales FLOAT(5, 1)  NOT NULL,
     genre VARCHAR(100) NOT NULL,
     PRIMARY KEY(id)
     );
