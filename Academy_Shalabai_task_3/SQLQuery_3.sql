SELECT *
FROM Departments
ORDER BY Id DESC;

SELECT Name AS 'Group Name', Rating AS 'Group Rating'
FROM Groups;

SELECT Surname, Salary / Premium * 100 AS Percent_of_rate_to_premium, Salary / (Salary + Premium) * 100 AS Percent_of_rate_to_Salary
FROM Teachers;

SELECT 'The dean of faculty' + ' ' + Name + ' ' + 'is'+ ' ' + Dean + '.'
FROM Faculties;

SELECT Surname
FROM Teachers 
WHERE IsProfessor = 1 AND Salary > 1050;

SELECT Name
FROM Departments
WHERE Financing < 11000 OR Financing > 25000;

SELECT Name
FROM Faculties
WHERE Name <> 'Computer Science';

SELECT Surname, Position
FROM Teachers
WHERE IsProfessor = 0;

SELECT Surname, Position, Salary, Premium
FROM Teachers
WHERE IsAssistant = 1 AND Premium >= 160 AND Premium <= 550;

SELECT Surname, Salary
FROM Teachers
WHERE IsAssistant = 1;

SELECT Surname, Position
FROM Teachers
WHERE EmploymentDate < '2000-01-01';

SELECT Name AS 'Name of Department'
FROM Departments
WHERE Name < 'Software Development'
ORDER BY Name ASC;

SELECT Surname
FROM Teachers
WHERE IsAssistant = 1 AND (Salary + Premium) <= 1200;

SELECT Name
FROM Groups
WHERE Year = 5 AND Rating >= 2 AND Rating <= 4;

SELECT Surname
FROM Teachers
WHERE IsAssistant = 1 AND Salary < 550 OR Premium < 200;