CREATE TABLE North_american_cities(
    City VARCHAR(255),
    Country VARCHAR(255),
    Population INT,
    Latitude FLOAT,
    Longitude FLOAT
);

INSERT INTO North_american_cities
VALUES('Guadalajara','Mexico',1500800,20.659699,-103.349609),
      ('Toronto','Canada',	2795060,43.653226,-79.383184),
    ('Houston','United States',2195914,29.760427,-95.369803),
    ('New York','United States',8405837,40.712784,-74.005941),
    ('Philadelphia','United States',1553165,39.952584,-75.165222),
    ('Havana','Cuba',	2106146,23.05407,-82.345189),
    ('Mexico', 'Mexico ',8555500,19.432608,-99.133208),
    ('Phoenix','United States',1513367,33.448377,-112.074037),
    ('Los Angeles','United States',3884307,34.052234,-118.243685),
    ('Ecatepec de Morelos','Mexico',1742000,19.601841,-99.050674),
    ('Montreal','Canada',1717767,45.501689,-73.567256),
    ('Chicago','United States',2718782,41.878114,-87.629798);

SELECT City, Population
FROM North_american_cities
WHERE country='Canada'; /*List all the Canadian cities and their populations*/

SELECT City, Latitude
FROM North_american_cities
WHERE Country = 'United States'
ORDER BY Latitude DESC; /*Order all the cities in the United States by their latitude from north to south, DESC- north to south*/

SELECT City, Longitude
FROM North_american_cities
WHERE Longitude < -87.6298
ORDER BY Longitude ASC; /*List all the cities west of Chicago, ordered from west to east*/

SELECT City, Population
FROM North_american_cities
WHERE Country = 'Mexico'
ORDER BY Population DESC
LIMIT 2; /*List the two largest cities in Mexico (by population)*/ /*To show 2 largest, use desc, couldn't understand it lol*/

SELECT City, Population
FROM North_american_cities
WHERE Country = 'United States'
ORDER BY Population DESC
LIMIT 2 OFFSET 2; /*List the third and fourth largest cities (by population) in the United States and their population */ /*That was a hard one*/