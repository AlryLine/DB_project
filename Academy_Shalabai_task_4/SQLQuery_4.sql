SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, Groups.Name
FROM Teachers, Lectures, GroupsLectures, Groups
WHERE Teachers.Id = Lectures.TeacherId AND Lectures.Id = GroupsLectures.LectureId
      AND Groups.Id = GroupsLectures.GroupId;

SELECT Faculties.Name
FROM Faculties, Departments
WHERE Faculties.Id = Departments.FacultyId AND Departments.Financing > Faculties.Financing;

SELECT Curators.Surname, Groups.Name
FROM Curators, GroupsCurators, Groups
WHERE Groups.Id = GroupsCurators.GroupId AND Curators.Id = GroupsCurators.CuratorId;

SELECT Teachers.Name, Teachers.Surname
FROM Teachers, Lectures, GroupsLectures, Groups
WHERE Teachers.Id = Lectures.TeacherId AND Lectures.Id = GroupsLectures.LectureId
      AND Groups.Id = GroupsLectures.GroupId AND Groups.Name = 'P107';

SELECT Teachers.Surname, Faculties.Name AS Faculty
FROM Teachers, Lectures, GroupsLectures, Groups, Departments, Faculties
WHERE Teachers.Id = Lectures.TeacherId AND Lectures.Id = GroupsLectures.LectureId
      AND Groups.Id = GroupsLectures.GroupId AND Departments.Id = Groups.DepartmentId
	  AND Faculties.Id = Departments.FacultyId;

SELECT Departments.Name AS Name_of_department, Groups.Name AS Name_of_group
FROM Departments, Groups
WHERE Departments.Id = Groups.DepartmentId;

SELECT Subjects.Name AS Subject, Teachers.Name + ' ' + Teachers.Surname AS Teacher
FROM Subjects, Lectures, Teachers
WHERE Subjects.Id = Lectures.SubjectId AND Teachers.Id = Lectures.TeacherId 
      AND Teachers.Name = 'Samantha' AND Teachers.Surname = 'Adams';

SELECT Departments.Name AS Department, Subjects.Name AS Subject
FROM Subjects, Lectures, GroupsLectures, Groups, Departments, Faculties
WHERE Subjects.Id = Lectures.SubjectId AND Lectures.Id = GroupsLectures.LectureId
      AND Groups.Id = GroupsLectures.GroupId AND Departments.Id = Groups.DepartmentId
	  AND Faculties.Id = Departments.FacultyId AND Subjects.Name = 'Database Theory';

SELECT Groups.Name AS Name_of_group, Faculties.Name AS Faculty
FROM Groups, Departments, Faculties
WHERE Departments.Id = Groups.DepartmentId AND Faculties.Id = Departments.FacultyId
      AND Faculties.Name = 'Computer Science';

SELECT Groups.Name AS Name_of_group, Faculties.Name AS Faculty
FROM Groups, Departments, Faculties
WHERE Departments.Id = Groups.DepartmentId AND Faculties.Id = Departments.FacultyId
      AND Groups.Year = 5;

SELECT Teachers.Name + ' ' + Teachers.Surname AS FullName, Subjects.Name, Groups.Name AS Name_of_group
FROM Teachers, Subjects, Lectures, GroupsLectures, Groups
WHERE Teachers.Id = Lectures.TeacherId AND Subjects.Id = Lectures.SubjectId
      AND Lectures.Id = GroupsLectures.LectureId AND Groups.Id = GroupsLectures.GroupId
	  AND Lectures.LectureRoom = 'B103'