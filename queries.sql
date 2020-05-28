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


--Queries to review the data
--removing the nulls
select b.title, a.movie_year, a.age, a.imdb, a.rotten_tomato, b.duration, b.rating 
from netflix_data b left join streaming_data a on a.title = b.title
where age <> ''

--seeing if we could find the birdbox as we know that was a netflix original
--Did not appear in the data set therefore the movies may not include netflix original movies
select b.title, a.movie_year, a.age, a.imdb, a.rotten_tomato, b.duration, b.rating 
from netflix_data b left join streaming_data a on a.title = b.title
where b.title like '%bird%'

--Tried to find Murder Mystery as it is a netflix original
select b.title, a.movie_year, a.age, a.imdb, a.rotten_tomato, b.duration, b.rating 
from netflix_data b left join streaming_data a on a.title = b.title
where b.title like '%murder%'


--Reviewing the number of records that did not have a null age group
select count(*)
from netflix_data b left join streaming_data a on a.title = b.title
where age <> ''

--group by age and rating to see if there was a corrolation to the age and the rating
-- No there was not a good corrlation as some had mulpule age groups listed with the same rating type
select a.age, b.rating 
from netflix_data b left join streaming_data a on a.title = b.title
where age <> ''
group by a.age, b.rating
order by b.rating


	
