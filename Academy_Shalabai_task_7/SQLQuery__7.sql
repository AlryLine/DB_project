USE [master]
GO
/****** Object:  Database [Academy_Shalabai]    Script Date: 17.07.2023 00:30:34 ******/
CREATE DATABASE [Academy_Shalabai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Academy_Shalabai', FILENAME = N'E:\SQLDB\MSSQL13.SQLEXPRESSALRY\MSSQL\DATA\Academy_Shalabai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Academy_Shalabai_log', FILENAME = N'E:\SQLDB\MSSQL13.SQLEXPRESSALRY\MSSQL\DATA\Academy_Shalabai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Academy_Shalabai] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Academy_Shalabai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Academy_Shalabai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET ARITHABORT OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Academy_Shalabai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Academy_Shalabai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Academy_Shalabai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Academy_Shalabai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Academy_Shalabai] SET  MULTI_USER 
GO
ALTER DATABASE [Academy_Shalabai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Academy_Shalabai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Academy_Shalabai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Academy_Shalabai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Academy_Shalabai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Academy_Shalabai] SET QUERY_STORE = OFF
GO
USE [Academy_Shalabai]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Academy_Shalabai]
GO
/****** Object:  Table [dbo].[Assistants]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assistants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Assistants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curators]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Curators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deans]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Deans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[FacultyId] [int] NOT NULL,
	[HeadId] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[DeanId] [int] NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Rating] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsCurators]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsCurators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CuratorId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_GroupsCurators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsLectures]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsLectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
 CONSTRAINT [PK_GroupsLectures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsStudents]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsStudents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_GroupsStudents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Heads]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Heads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LectureRooms]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectureRooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LectureRooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
	[LectureRoomId] [int] NOT NULL,
 CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Rating] [int] NOT NULL,
	[Grants] [money] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 17.07.2023 00:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assistants] ON 
GO
INSERT [dbo].[Assistants] ([Id], [TeacherId]) VALUES (1, 27)
GO
INSERT [dbo].[Assistants] ([Id], [TeacherId]) VALUES (2, 28)
GO
INSERT [dbo].[Assistants] ([Id], [TeacherId]) VALUES (3, 32)
GO
INSERT [dbo].[Assistants] ([Id], [TeacherId]) VALUES (4, 33)
GO
INSERT [dbo].[Assistants] ([Id], [TeacherId]) VALUES (5, 34)
GO
SET IDENTITY_INSERT [dbo].[Assistants] OFF
GO
SET IDENTITY_INSERT [dbo].[Curators] ON 
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (1, 4)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (2, 67)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (3, 51)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (4, 60)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (5, 59)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (6, 52)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (7, 58)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (8, 45)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (9, 47)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (10, 35)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (11, 46)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (12, 44)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (13, 53)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (14, 56)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (15, 57)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (16, 55)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (17, 11)
GO
INSERT [dbo].[Curators] ([Id], [TeacherId]) VALUES (18, 54)
GO
SET IDENTITY_INSERT [dbo].[Curators] OFF
GO
SET IDENTITY_INSERT [dbo].[Deans] ON 
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (1, 5)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (2, 50)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (3, 23)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (4, 8)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (5, 13)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (6, 48)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (7, 49)
GO
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (8, 26)
GO
SET IDENTITY_INSERT [dbo].[Deans] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (1, 2, N'English Philology', 14, 22)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (2, 1, N'Social Science', 13, 18)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (3, 1, N'History', 13, 15)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (4, 3, N'Design', 16, 21)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (5, 4, N'Mathematics', 6, 9)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (6, 1, N'Practic Psychology', 12, 24)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (7, 2, N'Translate', 14, 12)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (8, 4, N'Programming', 1, 25)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (9, 2, N'Pedagogy', 13, 20)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (10, 5, N'Chemistry', 15, 2)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (11, 5, N'Biology', 15, 16)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (12, 3, N'Music', 16, 19)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (13, 4, N'Technology', 2, 10)
GO
INSERT [dbo].[Departments] ([Id], [Building], [Name], [FacultyId], [HeadId]) VALUES (14, 4, N'Software Development', 1, 14)
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (1, 4, N'Computer Science', 3)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (2, 4, N'Technology', 7)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (6, 4, N'PhysicalMathematical', 4)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (12, 1, N'Psychological', 2)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (13, 2, N'Pedagogical', 8)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (14, 2, N'Foreign Languages', 1)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (15, 5, N'Natural', 5)
GO
INSERT [dbo].[Faculties] ([Id], [Building], [Name], [DeanId]) VALUES (16, 3, N'Art', 6)
GO
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (1, N'P107', 3, 2, 4)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (2, N'A203', 4, 1, 10)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (3, N'B101', 1, 5, 14)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (4, N'Q205', 5, 3, 7)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (7, N'emppty', 0, 1, 12)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (8, N'E412', 2, 4, 3)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (9, N'O109', 1, 2, 9)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (10, N'A201', 3, 5, 6)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (13, N'D112', 5, 3, 11)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (14, N'F505', 4, 2, 8)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (15, N'P103', 3, 1, 12)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (16, N'S204', 5, 5, 14)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (17, N'B103', 2, 3, 13)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (18, N'L303', 1, 2, 2)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (19, N'G406', 5, 4, 5)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (20, N'D201', 4, 1, 10)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (21, N'J501', 3, 5, 14)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (22, N'D221', 2, 4, 9)
GO
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] ON 
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (1, 1, 13)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (2, 2, 21)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (3, 3, 14)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (4, 4, 1)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (5, 5, 10)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (6, 6, 18)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (8, 8, 16)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (9, 9, 20)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (10, 10, 8)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (11, 11, 15)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (12, 12, 4)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (13, 13, 2)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (14, 14, 22)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (15, 15, 3)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (16, 16, 19)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (17, 17, 9)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (18, 18, 17)
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] ON 
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (1, 3, 15)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (2, 10, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (3, 20, 25)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (4, 9, 7)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (5, 4, 8)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (6, 18, 25)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (7, 7, 17)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (8, 19, 35)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (9, 1, 27)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (10, 15, 16)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (11, 16, 33)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (12, 8, 7)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (13, 21, 38)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (14, 14, 8)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (15, 2, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (16, 16, 10)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (17, 17, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (18, 7, 16)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (19, 9, 30)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (20, 13, 7)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (21, 20, 21)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (22, 3, 26)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (23, 10, 15)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (24, 21, 17)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (26, 15, 25)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (27, 16, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (28, 3, 7)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (29, 10, 9)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (30, 20, 12)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (31, 21, 30)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (32, 7, 3)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (33, 18, 5)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (34, 16, 25)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (35, 21, 16)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (36, 8, 13)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (37, 3, 27)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (38, 1, 10)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (39, 2, 6)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (40, 16, 10)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (41, 16, 8)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (42, 21, 29)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (43, 3, 30)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (44, 4, 21)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (45, 20, 41)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (46, 14, 20)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (47, 3, 17)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (48, 16, 32)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (49, 21, 8)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (50, 19, 24)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (51, 1, 10)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (52, 4, 18)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (53, 3, 27)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (54, 8, 11)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (55, 21, 39)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (56, 16, 33)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (57, 3, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (58, 10, 15)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (59, 7, 25)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (60, 21, 8)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (61, 13, 3)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (62, 16, 21)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (63, 3, 35)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (64, 14, 10)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (65, 20, 9)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (67, 2, 5)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (68, 21, 32)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (69, 16, 17)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (70, 3, 8)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (71, 19, 20)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (72, 4, 22)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (73, 1, 35)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (74, 21, 27)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (75, 16, 30)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (76, 3, 41)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (77, 7, 29)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (78, 8, 22)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (79, 21, 33)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (80, 13, 2)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (81, 3, 7)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (82, 14, 13)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (83, 14, 6)
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsStudents] ON 
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (1, 2, 1)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (2, 3, 2)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (3, 13, 3)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (4, 20, 4)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (5, 8, 5)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (6, 18, 6)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (7, 2, 7)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (8, 9, 8)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (9, 19, 9)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (10, 20, 10)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (11, 1, 12)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (12, 17, 13)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (13, 21, 14)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (14, 21, 16)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (15, 19, 18)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (16, 4, 19)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (17, 2, 20)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (18, 18, 21)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (19, 3, 22)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (20, 19, 23)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (21, 17, 24)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (22, 20, 25)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (23, 15, 26)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (25, 9, 27)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (26, 21, 28)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (27, 9, 29)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (28, 8, 30)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (29, 15, 31)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (30, 9, 32)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (31, 8, 33)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (32, 13, 34)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (33, 3, 35)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (34, 16, 36)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (35, 4, 37)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (36, 7, 38)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (37, 10, 41)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (38, 1, 42)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (39, 15, 43)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (40, 14, 44)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (41, 7, 46)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (42, 16, 47)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (43, 13, 48)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (44, 10, 49)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (45, 14, 50)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (46, 14, 51)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (47, 16, 52)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (48, 17, 53)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (49, 7, 54)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (50, 21, 55)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (51, 9, 56)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (52, 19, 57)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (53, 4, 58)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (54, 21, 59)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (55, 22, 63)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (56, 22, 64)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (57, 22, 65)
GO
INSERT [dbo].[GroupsStudents] ([Id], [GroupId], [StudentId]) VALUES (58, 22, 66)
GO
SET IDENTITY_INSERT [dbo].[GroupsStudents] OFF
GO
SET IDENTITY_INSERT [dbo].[Heads] ON 
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (1, 2)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (2, 16)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (3, 25)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (4, 10)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (5, 19)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (6, 22)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (7, 9)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (8, 12)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (9, 21)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (10, 15)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (11, 18)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (12, 20)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (13, 14)
GO
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (14, 24)
GO
SET IDENTITY_INSERT [dbo].[Heads] OFF
GO
SET IDENTITY_INSERT [dbo].[LectureRooms] ON 
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (1, 1, N'A311')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (2, 3, N'K304')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (3, 5, N'E603')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (4, 4, N'O502')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (5, 2, N'P240')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (6, 1, N'A104')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (7, 2, N'I349')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (8, 3, N'L942')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (9, 4, N'M402')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (10, 5, N'J350')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (11, 5, N'U340')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (12, 4, N'D520')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (13, 3, N'N690')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (14, 2, N'C350')
GO
INSERT [dbo].[LectureRooms] ([Id], [Building], [Name]) VALUES (15, 1, N'L450')
GO
SET IDENTITY_INSERT [dbo].[LectureRooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (2, 2, 50)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (3, 10, 8)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (4, 21, 34)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (5, 7, 20)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (6, 15, 32)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (7, 11, 17)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (8, 3, 5)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (9, 6, 60)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (10, 20, 34)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (11, 16, 9)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (12, 1, 15)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (13, 23, 27)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (14, 18, 18)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (15, 4, 55)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (16, 9, 23)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (17, 17, 14)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (18, 24, 46)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (19, 12, 2)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (20, 5, 10)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (21, 13, 13)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (22, 22, 44)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (23, 8, 45)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (24, 15, 50)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (25, 19, 11)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (26, 21, 58)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (27, 9, 21)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (28, 20, 4)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (29, 24, 25)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (30, 7, 12)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (31, 11, 19)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (32, 20, 48)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (33, 1, 34)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (34, 5, 61)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (35, 16, 13)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (36, 23, 62)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (37, 6, 64)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (38, 24, 26)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (39, 14, 22)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (40, 1, 49)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (41, 7, 16)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (42, 11, 24)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (43, 12, 47)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (44, 4, 65)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (45, 3, 35)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (46, 17, 14)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (47, 22, 33)
GO
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (48, 19, 63)
GO
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON 
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (1, 1, 2, 3, 14, 4)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (2, 3, 3, 2, 29, 10)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (3, 2, 1, 1, 30, 3)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (4, 1, 4, 4, 10, 11)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (5, 4, 3, 5, 45, 2)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (6, 5, 2, 1, 2, 1)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (7, 6, 1, 6, 28, 15)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (9, 3, 3, 2, 44, 6)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (10, 7, 5, 3, 3, 7)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (12, 2, 2, 2, 11, 4)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (13, 5, 1, 1, 20, 8)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (14, 8, 2, 6, 17, 1)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (15, 4, 4, 7, 23, 5)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (16, 1, 5, 2, 40, 3)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (17, 3, 3, 2, 15, 13)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (18, 6, 1, 1, 22, 7)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (19, 2, 2, 5, 4, 15)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (20, 4, 4, 7, 41, 11)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (21, 5, 1, 2, 19, 1)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (22, 1, 5, 6, 36, 4)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (23, 4, 2, 1, 24, 7)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (24, 8, 1, 4, 12, 9)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (25, 6, 5, 5, 5, 14)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (26, 2, 4, 3, 6, 2)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (27, 3, 3, 6, 24, 2)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (28, 4, 2, 1, 7, 1)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (29, 1, 5, 3, 21, 3)
GO
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (30, 3, 3, 2, 35, 12)
GO
SET IDENTITY_INSERT [dbo].[Schedules] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (1, N'Melanie', N'Wrongs', CAST(N'2001-04-01' AS Date), 3, 1500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (2, N'Kris', N'Filt', CAST(N'2005-11-24' AS Date), 1, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (3, N'Jerry', N'Inis', CAST(N'2003-08-13' AS Date), 2, 800.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (4, N'Michael', N'Low', CAST(N'2005-05-29' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (5, N'Rachel', N'Joil', CAST(N'2002-01-19' AS Date), 4, 900.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (6, N'Clair', N'Path', CAST(N'2004-10-28' AS Date), 1, 300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (7, N'Oliver', N'Bost', CAST(N'2001-12-16' AS Date), 4, 1200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (8, N'Sara', N'Norman', CAST(N'2004-09-03' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (9, N'Fill', N'Ornesr', CAST(N'2002-06-17' AS Date), 1, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (10, N'Jane', N'Richter', CAST(N'2005-08-25' AS Date), 3, 800.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (12, N'Merry', N'Long', CAST(N'2004-11-30' AS Date), 1, 250.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (13, N'Hanna', N'Morn', CAST(N'2003-03-12' AS Date), 2, 400.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (14, N'Marcus', N'Blackwood', CAST(N'2001-05-23' AS Date), 5, 2100.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (16, N'Aksel', N'Hagen', CAST(N'2001-06-18' AS Date), 5, 2500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (18, N'Oskar', N'High', CAST(N'2002-12-27' AS Date), 4, 1300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (19, N'Lonie', N'Dagen', CAST(N'2003-04-15' AS Date), 1, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (20, N'John', N'Kanel', CAST(N'2001-01-03' AS Date), 2, 500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (21, N'Dave', N'Savil', CAST(N'2004-07-12' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (22, N'Harry', N'Upson', CAST(N'2005-10-23' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (23, N'Olivia', N'Garden', CAST(N'2002-02-18' AS Date), 2, 400.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (24, N'Molly', N'Wend', CAST(N'2003-10-03' AS Date), 1, 200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (25, N'Lissa', N'Templton', CAST(N'2005-09-30' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (26, N'Tom', N'Dikson', CAST(N'2005-11-19' AS Date), 4, 1200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (27, N'Ben', N'Frank', CAST(N'2004-12-01' AS Date), 2, 300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (28, N'Jane', N'Arnet', CAST(N'2001-08-23' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (29, N'Poll', N'Hiks', CAST(N'2003-02-24' AS Date), 4, 1300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (30, N'Grace', N'Oln', CAST(N'2002-09-13' AS Date), 3, 1000.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (31, N'Sindie', N'Oklan', CAST(N'2005-01-28' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (32, N'Norman', N'Bronway', CAST(N'2004-06-01' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (33, N'Alan', N'Grany', CAST(N'2002-05-24' AS Date), 1, 250.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (34, N'Amelia', N'Yerd', CAST(N'2003-11-02' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (35, N'Obry', N'Klin', CAST(N'2005-02-18' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (36, N'Kordelia', N'Timson', CAST(N'2001-10-23' AS Date), 3, 700.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (37, N'Frenk', N'Hoffmann', CAST(N'2003-09-11' AS Date), 1, 200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (38, N'Nick', N'Zink', CAST(N'2005-12-04' AS Date), 5, 2100.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (41, N'Lory', N'Sontack', CAST(N'2001-08-12' AS Date), 2, 430.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (42, N'Mett', N'Voyd', CAST(N'2004-12-05' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (43, N'Curren', N'Hill', CAST(N'2005-10-27' AS Date), 1, 250.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (44, N'Melanie', N'Davis', CAST(N'2004-01-13' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (46, N'Vein', N'Duckless', CAST(N'2005-04-17' AS Date), 1, 150.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (47, N'Anett', N'River', CAST(N'2001-07-11' AS Date), 3, 800.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (48, N'Iris', N'Oppon', CAST(N'2003-08-19' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (49, N'Gabby', N'Jons', CAST(N'2001-03-21' AS Date), 4, 1450.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (50, N'Sonya', N'Maps', CAST(N'2004-06-10' AS Date), 2, 350.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (51, N'Dina', N'Bow', CAST(N'2004-12-29' AS Date), 3, 600.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (52, N'Konrad', N'Picks', CAST(N'2001-04-16' AS Date), 5, 2150.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (53, N'Olli', N'Tims', CAST(N'2003-11-24' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (54, N'Lina', N'Hanigan', CAST(N'2005-03-14' AS Date), 4, 1200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (55, N'Evan', N'Milton', CAST(N'2001-08-19' AS Date), 5, 2350.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (56, N'Richard', N'Swan', CAST(N'2004-05-28' AS Date), 4, 1500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (57, N'Poll', N'Richter', CAST(N'2002-12-04' AS Date), 2, 500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (58, N'Jo', N'Lin', CAST(N'2003-02-15' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (59, N'Kolin', N'Dors', CAST(N'2001-11-24' AS Date), 3, 850.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (63, N'Nick', N'Brons', CAST(N'2002-10-29' AS Date), 2, 300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (64, N'Robert', N'Klen', CAST(N'2002-03-18' AS Date), 0, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (65, N'Lisa', N'Mor', CAST(N'2002-12-01' AS Date), 1, 120.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [Rating], [Grants]) VALUES (66, N'Piter', N'Storm', CAST(N'2002-09-01' AS Date), 2, 300.0000)
GO
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (15, N'Algebra')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (14, N'Algorithms')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (22, N'Anatomy')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (9, N'Biology')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (8, N'Chemistry')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (24, N'Data analysis')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (19, N'Database Theory')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (18, N'Ecology')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (10, N'Foreign language')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (16, N'Geometry')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (6, N'Higher math')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (12, N'History')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'History of music')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'Horeography')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (23, N'Informatics')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (11, N'Literature')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (5, N'Math')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Painting')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (17, N'Phylosophy')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (7, N'Physics')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (13, N'Programming')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (20, N'Psychology')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'Singing')
GO
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (21, N'Technology')
GO
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (2, N'Jack', N'Underhill')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (4, N'Matt', N'Gel')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (5, N'Ursa', N'Almi')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (8, N'Samantha', N'Adams')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (9, N'Aron', N'Kron')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (10, N'Henry', N'Beng')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (11, N'Dave', N'McQueen')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (12, N'Bella', N'Nerd')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (13, N'Hanna', N'Selv')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (14, N'Nick', N'Oln')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (15, N'Tomas', N'Yang')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (16, N'Benjaming', N'Fols')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (17, N'Nill', N'Worm')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (18, N'Alan', N'Krowly')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (19, N'Sara', N'High')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (20, N'Vanessa', N'Spring')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (21, N'Jade', N'Uron')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (22, N'Merry', N'Shadow')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (23, N'Adam', N'Lie')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (24, N'Lora', N'Gow')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (25, N'Denis', N'Allow')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (26, N'Margaret', N'Wings')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (27, N'Jozeph', N'Morow')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (28, N'Emmy', N'Norie')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (32, N'Sallie', N'Kols')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (33, N'Bo', N'Devis')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (34, N'Alex', N'Carmack')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (35, N'Roland', N'Golden')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (44, N'Kris', N'Norway')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (45, N'Lora', N'Merfy')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (46, N'Henry', N'Vein')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (47, N'Kolin', N'Oring')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (48, N'Ruta', N'Dimen')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (49, N'Dave ', N'Sync')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (50, N'Edward', N'Hopper')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (51, N'Marcus', N'Devils')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (52, N'Samanta', N'Williams')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (53, N'Jerry', N'Long')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (54, N'Oskar', N'Mildren')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (55, N'Richard', N'Dert')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (56, N'Daniel', N'Fin')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (57, N'Jessica', N'Linch')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (58, N'Molly', N'Rows')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (59, N'Nikolas', N'Moven')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (60, N'Olivia', N'Alien')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (61, N'Ken', N'Tild')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (62, N'Harry', N'Parkins')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (63, N'Melani', N'Bronks')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (64, N'Jade', N'Eniven')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (65, N'Elina', N'Sans')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (66, N'Forester', N'Hink')
GO
INSERT [dbo].[Teachers] ([Id], [Name], [Surname]) VALUES (67, N'Tina', N'Blow')
GO
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name]    Script Date: 17.07.2023 00:30:35 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name2]    Script Date: 17.07.2023 00:30:35 ******/
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [Name2] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name_2]    Script Date: 17.07.2023 00:30:35 ******/
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [Name_2] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name3]    Script Date: 17.07.2023 00:30:35 ******/
ALTER TABLE [dbo].[LectureRooms] ADD  CONSTRAINT [Name3] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name_3]    Script Date: 17.07.2023 00:30:35 ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [Name_3] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT (N'''porozh') FOR [Name]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Name]  DEFAULT (N'puste') FOR [Name]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_Name]  DEFAULT (N'emppty') FOR [Name]
GO
ALTER TABLE [dbo].[LectureRooms] ADD  CONSTRAINT [DF_LectureRooms_Name]  DEFAULT (N'noname') FOR [Name]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Name]  DEFAULT (N'pusto') FOR [Name]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Surname]  DEFAULT (N'puste') FOR [Surname]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Grants]  DEFAULT ((0)) FOR [Grants]
GO
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [DF_Subjects_Name]  DEFAULT (N'pustto') FOR [Name]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Name]  DEFAULT (N'emptty') FOR [Name]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Surname]  DEFAULT (N'pusto') FOR [Surname]
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD  CONSTRAINT [FK_Assistants_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Assistants] CHECK CONSTRAINT [FK_Assistants_Teachers]
GO
ALTER TABLE [dbo].[Curators]  WITH CHECK ADD  CONSTRAINT [FK_Curators_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Curators] CHECK CONSTRAINT [FK_Curators_Teachers]
GO
ALTER TABLE [dbo].[Deans]  WITH CHECK ADD  CONSTRAINT [FK_Deans_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Deans] CHECK CONSTRAINT [FK_Deans_Teachers]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [FK_Faculties_Deans] FOREIGN KEY([DeanId])
REFERENCES [dbo].[Deans] ([Id])
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [FK_Faculties_Deans]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Departments]
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD  CONSTRAINT [FK_GroupsCurators_Curators] FOREIGN KEY([CuratorId])
REFERENCES [dbo].[Curators] ([Id])
GO
ALTER TABLE [dbo].[GroupsCurators] CHECK CONSTRAINT [FK_GroupsCurators_Curators]
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD  CONSTRAINT [FK_GroupsCurators_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupsCurators] CHECK CONSTRAINT [FK_GroupsCurators_Groups]
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD  CONSTRAINT [FK_GroupsLectures_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures] CHECK CONSTRAINT [FK_GroupsLectures_Groups]
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD  CONSTRAINT [FK_GroupsLectures_Lectures] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures] CHECK CONSTRAINT [FK_GroupsLectures_Lectures]
GO
ALTER TABLE [dbo].[Heads]  WITH CHECK ADD  CONSTRAINT [FK_Heads_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Heads] CHECK CONSTRAINT [FK_Heads_Teachers]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [FK_Lectures_Subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_Subjects]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [FK_Lectures_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_Teachers]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Schedules_LectureRooms] FOREIGN KEY([LectureRoomId])
REFERENCES [dbo].[LectureRooms] ([Id])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Schedules_LectureRooms]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Schedules_Lectures] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([Id])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Schedules_Lectures]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [Building] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [Building]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [Building1] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [Building1]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [Rating] CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [Rating]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [Year] CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [Year]
GO
ALTER TABLE [dbo].[LectureRooms]  WITH CHECK ADD  CONSTRAINT [Building2] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[LectureRooms] CHECK CONSTRAINT [Building2]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Class] CHECK  (([Class]>=(1) AND [Class]<=(8)))
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Class]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [DayOfWeek1] CHECK  (([DayOfWeek]>=(1) AND [DayOfWeek]<=(7)))
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [DayOfWeek1]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Week] CHECK  (([Week]>=(1) AND [Week]<=(52)))
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Week]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [Birthday] CHECK  (([Birthday]>='2001-01-01'))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [Birthday]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [Grants] CHECK  (([Grants]>=(0)))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [Grants]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [Rating_1] CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [Rating_1]
GO
USE [master]
GO
ALTER DATABASE [Academy_Shalabai] SET  READ_WRITE 
GO
