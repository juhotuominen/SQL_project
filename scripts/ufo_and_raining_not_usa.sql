-- Was it raining in australia when there was ufo sight in other country than USA?

SELECT DISTINCT ON (weather.Date) ufo.Date_time, weather.Date, ufo.country
FROM ufo_sightings AS ufo
JOIN weather_data AS weather
ON ufo.Date_time::date = weather.Date::date
WHERE weather.RainToday = 'Yes'
AND ufo.country != 'us'
;


