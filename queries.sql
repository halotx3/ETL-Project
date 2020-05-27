CREATE DATABASE movies_db;

--drop table netflix_data;
--drop table streaming_data;

CREATE TABLE netflix_data (
show_id INT PRIMARY KEY,
title VARCHAR,
duration VARCHAR,
rating VARCHAR
);


CREATE TABLE streaming_data (
id INT PRIMARY KEY,
title VARCHAR,
movie_year VARCHAR,
age VARCHAR,
imdb FLOAT,
rotten_tomato VARCHAR,
netflix INT
);
	
