# ETL-Project

## Project Report

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

    * Utilizing the CSV data sets from the following sources:
        **** netflix-shows https://www.kaggle.com/shivamb/netflix-shows
        **** Movies on Netflix, Prime Video, Hulu and Disney+ https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney
    
    * Pulled the CSV files from the websites and formatted the information to be able to fit the table schema created in Postgres


* **T**ransform: what data cleaning or transformation was required.
    * For cleaning the data we used pandas.
    * After downloading the CSVs for local insertion we used pandas to load them into the notebook

    * For the cleaning of the Netflix Data
        * First we had to filter out the movies by using the type column
        * After that we limited it to the columns that we needed for our data
        * Rows with NA/a were also dropped for consistency

    * For the cleaning of the Movie Streaming data
        * We again limited it to the columns that were need 
        * We renamed the 'rotten tomato' colomn as well as the year column so that it propery aligns
        * The unnamed column was also removed as it was attempting to be added to the database
    * At this point both CSVs were sent to the database via sqlalchemy

* **L**oad: the final database, tables/collections, and why this was chosen.
    
    * Loaded data into Postgres.  We chose Postgres as we were familar with the structure and how it worked.
    
    * Created two tables to store data
        * netflix_data
        * streaming_data
    * We used the 'title' to join the two tables together as those were available in both tables sets

    * As we loaded the data set we identified there were null components and the age group was not consistent with the rating.

    * We reviewed to see if we could find the movie 'Bird box', 'murder mystery' as we know those are Netflix original movies to see if we could find any corrolation.  However the movies were not found in the data set.

    * We performed a group by age and rating to see if there was a corrolation to the age and the rating.  We found that there was no corrlation as some had mulpule age groups listed with the same rating type.

