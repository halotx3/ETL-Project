CREATE DATABASE movies_db;

--drop table netflix_data;
--drop table netflix_data;

CREATE TABLE netflix_data (
id INT PRIMARY KEY,
title VARCHAR,
duration VARCHAR,
rating VARCHAR
);


CREATE TABLE streaming_data (
show_id INT PRIMARY KEY,
title VARCHAR,
movie_year VARCHAR,
age VARCHAR,
imdb FLOAT,
rotten_tomato INT,
netflix INT
);
	
