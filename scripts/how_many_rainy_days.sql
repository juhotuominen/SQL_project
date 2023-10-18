-- This script counts how many days it was raining, how many not and NaN values.

SELECT RainToday, COUNT(*) AS day_count
FROM weather_data
GROUP BY RainToday;
