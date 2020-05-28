# ETL-Project

## Project Report

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

    Utilizing the CSV data sets from the following locations:
        **** netflix-shows https://www.kaggle.com/shivamb/netflix-shows
        **** Movies on Netflix, Prime Video, Hulu and Disney+ https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney


* **T**ransform: what data cleaning or transformation was required.

* **L**oad: the final database, tables/collections, and why this was chosen.
    * Loaded data into Postgres.  We chose Postgres as we were familar with the structure and how it worked.
    * Created two tables to house the store data to allow us to join the  information connecting the tables together
        * netflix_data
        * streaming_data
    * We used the 'title' to join the two tables together as those were available in both tables sets
