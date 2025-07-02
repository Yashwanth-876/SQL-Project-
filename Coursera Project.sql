CREATE TABLE cheese_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);


CREATE TABLE honey_production (
    Year INTEGER,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);


CREATE TABLE milk_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);


CREATE TABLE coffee_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);


CREATE TABLE egg_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);


CREATE TABLE state_lookup (
    State TEXT,
    State_ANSI INTEGER
);


CREATE TABLE yogurt_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);



UPDATE cheese_production SET value = REPLACE(value, ',', '');

UPDATE honey_production SET value = REPLACE(value, ',', '');

UPDATE milk_production SET value = REPLACE(value, ',', '');

UPDATE coffee_production SET value = REPLACE(value, ',', '');

UPDATE egg_production SET value = REPLACE(value, ',', '');

UPDATE yogurt_production SET value = REPLACE(value, ',', '');

SELECT YEAR from cheese_production cp 

SELECT * FROM milk_production mp 


SELECT SUM(Value) AS TOTAL 
FROM milk_production mp
WHERE YEAR = 2,023

SELECT 
    SUM(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS total_milk_production
FROM 
    milk_production
WHERE 
    Year = 2023;

--Show coffee production data for the year 2015.
--
--What is the total value?

SELECT 
SUM(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS TOTAL
FROM 	cheese_production cp 
where year = 2015;


SELECT * FROM cheese_production cp 

SELECT 
AVG(CAST(replace(Value,',','')as integer)) as avg 
FROM honey_production hp 
where year =2022


SELECT * FROM state_lookup sl 

SELECT 
CAST(REPLACE(Value, ',', '') AS INTEGER) as highest
FROM yogurt_production yp 
where year = 2022
order by value desc 

SELECT 
    MAX(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS highest_yogurt_production
FROM yougart
WHERE Year = 2022;


-- Step 1: Get distinct cheese-producing states in 2022
WITH state AS (
    SELECT DISTINCT State_ANSI
    FROM cheese_production
    WHERE Year = 2022
)

-- Step 2: Get total yogurt production in those states for 2022
SELECT 
    SUM(CAST(REPLACE(y.Value, ',', '') AS INTEGER)) AS total_yogurt_production
FROM 
    yogurt_production y
JOIN 
    cheese_states c ON y.State_ANSI = c.State_ANSI
WHERE 
    y.Year = 2022;



SELECT SUM(Value) FROM coffee_production cp  WHERE Year = 2011;
SELECT * FROM coffee_production WHERE Year = 2015;




select *
from cheese_production cp 
where Value > 100000000 AND year = 2023

SELECT 
    COUNT(DISTINCT State_ANSI) AS num_states_above_100_million
FROM cheese_production
WHERE 
    Year = 2023
    AND Period = 'APRIL'
    AND CAST(REPLACE(Value, ',', '') AS INTEGER) > 100000000;


select State_ANSI 
from state_lookup sl 
where State = 'florida'



select * from state_lookup sl 





SELECT YEAR 
FROM cheese_production cp 
