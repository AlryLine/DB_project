USE [master]
GO
/****** Object:  Database [Academy_Shalabai]    Script Date: 04.07.2023 20:44:00 ******/
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
/****** Object:  Table [dbo].[Curators]    Script Date: 04.07.2023 20:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NULL,
 CONSTRAINT [PK_Curators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 04.07.2023 20:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 04.07.2023 20:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dean] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Financing] [money] NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 04.07.2023 20:44:00 ******/
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
/****** Object:  Table [dbo].[GroupsCurators]    Script Date: 04.07.2023 20:44:00 ******/
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
/****** Object:  Table [dbo].[GroupsLectures]    Script Date: 04.07.2023 20:44:00 ******/
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
/****** Object:  Table [dbo].[Lectures]    Script Date: 04.07.2023 20:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LectureRoom] [nvarchar](20) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 04.07.2023 20:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
	[Birthday] [date] NOT NULL,
	[GroupId] [int] NOT NULL,
	[Grants] [money] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 04.07.2023 20:44:00 ******/
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
/****** Object:  Table [dbo].[Teachers]    Script Date: 04.07.2023 20:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmploymentDate] [date] NOT NULL,
	[IsAssistant] [bit] NOT NULL,
	[IsProfessor] [bit] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Position] [nvarchar](20) NOT NULL,
	[Premium] [money] NOT NULL,
	[Salary] [money] NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Curators] ON 
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (1, N'Sara', N'Tomson')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (2, N'Jhon', N'Klen')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (3, N'Loyd', N'Arnel')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (4, N'Ben', N'Emen')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (5, N'Ksandr', N'Over')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (6, N'Julie', N'puusto')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (7, N'Tina', N'Movel')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (8, N'Alice', N'Nerd')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (9, N'Walter', N'Dors')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (10, N'ppusto', N'Sparks')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (11, N'Mark', N'Aberline')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (12, N'Kwini', N'Jenkins')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (13, N'Vanessa', N'Blum')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (14, N'Harry', N'Fon')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (15, N'Madison', N'Wall')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (16, N'Cortney', N'Sens')
GO
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (17, N'Mable', N'Dinks')
GO
SET IDENTITY_INSERT [dbo].[Curators] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (2, 20000.3400, N'English Philology', 5)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (4, 25000.0000, N'empty', 2)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (5, 15000.0000, N'History', 4)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (6, 5050.0000, N'Design', 7)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (7, 12000.0000, N'Mathematics', 3)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (9, 7400.0000, N'Practic Psychology', 4)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (10, 7500.4000, N'Translate', 5)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (11, 3650.6000, N'Philosophy', 4)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (12, 6500.7800, N'Pedagogy', 4)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (13, 21000.0000, N'Chemistry', 6)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (14, 25000.7780, N'Biology', 6)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (15, 32000.8000, N'Music', 7)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (16, 14500.3000, N'Technology', 2)
GO
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (17, 45000.0000, N'Software Development', 1)
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (1, N'Tomson', N'Computer Science', 42000.5000)
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (2, N'Fransing', N'Technology', 38000.0000)
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (3, N'Jonson', N'Physical Mathematical', 45000.0000)
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (4, N'Ams', N'Psychological Pedagogical', 18000.4540)
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (5, N'Brons', N'Foreign Languages', 15000.0000)
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (6, N'Glen', N'Natural', 31000.6000)
GO
INSERT [dbo].[Faculties] ([Id], [Dean], [Name], [Financing]) VALUES (7, N'Kerwan', N'Art', 28000.4000)
GO
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (1, N'P107', 3, 2, 17)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (2, N'A203', 4, 5, 15)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (3, N'B101', 1, 1, 5)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (4, N'Q205', 5, 3, 2)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (7, N'emppty', 0, 1, 11)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (8, N'E412', 2, 4, 9)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (9, N'O109', 1, 2, 13)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (10, N'A201', 3, 5, 15)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (13, N'D112', 5, 3, 7)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (14, N'P105', 4, 2, 17)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (15, N'P103', 3, 1, 17)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (16, N'S204', 5, 5, 10)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (17, N'B103', 2, 3, 5)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (18, N'L303', 1, 2, 12)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (19, N'G406', 5, 4, 14)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (20, N'D201', 4, 1, 7)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year], [DepartmentId]) VALUES (21, N'J501', 3, 5, 16)
GO
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] ON 
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (1, 1, 10)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (3, 2, 1)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (4, 3, 18)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (5, 4, 14)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (6, 5, 9)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (7, 6, 20)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (9, 7, 4)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (10, 8, 15)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (11, 9, 2)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (12, 10, 21)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (13, 11, 8)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (14, 12, 13)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (15, 13, 7)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (16, 14, 16)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (17, 15, 3)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (18, 16, 17)
GO
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (19, 17, 19)
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] ON 
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (1, 3, 15)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (2, 10, 6)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (3, 20, 24)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (4, 9, 11)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (5, 4, 6)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (6, 18, 6)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (7, 7, 20)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (8, 19, 5)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (9, 1, 10)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (10, 15, 22)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (11, 13, 18)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (12, 8, 5)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (13, 21, 2)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (14, 14, 25)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (15, 2, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (16, 16, 11)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (17, 17, 4)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (18, 7, 3)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (19, 9, 2)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (20, 13, 23)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (21, 20, 12)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (22, 3, 17)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (23, 10, 14)
GO
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (24, 21, 11)
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (2, N'A209', 2, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (3, N'A210', 10, 8, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (4, N'A305', 21, 5, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (5, N'B103', 7, 12, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (6, N'B109', 11, 2, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (7, N'B112', 14, 11, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (8, N'C201', 3, 4, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (9, N'C203', 6, 13, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (10, N'C214', 20, 5, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (11, N'D201', 16, 9, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (12, N'D310', 1, 15, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (13, N'D320', 23, 11, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (14, N'E401', 18, 4, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (15, N'E407', 4, 8, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (16, N'E414', 9, 12, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (17, N'F103', 17, 14, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (18, N'F108', 24, 15, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (19, N'F115', 12, 2, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (20, N'G204', 5, 10, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (21, N'G209', 13, 13, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (22, N'G216', 22, 14, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (23, N'H302', 8, 10, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (24, N'H311', 15, 11, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (25, N'H320', 19, 11, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (26, N'J400', 20, 5, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (27, N'J405', 9, 12, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (28, N'J410', 14, 11, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (29, N'K503', 24, 15, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (30, N'K508', 7, 12, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (31, N'D201', 11, 2, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (32, N'F115', 20, 9, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (33, N'H320', 1, 14, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (34, N'D201', 5, 8, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (35, N'A210', 16, 13, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (36, N'A305', 23, 11, 1)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (37, N'B112', 6, 9, 3)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (38, N'A210', 20, 10, 4)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (39, N'E401', 14, 2, 5)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (40, N'J405', 1, 4, 2)
GO
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId], [DayOfWeek]) VALUES (41, N'K508', 7, 8, 3)
GO
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (1, N'Melanie', N'Wrongs', CAST(N'2001-04-01' AS Date), 2, 1500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (2, N'Kris', N'Filt', CAST(N'2005-11-24' AS Date), 3, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (3, N'Jerry', N'Inis', CAST(N'2003-08-13' AS Date), 13, 800.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (4, N'Michael', N'Low', CAST(N'2005-05-29' AS Date), 20, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (5, N'Rachel', N'Joil', CAST(N'2002-01-19' AS Date), 8, 900.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (6, N'Clair', N'Path', CAST(N'2004-10-28' AS Date), 18, 300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (7, N'Oliver', N'Bost', CAST(N'2001-12-16' AS Date), 2, 1200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (8, N'Sara', N'Norman', CAST(N'2004-09-03' AS Date), 9, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (9, N'Fill', N'Ornesr', CAST(N'2002-06-17' AS Date), 19, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (10, N'Jane', N'Richter', CAST(N'2005-08-25' AS Date), 20, 100.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (11, N'Merry', N'Long', CAST(N'2004-11-30' AS Date), 1, 250.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (12, N'Hanna', N'Morn', CAST(N'2003-03-12' AS Date), 17, 400.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (13, N'Marcus', N'Blackwood', CAST(N'2001-06-21' AS Date), 21, 2100.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (14, N'Aksel', N'Hagen', CAST(N'2001-06-18' AS Date), 21, 2500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (15, N'Oskar', N'High', CAST(N'2002-12-27' AS Date), 19, 1300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (16, N'Lonie', N'Dagen', CAST(N'2003-04-15' AS Date), 4, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (17, N'John', N'Kanel', CAST(N'2001-01-03' AS Date), 2, 500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (18, N'Dave', N'Savil', CAST(N'2004-07-12' AS Date), 18, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (19, N'Harry', N'Upson', CAST(N'2005-10-23' AS Date), 3, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (20, N'Olivia', N'Garden', CAST(N'2002-02-18' AS Date), 19, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (21, N'Molly', N'Wend', CAST(N'2003-10-03' AS Date), 17, 200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (22, N'Lissa', N'Templton', CAST(N'2005-09-30' AS Date), 20, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (23, N'Tom', N'Dikson', CAST(N'2005-11-19' AS Date), 15, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (24, N'Ben', N'Frank', CAST(N'2004-12-01' AS Date), 9, 300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (25, N'Jane', N'Arnet', CAST(N'2001-08-23' AS Date), 21, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (26, N'Poll', N'Hiks', CAST(N'2003-02-24' AS Date), 9, 1300.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (27, N'Grace', N'Oln', CAST(N'2002-09-13' AS Date), 8, 1000.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (28, N'Sindie', N'Oklan', CAST(N'2005-01-28' AS Date), 15, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (29, N'Norman', N'Bronway', CAST(N'2004-06-01' AS Date), 9, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (30, N'Alan', N'Grany', CAST(N'2002-05-24' AS Date), 8, 250.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (31, N'Amelia', N'Yerd', CAST(N'2003-11-02' AS Date), 13, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (32, N'Obry', N'Klin', CAST(N'2005-02-18' AS Date), 3, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (33, N'Kordelia', N'Timson', CAST(N'2001-10-23' AS Date), 16, 700.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (34, N'Frenk', N'Hoffmann', CAST(N'2003-09-11' AS Date), 4, 200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (35, N'Nick', N'Zink', CAST(N'2005-12-04' AS Date), 7, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (36, N'Lory', N'Sontack', CAST(N'2001-08-12' AS Date), 10, 430.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (37, N'Mett', N'Voyd', CAST(N'2004-12-05' AS Date), 1, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (38, N'Curren', N'Hill', CAST(N'2005-10-27' AS Date), 15, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (39, N'Melanie', N'Davis', CAST(N'2004-01-13' AS Date), 14, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (40, N'Vein', N'Duckless', CAST(N'2005-04-17' AS Date), 7, 100.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (41, N'Anett', N'River', CAST(N'2001-07-11' AS Date), 16, 200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (42, N'Iris', N'Oppon', CAST(N'2003-08-19' AS Date), 13, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (43, N'Gabby', N'Jons', CAST(N'2001-03-21' AS Date), 10, 1450.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (44, N'Sonya', N'Maps', CAST(N'2004-06-10' AS Date), 14, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (45, N'Dina', N'Bow', CAST(N'2004-12-29' AS Date), 14, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (46, N'Konrad', N'Picks', CAST(N'2001-04-16' AS Date), 16, 2130.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (47, N'Olli', N'Tims', CAST(N'2003-11-24' AS Date), 17, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (48, N'Lina', N'Hanigan', CAST(N'2005-03-14' AS Date), 7, 1200.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (49, N'Evan', N'Milton', CAST(N'2001-08-19' AS Date), 21, 2350.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (50, N'Richard', N'Swan', CAST(N'2004-05-28' AS Date), 9, 1500.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (51, N'Poll', N'Richter', CAST(N'2002-12-04' AS Date), 19, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (52, N'Jo', N'Lin', CAST(N'2003-02-15' AS Date), 4, 0.0000)
GO
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Birthday], [GroupId], [Grants]) VALUES (53, N'Kolin', N'Dors', CAST(N'2001-11-24' AS Date), 21, 0.0000)
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
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (2, CAST(N'1990-01-01' AS Date), 0, 1, N'Jack', N'Sad teacher', 500.0000, 5000.5000, N'Underhill')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (4, CAST(N'2000-01-05' AS Date), 1, 0, N'Matt', N'Teacher', 400.0000, 850.2000, N'Gel')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (5, CAST(N'2000-03-13' AS Date), 1, 0, N'Ursa', N'Assistant', 200.0000, 550.1400, N'Almi')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (8, CAST(N'1990-04-20' AS Date), 0, 1, N'Samantha', N'Docent', 650.0000, 900.3500, N'Adams')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (9, CAST(N'1992-05-06' AS Date), 1, 0, N'Aron', N'Assistant', 120.0000, 750.1200, N'Kron')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (10, CAST(N'2001-02-19' AS Date), 0, 1, N'Henry', N'Sad teacher', 350.0000, 4500.4000, N'Beng')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (11, CAST(N'1998-09-28' AS Date), 0, 1, N'Dave', N'Teacher', 200.0000, 1000.2000, N'McQueen')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (12, CAST(N'1994-11-04' AS Date), 1, 0, N'Bella', N'Assistant', 100.0000, 700.0000, N'Nerd')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (13, CAST(N'2003-02-15' AS Date), 0, 1, N'Hanna', N'Sad teacher', 600.0000, 4800.7000, N'Selv')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (14, CAST(N'1996-10-24' AS Date), 0, 1, N'Nick', N'Docent', 550.0000, 1200.1300, N'Oln')
GO
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (15, CAST(N'2002-01-19' AS Date), 1, 0, N'Tomas', N'Teacher', 500.0000, 800.1500, N'Yang')
GO
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name]    Script Date: 04.07.2023 20:44:01 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name_1]    Script Date: 04.07.2023 20:44:01 ******/
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [Name_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name_2]    Script Date: 04.07.2023 20:44:01 ******/
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [Name_2] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name_3]    Script Date: 04.07.2023 20:44:01 ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [Name_3] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Curators] ADD  CONSTRAINT [DF_Curators_Name]  DEFAULT (N'ppusto') FOR [Name]
GO
ALTER TABLE [dbo].[Curators] ADD  CONSTRAINT [DF_Curators_Surname]  DEFAULT (N'puusto') FOR [Surname]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Financing]  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT (N'empty') FOR [Name]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Dean]  DEFAULT (N'eempty') FOR [Dean]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Name]  DEFAULT (N'emmpty') FOR [Name]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Financing]  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_Name]  DEFAULT (N'emppty') FOR [Name]
GO
ALTER TABLE [dbo].[Lectures] ADD  CONSTRAINT [DF_Lectures_LectureRoom]  DEFAULT (N'pussto') FOR [LectureRoom]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Name]  DEFAULT (N'pustoo') FOR [Name]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Surname]  DEFAULT (N'_pusto') FOR [Surname]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Birthday]  DEFAULT ('2023-06-25') FOR [Birthday]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_Grants]  DEFAULT ((0)) FOR [Grants]
GO
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [DF_Subjects_Name]  DEFAULT (N'pustto') FOR [Name]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_IsAssistant]  DEFAULT ((0)) FOR [IsAssistant]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_IsProfessor]  DEFAULT ((0)) FOR [IsProfessor]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Name]  DEFAULT (N'emptty') FOR [Name]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Position]  DEFAULT (N'emptyy') FOR [Position]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Premium]  DEFAULT ((0)) FOR [Premium]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Salary]  DEFAULT ((0)) FOR [Salary]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Surname]  DEFAULT (N'pusto') FOR [Surname]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
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
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Groups]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [Financing] CHECK  (([Financing]>=(0)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [Financing]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [Financing_1] CHECK  (([Financing]>=(0)))
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [Financing_1]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [Rating] CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [Rating]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [Year] CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [Year]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [DayOfWeek] CHECK  (([DayOfWeek]>=(1) AND [DayOfWeek]<=(7)))
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [DayOfWeek]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [Birthday] CHECK  (([Birthday]<='2023-06-25'))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [Birthday]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [Grants] CHECK  (([Grants]>=(0)))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [Grants]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [EmploymentDate] CHECK  (([EmploymentDate]>='1990-01-01'))
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [EmploymentDate]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [Premium] CHECK  (([Premium]>=(0)))
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [Premium]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [Salary] CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [Salary]
GO
USE [master]
GO
ALTER DATABASE [Academy_Shalabai] SET  READ_WRITE 
GO
