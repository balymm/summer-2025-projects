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

SELECT name, years_employed
FROM employees
WHERE years_employed = (
    SELECT MAX(years_employed)
    FROM employees
);/*Find the longest time that an employee has been at the studio*/

SELECT role, AVG(years_employed) as avg_years
FROM employees
GROUP BY role; /*For each role, find the average number of years employed by employees in that role*/

SELECT building, SUM(years_employed) as total_years
FROM employees
GROUP BY building; /*Find the total number of employee years worked in each building*/


