CREATE TABLE movies(
    Id INT PRIMARY KEY,
    Title VARCHAR(255),
    Director VARCHAR(255),
    Year INT,
    Length_minutes INT
);

INSERT INTO movies (Id, Title, Director, Year, Length_minutes)
VALUES (1, 'Toy Story', 'John Lasseter', 1995, 81),
       (2, 'A Bug''s Life','John Lasseter', 1998, 95 ),
       (3, 'Toy Story 2', 'John Lasseter', 1999, 93),
      (4, 'Monsters, Inc.', 'Pete Docter', 2001, 92),
      (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
      (6, 'The Incredibles', 'Brad Bird', 2004, 116),
      (7, 'Cars', 'John Lasseter', 2006, 117),
      (8, 'Ratatouille', 'Brad Bird', 2007, 115),
      (9, 'WALL-E', 'Andrew Stanton', 2008, 104),
      (10, 'Up', 'Pete Docter', 2009, 101),
      (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
      (12, 'Cars 2', 'John Lasseter', 2011, 120),
      (13, 'Brave', 'Brenda Chapman', 2012, 102),
      (14, 'Monsters University', 'Dan Scanlon', 2013, 110);


SELECT title FROM movies; /*Find the title of each film */

SELECT director FROM movies; /*Find the director of each film*/

SELECT title, director FROM movies; /*Find the title and director of each film*/

SELECT title, year FROM movies; /*Find the title and year of each film*/

SELECT * FROM movies; /*Find all the information about each film*/