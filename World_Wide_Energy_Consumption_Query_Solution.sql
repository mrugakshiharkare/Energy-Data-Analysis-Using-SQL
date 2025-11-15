-- ~General & Comparative Analysis:~ 
-- 1. What is the total emission per country for the most recent year available? 
USE ENERGYDB2;
SELECT country,MAX(year) as recent_year, SUM(emission) AS total_emission
FROM emission_3
WHERE year = (SELECT MAX(year) FROM emission_3)
GROUP BY country,year
ORDER BY total_emission DESC;
Select * from emission_3;

-- 2. What are the top 5 countries by GDP in the most recent year? 
SELECT * FROM gdp_3;
SELECT country, SUM(value) AS GDP, year 
FROM gdp_3 
WHERE year = (SELECT MAX(year) FROM gdp_3)
GROUP BY country,year
ORDER BY GDP desc
LIMIT 5;

-- 3. Compare energy production and consumption by country and year. 
SELECT p.country,p.year,sum(p.production) as total_production,sum(c.consumption) as total_consumption
FROM production_3 p
LEFT JOIN consum_3 c 
ON p.country = c.country 
AND p.year = c.year 
GROUP BY p.country,p.year
ORDER BY p.country,p.year;


-- 4. Which energy types contribute most to emissions across all countries?  
SELECT * FROM emission_3;
SELECT `energy type`, sum(emission) AS most_emissions
FROM emission_3
GROUP BY `energy type`
ORDER BY most_emissions DESC;

--  ~Trend Analysis Over Time:~
-- 1. How have global emissions changed year over year? 
SELECT year, SUM(emission) AS total_global_emission 
FROM emission_3
GROUP BY year
ORDER BY year DESC;

-- 2. What is the trend in GDP for each country over the given years? 
SELECT country, year, value AS GDP
FROM gdp_3
ORDER BY country, year DESC;

-- 3. How has population growth affected total emissions in each country? 
SELECT 
e.country,e.year,SUM(e.emission) AS total_emission,
p.value AS population,
(SUM(e.emission) / p.value) AS emission_per_person
FROM emission_3 e
JOIN population_3 p 
ON e.country = p.countries 
AND e.year = p.year
GROUP BY e.country, e.year, p.value
ORDER BY e.country, e.year DESC;

-- 4. Has energy consumption increased or decreased over the years for major economies? 
SELECT country, year, SUM(consumption) AS total_consumption
FROM consum_3
WHERE country IN ('India', 'China', 'United States', 'Germany', 'Japan')
GROUP BY country, year
ORDER BY country, year DESC;

-- 5. What is the average yearly change in emissions per capita for each country?
SELECT country,
AVG(`per capita emission`) AS avg_per_capita_emission
FROM emission_3
GROUP BY country
ORDER BY avg_per_capita_emission DESC;

-- ~Ratio & Per Capita Analysis:~
-- 1. What is the emission-to-GDP ratio for each country by year? 
SELECT e.country,e.year,SUM(e.emission) / g.value AS emission_to_gdp_ratio
FROM emission_3 e
JOIN gdp_3 g 
ON e.country = g.country 
AND e.year = g.year
GROUP BY e.country, e.year, g.value;

-- 2. What is the energy consumption per capita for each country over the last decade?  
SELECT c.country,c.year,
SUM(c.consumption) / MAX(p.value) AS consumption_per_capita
FROM consum_3 c
JOIN population_3 p 
ON c.country = p.countries 
AND c.year = p.year
GROUP BY c.country, c.year;

-- 3. How does energy production per capita vary across countries?
SELECT p.country,p.year,
SUM(p.production) / MAX(pop.value) AS production_per_capita
FROM production_3 p
JOIN population_3 pop 
ON p.country = pop.countries 
AND p.year = pop.year
GROUP BY p.country, p.year
ORDER BY p.country, p.year;

-- 4. Which countries have the highest energy consumption relative to GDP? 
SELECT c.country,
SUM(c.consumption) / AVG(g.value) AS consumption_to_gdp_ratio
FROM consum_3 c
JOIN gdp_3 g 
ON c.country = g.country 
AND c.year = g.year
GROUP BY c.country
ORDER BY consumption_to_gdp_ratio DESC;

-- 5. What is the correlation between GDP growth and energy production growth?
SELECT p.country,
ROUND( ((MAX(p.production) - MIN(p.production)) / MIN(p.production)) * 100, 2 ) AS production_growth_percent,
ROUND( ((MAX(g.value) - MIN(g.value)) / MIN(g.value)) * 100, 2 ) AS gdp_growth_percent
FROM production_3 p
JOIN gdp_3 g 
ON p.country = g.country 
AND p.year = g.year
GROUP BY p.country
ORDER BY production_growth_percent ASC, gdp_growth_percent DESC;

-- ~Global Comparisons:~
-- 1. What are the top 10 countries by population and how do their emissions compare? 
SELECT p.countries,p.value AS population,e.emission
FROM population_3 p
JOIN emission_3 e 
ON p.countries = e.country 
AND p.year = e.year
WHERE p.year = (SELECT MAX(year) FROM population_3)
ORDER BY p.value DESC
LIMIT 10;

SELECT 
    p.countries AS Country,
    p.value AS Population,
    e.emission AS Emission
FROM population_3 p
JOIN emission_3 e 
    ON LOWER(TRIM(p.countries)) = LOWER(TRIM(e.country))
    AND p.year = e.year
WHERE p.year = (
    SELECT MIN(p1.year)   -- or MAX(year) if both have same
    FROM population_3 p1
    JOIN emission_3 e1 ON p1.year = e1.year
)
ORDER BY p.value DESC
LIMIT 10;

-- 2. Which countries have improved (reduced) their per capita emissions the most over the last decade?
SELECT country,
(MAX(`per capita emission`) - MIN(`per capita emission`)) AS change_in_percapita
FROM emission_3
GROUP BY country
ORDER BY change_in_percapita ASC;  -- smallest = most reduced

-- 3. What is the global share (%) of emissions by country?  ######
SELECT country,
SUM(emission) AS total_emission,
ROUND(SUM(emission) * 100 / (SELECT SUM(emission) FROM emission_3), 2) AS percent_share
FROM emission_3
GROUP BY country
ORDER BY percent_share DESC;

-- 4. What is the global average GDP, emission, and population by year? 
SELECT g.year,AVG(g.value) AS avg_gdp,
AVG(e.emission) AS avg_emission,
AVG(p.value) AS avg_population
FROM gdp_3 g
JOIN emission_3 e ON g.country = e.country AND g.year = e.year
JOIN population_3 p ON g.country = p.countries AND g.year = p.year
GROUP BY g.year
ORDER BY g.year;