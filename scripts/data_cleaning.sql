-- This script is for cleaning data, removing duplicate rows and giving value to NULL values

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



-- These can be expanded for other columns also
-- Set values to RainToday and RainTomorrow if original value is null
UPDATE weather_data
SET RainToday = 'no data'
WHERE RainToday = '' OR RainToday IS NULL
;
UPDATE weather_data
SET RainToday = 'no data'
WHERE RainToday = '' OR RainToday IS NULL
;

-- Set value to country if NULL
UPDATE ufo_sightings
SET country = 'unknown'
WHERE country = '' OR country IS NULL
;

