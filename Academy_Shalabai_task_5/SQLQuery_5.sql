SELECT COUNT(Teachers.Id) AS Count_teachers
FROM Teachers, Lectures, GroupsLectures, Groups, Departments
WHERE Teachers.Id = Lectures.TeacherId AND Lectures.Id = GroupsLectures.LectureId
      AND Groups.Id = GroupsLectures.GroupId AND Departments.Id = Groups.DepartmentId
      AND Departments.Name = 'Software Development';

SELECT COUNT(Lectures.Id) AS Count_lectures
FROM Lectures, Teachers
WHERE Teachers.Id = Lectures.TeacherId
      AND Teachers.Name = 'Dave' AND Teachers.Surname = 'McQueen';

SELECT COUNT(Lectures.Id) AS Count_classes, Lectures.LectureRoom AS Audithory
FROM Lectures
WHERE Lectures.LectureRoom = 'D201'
GROUP BY Lectures.LectureRoom;

SELECT Lectures.LectureRoom AS Audithory, COUNT (Lectures.SubjectId) AS Count_lectures
FROM Lectures, Subjects
WHERE Subjects.Id = Lectures.SubjectId
GROUP BY Lectures.LectureRoom;

SELECT COUNT(Students.Id) AS Count_students
FROM Students, Groups, GroupsLectures, Lectures, Teachers
WHERE Groups.Id = Students.GroupId AND Groups.Id = GroupsLectures.GroupId
      AND Lectures.Id = GroupsLectures.LectureId AND Teachers.Id = Lectures.TeacherId
      AND Teachers.Name = 'Jack' AND Teachers.Surname = 'Underhill';

SELECT AVG(Salary) AS Average_rate
FROM Teachers, Lectures, GroupsLectures, Groups, Departments, Faculties
WHERE Teachers.Id = Lectures.TeacherId AND Lectures.Id = GroupsLectures.LectureId
      AND Groups.Id = GroupsLectures.GroupId AND Departments.Id = Groups.DepartmentId
	  AND Faculties.Id = Departments.FacultyId AND Faculties.Name = 'Çomputer Science';

SELECT Groups.Name AS Name_group, COUNT (Students.Id) AS Students_count
FROM Groups, Students 
WHERE Groups.Id = Students.GroupId
GROUP BY Groups.Name
HAVING COUNT (Students.Id) = (SELECT MIN (Group_counts.Students_count)
                               FROM (SELECT Groups.Name, COUNT (Students.Id) AS Students_count,
							         Groups.Id AS Grupa
							         FROM Groups, Students
									 WHERE Groups.Id = Students.GroupId
									 GROUP BY Groups.Name, Groups.Id) AS Group_counts)
UNION
SELECT Groups.Name AS Name_group, COUNT (Students.Id) AS Students_count
FROM Groups, Students 
WHERE Groups.Id = Students.GroupId
GROUP BY Groups.Name
HAVING COUNT (Students.Id) = (SELECT MAX (Group_counts.Students_count)
                               FROM (SELECT Groups.Name, COUNT (Students.Id) AS Students_count,
							         Groups.Id AS Grupa
							         FROM Groups, Students
									 WHERE Groups.Id = Students.GroupId
									 GROUP BY Groups.Name, Groups.Id) AS Group_counts)
ORDER BY Students_count ASC;

SELECT AVG(Departments.Financing) AS Average_funds
FROM Departments;

SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, COUNT(Subjects.Id) AS Count_subjects
FROM Teachers, Lectures, Subjects
WHERE Teachers.Id = Lectures.TeacherId AND Subjects.Id = Lectures.SubjectId
GROUP BY Teachers.Name, Teachers.Surname;

SELECT Lectures.DayOfWeek AS Day_of_week, COUNT(Lectures.SubjectId) AS Count_lectures
FROM Lectures
GROUP BY Lectures.DayOfWeek;

SELECT Lectures.LectureRoom AS Audithory, COUNT(Departments.Id) AS Count_departments
FROM Lectures, GroupsLectures, Groups, Departments
WHERE Lectures.Id = GroupsLectures.LectureId AND Groups.Id = GroupsLectures.GroupId
      AND Departments.Id = Groups.DepartmentId
GROUP BY Lectures.LectureRoom;

SELECT Faculties.Name AS Faculty, COUNT(Subjects.Id) AS Count_subjects
FROM Faculties, Departments, Groups, GroupsLectures, Lectures, Subjects
WHERE Faculties.Id = Departments.FacultyId AND Departments.Id = Groups.DepartmentId
      AND Groups.Id = GroupsLectures.GroupId AND Lectures.Id = GroupsLectures.LectureId
	  AND Subjects.Id = Lectures.SubjectId
GROUP BY Faculties.Name;

SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, Lectures.LectureRoom AS Audithory
       ,COUNT (Lectures.SubjectId) AS Count_lectures
FROM Teachers, Lectures, Subjects
WHERE Teachers.Id = Lectures.TeacherId AND Subjects.Id = Lectures.SubjectId
GROUP BY Teachers.Name, Teachers.Surname, Lectures.LectureRoom;