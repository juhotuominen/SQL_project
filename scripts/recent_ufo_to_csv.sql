-- This script gets the most recent ufo sightings from the data data and extract it to csv

-- Create a temporary table for results of the subquery
CREATE TEMP TABLE temp_sightings AS
SELECT *
FROM ufo_sightings
WHERE Country = 'us' AND EXTRACT(YEAR FROM (date_time)) = (
    SELECT MAX(EXTRACT(YEAR FROM date_time))
    FROM ufo_sightings
);

-- Export the results to a CSV file
\COPY temp_sightings TO 'C:\Users\juhon\GitRepos\SQL_project\data\ufo_sightings_recent.csv';

-- Drop the temporary table
DROP TABLE temp_sightings;


