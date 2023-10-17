-- This script is for cleaning data, removing duplicate rows

DELETE FROM ufo_sightings
WHERE (Date_time, city, state_province, country, UFO_shape) IN (
    SELECT Date_time, city, state_province, country, UFO_shape
    FROM ufo_sightings
    GROUP BY Date_time, city, state_province, country, UFO_shape
    HAVING COUNT(*) > 1
);

DELETE FROM weather_data
WHERE (Date, Location) IN (
    SELECT Date, Location
    FROM weather_data
    GROUP BY Date, Location
    HAVING COUNT(*) > 1
);
