/*ALTER TABLE mytable
ADD column DataType OptionalTableConstraint
    DEFAULT default_value;

  ALTER TABLE mytable
DROP column_to_be_deleted;

  ALTER TABLE mytable
RENAME TO new_table_name;*/

CREATE TABLE Movies(
    Id INT PRIMARY KEY,
    Title VARCHAR(255),
    Director VARCHAR(255),
    Year INT,
    Length_minutes INT
);

INSERT INTO Movies
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

ALTER TABLE movies
ADD Aspect_ratio FLOAT; /*Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in. */

ALTER TABLE movies
ADD column Language TEXT
DEFAULT 'English'; /*Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.*/