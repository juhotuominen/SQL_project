-- For ufo data

CREATE TABLE UFO_Sightings (
    Date_Time TIMESTAMP,
    City VARCHAR(255),
    State_Province VARCHAR(255),
    Country VARCHAR(255),
    UFO_Shape VARCHAR(255),
    Length_of_Encounter_Seconds numeric,
    Described_Duration_of_Encounter VARCHAR(255),
    Description TEXT,
    Date_Documented DATE,
    Latitude DOUBLE PRECISION,
    Longitude DOUBLE PRECISION
);

SET datestyle TO 'MDY';

\copy UFO_Sightings FROM 'path/to/ufo_sighting_data' WITH CSV HEADER DELIMITER ',';


-- For weather data

CREATE TABLE weather_data (
    Date DATE,
    Location TEXT,
    MinTemp NUMERIC,
    MaxTemp NUMERIC,
    Rainfall NUMERIC,
    Evaporation TEXT,
    Sunshine TEXT,
    WindGustDir TEXT,
    WindGustSpeed NUMERIC,
    WindDir9am TEXT,
    WindDir3pm TEXT,
    WindSpeed9am NUMERIC,
    WindSpeed3pm NUMERIC,
    Humidity9am NUMERIC,
    Humidity3pm NUMERIC,
    Pressure9am NUMERIC,
    Pressure3pm NUMERIC,
    Cloud9am TEXT,
    Cloud3pm TEXT,
    Temp9am NUMERIC,
    Temp3pm NUMERIC,
    RainToday TEXT,
    RainTomorrow TEXT
);

\copy weather_data FROM 'path/to/weatherAUS.csv' DELIMITER ',' CSV NULL 'NA' HEADER;




