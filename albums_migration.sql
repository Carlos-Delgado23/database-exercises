USE codeup_test_db;

DROP TABLE IF EXISTS albums;


create table albums (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     artist VARCHAR(50) NOT NULL,
     name VARCHAR(50) NOT NULL,
     release_date DATE NOT NULL,
     sales FLOAT(3, 1)  NOT NULL,
     genre VARCHAR(100) NOT NULL,
     PRIMARY KEY(id)
     );
