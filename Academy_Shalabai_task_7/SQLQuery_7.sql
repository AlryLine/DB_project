SELECT LectureRooms.Name
FROM LectureRooms, Teachers, Lectures, Schedules
WHERE Teachers.Id = Lectures.TeacherId AND
	  Lectures.Id = Schedules.LectureId AND
	  LectureRooms.Id = Schedules.LectureRoomId AND 
	  Teachers.Id IN (SELECT Teachers.Id
                      FROM Teachers
			          WHERE Teachers.Name = 'Edward' AND
					        Teachers.Surname = 'Hopper');

SELECT Teachers.Surname
FROM Assistants, Teachers, Lectures, GroupsLectures, Groups
WHERE Teachers.Id = Assistants.TeacherId AND 
      Teachers.Id = Lectures.TeacherId AND
	  Lectures.Id = GroupsLectures.LectureId AND
	  Groups.Id = GroupsLectures.GroupId AND
	  Groups.Name = 'F505';
										
SELECT DISTINCT Subjects.Name
FROM Subjects, Lectures, GroupsLectures, Groups, Teachers
WHERE Teachers.Id = Lectures.TeacherId AND
      Subjects.Id = Lectures.SubjectId AND
      Lectures.Id = GroupsLectures.LectureId AND
	  Groups.Id = GroupsLectures.GroupId AND 
	  Teachers.Name = 'Alex' AND Teachers.Surname = 'Carmack' AND
	  EXISTS (SELECT *
	          FROM Groups
			  WHERE Groups.Year = 5);

SELECT DISTINCT Teachers.Surname
FROM Teachers, Lectures, Schedules
WHERE Teachers.Id = Lectures.TeacherId AND
      Lectures.Id = Schedules.LectureId AND
	  Schedules.Id NOT IN (SELECT Schedules.Id
                           FROM Schedules
			               WHERE Schedules.DayOfWeek = 1);

SELECT LectureRooms.Name, LectureRooms.Building
FROM LectureRooms JOIN Schedules ON LectureRooms.Id = Schedules.LectureRoomId
WHERE Schedules.DayOfWeek <> 3 AND Schedules.Week <> 2 AND Schedules.Class <> 3;

SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher
FROM Teachers JOIN Curators ON Teachers.Id = Curators.TeacherId
              JOIN GroupsCurators ON Curators.Id = GroupsCurators.CuratorId
			  JOIN Groups ON Groups.Id = GroupsCurators.GroupId
			  JOIN Departments ON Departments.Id = Groups.DepartmentId
			  JOIN Faculties ON Faculties.Id = Departments.FacultyId
WHERE Faculties.Name = 'Computer Science' AND
      Departments.Name <> 'Software Development';

SELECT Building, 'Department' AS Place 
FROM Departments
UNION ALL
SELECT Building, 'Faculty' AS Place 
FROM Faculties
UNION ALL
SELECT Building, 'LectureRoom' AS Place  
FROM LectureRooms;

SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, 'Dean' AS Position, 1 AS Sort_order
FROM Teachers JOIN Deans ON Teachers.Id = Deans.TeacherId
UNION 
SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, 'Head' AS Position, 2 AS Sort_order
FROM Teachers JOIN Heads ON Teachers.Id = Heads.TeacherId
UNION
SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, 'Teacher' AS Position, 3 AS Sort_order
FROM Teachers LEFT JOIN Deans ON Teachers.Id = Deans.TeacherId
              LEFT JOIN Heads ON Teachers.Id = Heads.TeacherId
			  LEFT JOIN Curators ON Teachers.Id = Curators.TeacherId
			  LEFT JOIN Assistants ON Teachers.Id = Assistants.TeacherId
WHERE Deans.TeacherId IS NULL AND Heads.TeacherId IS NULL AND
      Curators.TeacherId IS NULL AND Assistants.TeacherId IS NULL
UNION
SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, 'Curator' AS Position, 4 AS Sort_order
FROM Teachers JOIN Curators ON Teachers.Id = Curators.TeacherId
UNION
SELECT Teachers.Name + ' ' + Teachers.Surname AS Teacher, 'Assistant' AS Position, 5 AS Sort_order
FROM Teachers JOIN Assistants ON Teachers.Id = Assistants.TeacherId
ORDER BY Sort_order;

SELECT DISTINCT Schedules.DayOfWeek, 'A311' AS Lecture_room
FROM Schedules, LectureRooms
WHERE LectureRooms.Id = Schedules.LectureRoomId AND 
      LectureRooms.Name = 'A311'
UNION
SELECT DISTINCT Schedules.DayOfWeek, 'A104' AS Lecture_room
FROM Schedules, LectureRooms
WHERE LectureRooms.Id = Schedules.LectureRoomId AND 
      LectureRooms.Name = 'A104';