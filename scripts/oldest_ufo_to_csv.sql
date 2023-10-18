-- This script gets the oldest ufo sightings from the data and extract it to csv

-- Create a temporary table for results of the subquery
CREATE TEMP TABLE temp_sightings AS
SELECT *
FROM ufo_sightings
WHERE EXTRACT(YEAR FROM date_time) = (
    SELECT MIN(EXTRACT(YEAR FROM date_time))
    FROM ufo_sightings
);

-- Export the results to a CSV file
\COPY temp_sightings TO 'C:\Users\juhon\GitRepos\SQL_project\data\ufo_sightings_oldest.csv';

-- Drop the temporary table
DROP TABLE temp_sightings;
