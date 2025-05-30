CREATE TABLE Buildings(
    Building_name VARCHAR(10) PRIMARY KEY,
    Capacity INT
);

CREATE TABLE Employees(
    Role VARCHAR(255),
    Name VARCHAR(255),
    Building VARCHAR(10),
    Years_employed INT
);

INSERT INTO Buildings
VALUES('1e', 24),
      ('1w', 32),
      ('2e', 16),
      ('2w', 20);

INSERT INTO Employees
VALUES ('Engineer','Becky A.','1e',4),
        ('Engineer','Dan B.','1e',2),
        ('Engineer','Sharon F.','1e',6),
        ('Engineer','Dan M.','1e',4),
        ('Engineer','Malcom S.','1e',1),
        ('Artist',	'Tylar S.','2w',2),
        ('Artist',	'Sherman D.','2w',8),
        ('Artist',	'Jakob J.','2w',6),
        ('Artist',	'Lillia A.','2w',7),
        ('Artist',	'Brandon J.','2w',7),
        ('Manager','Scott K.','1e',9),
        ('Manager','Shirlee M.','1e',3),
        ('Manager','Daria O.','2w',6),
        ('Engineer', 'Yanci I.', NULL, 0),
        ('Artist', 'Oliver P', NULL, 0);

SELECT name, role
FROM employees
WHERE building IS NULL; /*Find the name and role of all employees who have not been assigned to a building*/

SELECT DISTINCT building_name, name
FROM buildings LEFT JOIN employees
ON buildings.building_name = employees.building
WHERE building IS NULL; /*Find the names of the buildings that hold no employees */

