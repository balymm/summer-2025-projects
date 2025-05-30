CREATE TABLE Employees(
    Role VARCHAR(255),
    Name VARCHAR(255),
    Building VARCHAR(10),
    Years_employed INT
);

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
        ('Manager','Daria O.','2w',6);


SELECT COUNT(role) AS artist_sum
FROM employees
WHERE role = 'Artist'; /*Find the number of Artists in the studio (without a HAVING clause)*/

SELECT role, SUM(years_employed) as years_employed_new
FROM employees
GROUP BY role
HAVING role = 'Engineer'; /*Find the total number of years employed by all Engineers */

SELECT role, COUNT(name)
FROM employees
GROUP BY role; /*Find the number of Employees of each role in the studio*/