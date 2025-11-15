CREATE DATABASE ENERGYDB2;
USE ENERGYDB2;

-- 1. country table
create table country_3(
country varchar(200) Primary key,
Cid varchar(200) unique not null
);
select * from country_3;

-- 2. emission_3 table
create table emission_3(
country varchar(200),
`energy type` varchar(200),
year int,
emission int,
`per capita emission` double,
FOREIGN KEY(country) REFERENCES country_3(country)
);
select * from emission_3;
desc emission_3;

-- 3. population table
create table population_3(
countries varchar(200),
year int,
value double,
FOREIGN KEY(countries) REFERENCES country_3(country)
);

select * from population_3;

-- 4. production table
create table production_3(
country varchar(200),
energy varchar(200),
year int,
production int,
FOREIGN KEY(country) REFERENCES country_3(country)
);
select * from production_3;

-- 5. gdp_3 table
create table gdp_3(
country varchar(100),
year int,
value double,
FOREIGN KEY(country) REFERENCES country_3(country)
);
select * from gdp_3;

-- 6. consumption table
create table consum_3(
country varchar(200),
energy varchar(200),
year int,
consumption int,
FOREIGN KEY(country) REFERENCES country_3(country)
);
SELECT * from consum_3;