SELECT Building , SUM (Financing) AS Sum_fund
FROM Departments
GROUP BY Departments.Building 
HAVING SUM (Financing) > 100000;

SELECT Groups.Name AS Group_Name
FROM Groups, Departments, (SELECT COUNT(Lectures.Id) AS Count_lectures,
                                  Groups.Id AS Group_id
						   FROM Groups, GroupsLectures, Lectures
						   WHERE Groups.Id = GroupsLectures.GroupId AND
						         Lectures.Id = GroupsLectures.LectureId AND
						         Lectures.Date BETWEEN '2023-06-12' AND '2023-06-16'
						   GROUP BY Groups.Id) AS CL
WHERE Departments.Id = Groups.DepartmentId AND Groups.Id = CL.Group_id AND
      Departments.Name = 'Software Development' AND Groups.Year = 5 AND
	  CL.Count_lectures > 10;

SELECT Groups.Name 
FROM Students, GroupsStudents, Groups 
WHERE Students.Id = GroupsStudents.StudentId AND Groups.Id = GroupsStudents.GroupId
GROUP BY Groups.Name
HAVING AVG (Students.Rating) > (SELECT Rating 
                                FROM Groups 
                                WHERE Groups.Name = 'D221');


SELECT Name + ' ' + Surname AS Fullname
FROM Teachers
GROUP BY Name, Surname, Salary
HAVING (Salary) > (SELECT AVG (Salary) AS Average_salary_professors
                   FROM Teachers
				   WHERE IsProfessor = 1);

SELECT Groups.Name, COUNT (Curators.Id) AS Count_curators
FROM Groups, GroupsCurators, Curators
WHERE Groups.Id = GroupsCurators.GroupId AND Curators.Id = GroupsCurators.CuratorId
GROUP BY Groups.Name
HAVING COUNT (Curators.Id) > 1;

SELECT Groups.Name 
FROM Students, GroupsStudents, Groups 
WHERE Students.Id = GroupsStudents.StudentId AND Groups.Id = GroupsStudents.GroupId
GROUP BY Groups.Name
HAVING AVG (Students.Rating) < (SELECT MIN (Rating) AS Min_rating 
                                FROM Groups 
                                WHERE Groups.Year = 5);

SELECT Faculties.Name, SUM (Departments.Financing) AS Sum_fund
FROM Faculties, Departments
WHERE Faculties.Id = Departments.FacultyId 
GROUP BY Faculties.Name
HAVING SUM (Departments.Financing) > (SELECT SUM (Departments.Financing)
                                      FROM Departments, Faculties
									  WHERE Faculties.Id = Departments.FacultyId AND
									        Faculties.Name = 'Computer Science');

SELECT Subjects.Name AS Subject_name, Teachers.Name + ' ' + Teachers.Surname AS Fullname
FROM Subjects, Lectures, Teachers
WHERE Subjects.Id = Lectures.SubjectId AND Teachers.Id = Lectures.TeacherId
GROUP BY Subjects.Name, Teachers.Name, Teachers.Surname 	   
HAVING COUNT (Lectures.Id) = (SELECT MAX (Count_lectures) AS Max_lectures
                              FROM (SELECT COUNT (Lectures.Id) AS Count_lectures
							        FROM Lectures
									GROUP BY SubjectId, TeacherId) AS CL);

SELECT Subjects.Name
FROM Subjects, Lectures
WHERE Subjects.Id = Lectures.SubjectId
GROUP BY Subjects.Name
HAVING COUNT (Lectures.Id) = (SELECT MIN (Count_lectures) AS Min_lectures
	                          FROM (SELECT COUNT (Lectures.Id) AS Count_lectures
							        FROM Lectures
									GROUP BY SubjectId) AS CL);

SELECT COUNT (Students.Id) AS Count_students, (SELECT COUNT (DISTINCT Subjects.Id)
                                               FROM Subjects, GroupsLectures, Lectures, Groups, Departments
											   WHERE Subjects.Id = Lectures.SubjectId AND
											         Lectures.Id = GroupsLectures.LectureId AND
													 Groups.Id = GroupsLectures.GroupId AND 
													 Departments.Id = Groups.DepartmentId AND
													 Departments.Name = 'Software Development') AS Count_subjects
FROM Students, GroupsStudents, Groups, Departments
WHERE Students.Id = GroupsStudents.StudentId AND
      Groups.Id = GroupsStudents.GroupId AND
	  Departments.Id = Groups.DepartmentId AND
	  Departments.Name = 'Software Development';