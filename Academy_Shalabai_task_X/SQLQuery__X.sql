USE [master]
GO
/****** Object:  Database [Airport_Shalabai]    Script Date: 03.07.2023 00:58:16 ******/
CREATE DATABASE [Airport_Shalabai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Airport_Shalabai', FILENAME = N'E:\SQLDB\MSSQL13.SQLEXPRESSALRY\MSSQL\DATA\Airport_Shalabai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Airport_Shalabai_log', FILENAME = N'E:\SQLDB\MSSQL13.SQLEXPRESSALRY\MSSQL\DATA\Airport_Shalabai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Airport_Shalabai] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Airport_Shalabai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Airport_Shalabai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET ARITHABORT OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Airport_Shalabai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Airport_Shalabai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Airport_Shalabai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Airport_Shalabai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Airport_Shalabai] SET  MULTI_USER 
GO
ALTER DATABASE [Airport_Shalabai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Airport_Shalabai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Airport_Shalabai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Airport_Shalabai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Airport_Shalabai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Airport_Shalabai] SET QUERY_STORE = OFF
GO
USE [Airport_Shalabai]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Airport_Shalabai]
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Airlines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airplane_Flights]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airplane_Flights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AirlineId] [int] NOT NULL,
	[FlightNumber] [nvarchar](20) NOT NULL,
	[CityId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NOT NULL,
	[Duration] [time](7) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Airplane_Flights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Business_class]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business_class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightId] [int] NOT NULL,
	[AvailableSeats] [int] NOT NULL,
 CONSTRAINT [PK_BusinessClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Towns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Economy_class]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Economy_class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightId] [int] NOT NULL,
	[AvailableSeats] [int] NOT NULL,
 CONSTRAINT [PK_Economy_class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passengers]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passengers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
	[TicketId] [int] NOT NULL,
 CONSTRAINT [PK_Passengers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 03.07.2023 00:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightId] [int] NOT NULL,
	[BusinessId] [int] NOT NULL,
	[EconomyId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Sold] [bit] NOT NULL,
	[Booking] [bit] NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Airlines] ON 
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (9, N'Azur Air')
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (1, N'LOT Polish')
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (4, N'Lufthansa')
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (8, N'SkyUp')
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (7, N'UkraineInternational')
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (2, N'Windrose')
GO
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (3, N'Wizz Air')
GO
SET IDENTITY_INSERT [dbo].[Airlines] OFF
GO
SET IDENTITY_INSERT [dbo].[Airplane_Flights] ON 
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (1, 9, N'AS3059', 3, CAST(N'2023-07-01' AS Date), CAST(N'22:00:00' AS Time), CAST(N'02:00:00' AS Time), N'Departed
')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (2, 4, N'SU4920', 8, CAST(N'2023-08-10' AS Date), CAST(N'13:20:00' AS Time), CAST(N'04:30:00' AS Time), N'Cancelled')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (3, 1, N'DF6470', 10, CAST(N'2023-07-03' AS Date), CAST(N'20:00:00' AS Time), CAST(N'03:00:00' AS Time), N'Delayed')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (4, 9, N'AC4020', 6, CAST(N'2023-07-15' AS Date), CAST(N'09:45:00' AS Time), CAST(N'02:30:00' AS Time), N'pusto')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (5, 3, N'NK5636', 9, CAST(N'2023-08-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'01:15:00' AS Time), N'Cancelled')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (7, 4, N'LO4025', 6, CAST(N'2023-08-23' AS Date), CAST(N'15:25:00' AS Time), CAST(N'01:00:00' AS Time), N'Cancelled')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (9, 8, N'ML8560', 1, CAST(N'2023-07-16' AS Date), CAST(N'21:00:00' AS Time), CAST(N'00:30:00' AS Time), N'pusto')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (10, 2, N'FA9032', 5, CAST(N'2023-07-14' AS Date), CAST(N'10:00:00' AS Time), CAST(N'01:00:00' AS Time), N'pusto')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (11, 1, N'GU3524', 7, CAST(N'2023-07-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'05:35:00' AS Time), N'pusto')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (12, 8, N'IO9549', 2, CAST(N'2023-07-01' AS Date), CAST(N'11:00:00' AS Time), CAST(N'00:40:00' AS Time), N'Departed')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (13, 1, N'GU4603', 10, CAST(N'2023-07-14' AS Date), CAST(N'23:00:00' AS Time), CAST(N'03:20:00' AS Time), N'Check-in closed')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (14, 9, N'JO2053', 6, CAST(N'2023-07-03' AS Date), CAST(N'02:00:00' AS Time), CAST(N'01:30:00' AS Time), N'Check-in')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (15, 7, N'PE4023', 4, CAST(N'2023-07-01' AS Date), CAST(N'00:30:00' AS Time), CAST(N'00:45:00' AS Time), N'Departed')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (16, 4, N'VI3496', 9, CAST(N'2023-07-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'03:00:00' AS Time), N'Delayed')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (17, 3, N'KO5305', 1, CAST(N'2023-07-20' AS Date), CAST(N'11:30:00' AS Time), CAST(N'00:40:00' AS Time), N'pusto')
GO
INSERT [dbo].[Airplane_Flights] ([Id], [AirlineId], [FlightNumber], [CityId], [Date], [Time], [Duration], [Status]) VALUES (18, 9, N'HA3469', 10, CAST(N'2023-07-07' AS Date), CAST(N'21:00:00' AS Time), CAST(N'03:00:00' AS Time), N'pusto')
GO
SET IDENTITY_INSERT [dbo].[Airplane_Flights] OFF
GO
SET IDENTITY_INSERT [dbo].[Business_class] ON 
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (1, 9, 2)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (2, 17, 4)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (3, 3, 0)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (4, 16, 0)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (5, 18, 5)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (6, 4, 3)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (7, 11, 0)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (8, 14, 2)
GO
INSERT [dbo].[Business_class] ([Id], [FlightId], [AvailableSeats]) VALUES (12, 10, 0)
GO
SET IDENTITY_INSERT [dbo].[Business_class] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (3, N'Dnipropetrovsk')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (8, N'Gdansk')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (9, N'Krakow')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (1, N'Kyiv')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (10, N'Lodz')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (2, N'Lviv')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (4, N'Odessa')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (7, N'Poznan')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (6, N'Warsaw')
GO
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (5, N'Zaporizhzhia')
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Economy_class] ON 
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (1, 10, 0)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (2, 14, 1)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (3, 9, 0)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (4, 18, 3)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (5, 11, 5)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (6, 4, 0)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (7, 17, 8)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (8, 16, 3)
GO
INSERT [dbo].[Economy_class] ([Id], [FlightId], [AvailableSeats]) VALUES (9, 3, 0)
GO
SET IDENTITY_INSERT [dbo].[Economy_class] OFF
GO
SET IDENTITY_INSERT [dbo].[Passengers] ON 
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (1, N'Amanda', N'Willson', 9)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (2, N'Harry', N'Long', 16)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (3, N'Emma', N'Stown', 2)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (4, N'Kate', N'Jons', 11)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (5, N'Mark', N'Nilon', 15)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (6, N'Ursula', N'Arnet', 3)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (7, N'Emily', N'Clark', 8)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (8, N'Konor', N'Green', 5)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (9, N'Jhon', N'Erl', 13)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (10, N'Fred', N'Olson', 6)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (11, N'Alan', N'Twice', 1)
GO
INSERT [dbo].[Passengers] ([Id], [Name], [Surname], [TicketId]) VALUES (12, N'Oskar', N'High', 17)
GO
SET IDENTITY_INSERT [dbo].[Passengers] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (1, 18, 5, 4, 2300.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (2, 14, 8, 2, 1500.0000, 0, 1)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (3, 10, 12, 1, 2000.0000, 0, 1)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (4, 4, 6, 6, 1300.0000, 0, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (5, 3, 3, 9, 2400.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (6, 18, 5, 4, 1500.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (8, 11, 7, 5, 2000.0000, 0, 1)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (9, 9, 1, 3, 1200.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (10, 1, 5, 5, 1000.0000, 0, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (11, 18, 5, 4, 2200.0000, 0, 1)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (13, 16, 4, 8, 1250.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (14, 9, 1, 3, 2500.0000, 0, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (15, 15, 5, 3, 1450.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (16, 17, 2, 7, 1200.0000, 1, 0)
GO
INSERT [dbo].[Tickets] ([Id], [FlightId], [BusinessId], [EconomyId], [Price], [Sold], [Booking]) VALUES (17, 18, 5, 4, 2800.0000, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name_1]    Script Date: 03.07.2023 00:58:18 ******/
ALTER TABLE [dbo].[Airlines] ADD  CONSTRAINT [Name_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FlightNumber]    Script Date: 03.07.2023 00:58:18 ******/
ALTER TABLE [dbo].[Airplane_Flights] ADD  CONSTRAINT [FlightNumber] UNIQUE NONCLUSTERED 
(
	[FlightNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name]    Script Date: 03.07.2023 00:58:18 ******/
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Airlines] ADD  CONSTRAINT [DF_Airlines_Name]  DEFAULT (N'_empty') FOR [Name]
GO
ALTER TABLE [dbo].[Airplane_Flights] ADD  CONSTRAINT [DF_Airplane_Flights_FlightNumber]  DEFAULT (N'empty') FOR [FlightNumber]
GO
ALTER TABLE [dbo].[Airplane_Flights] ADD  CONSTRAINT [DF_Airplane_Flights_Date]  DEFAULT ('2023-06-30') FOR [Date]
GO
ALTER TABLE [dbo].[Airplane_Flights] ADD  CONSTRAINT [DF_Airplane_Flights_Status]  DEFAULT (N'pusto') FOR [Status]
GO
ALTER TABLE [dbo].[Business_class] ADD  CONSTRAINT [DF_BusinessClass_AvailableSeats]  DEFAULT ((0)) FOR [AvailableSeats]
GO
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [DF_Towns_Name]  DEFAULT (N'_pusto') FOR [Name]
GO
ALTER TABLE [dbo].[Economy_class] ADD  CONSTRAINT [DF_Economy_class_AvailableSeats]  DEFAULT ((0)) FOR [AvailableSeats]
GO
ALTER TABLE [dbo].[Passengers] ADD  CONSTRAINT [DF_Passengers_Name]  DEFAULT (N'puusto') FOR [Name]
GO
ALTER TABLE [dbo].[Passengers] ADD  CONSTRAINT [DF_Passengers_Surname]  DEFAULT (N'pussto') FOR [Surname]
GO
ALTER TABLE [dbo].[Tickets] ADD  CONSTRAINT [DF_Tickets_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Tickets] ADD  CONSTRAINT [DF_Tickets_Sold]  DEFAULT ((0)) FOR [Sold]
GO
ALTER TABLE [dbo].[Tickets] ADD  CONSTRAINT [DF_Tickets_Booking]  DEFAULT ((0)) FOR [Booking]
GO
ALTER TABLE [dbo].[Airplane_Flights]  WITH CHECK ADD  CONSTRAINT [FK_Airplane_Flights_Airlines] FOREIGN KEY([AirlineId])
REFERENCES [dbo].[Airlines] ([Id])
GO
ALTER TABLE [dbo].[Airplane_Flights] CHECK CONSTRAINT [FK_Airplane_Flights_Airlines]
GO
ALTER TABLE [dbo].[Airplane_Flights]  WITH CHECK ADD  CONSTRAINT [FK_Airplane_Flights_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Airplane_Flights] CHECK CONSTRAINT [FK_Airplane_Flights_Cities]
GO
ALTER TABLE [dbo].[Business_class]  WITH CHECK ADD  CONSTRAINT [FK_Business_class_Airplane_Flights] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Airplane_Flights] ([Id])
GO
ALTER TABLE [dbo].[Business_class] CHECK CONSTRAINT [FK_Business_class_Airplane_Flights]
GO
ALTER TABLE [dbo].[Economy_class]  WITH CHECK ADD  CONSTRAINT [FK_Economy_class_Airplane_Flights] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Airplane_Flights] ([Id])
GO
ALTER TABLE [dbo].[Economy_class] CHECK CONSTRAINT [FK_Economy_class_Airplane_Flights]
GO
ALTER TABLE [dbo].[Passengers]  WITH CHECK ADD  CONSTRAINT [FK_Passengers_Tickets] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Tickets] ([Id])
GO
ALTER TABLE [dbo].[Passengers] CHECK CONSTRAINT [FK_Passengers_Tickets]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Airplane_Flights] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Airplane_Flights] ([Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Airplane_Flights]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Business_class] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Business_class] ([Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Business_class]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Economy_class] FOREIGN KEY([EconomyId])
REFERENCES [dbo].[Economy_class] ([Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Economy_class]
GO
ALTER TABLE [dbo].[Airplane_Flights]  WITH CHECK ADD  CONSTRAINT [Date] CHECK  (([Date]>='2023-06-30'))
GO
ALTER TABLE [dbo].[Airplane_Flights] CHECK CONSTRAINT [Date]
GO
ALTER TABLE [dbo].[Business_class]  WITH CHECK ADD  CONSTRAINT [AvailableSeats] CHECK  (([AvailableSeats]>=(0)))
GO
ALTER TABLE [dbo].[Business_class] CHECK CONSTRAINT [AvailableSeats]
GO
ALTER TABLE [dbo].[Economy_class]  WITH CHECK ADD  CONSTRAINT [AvailableSeats_1] CHECK  (([AvailableSeats]>=(0)))
GO
ALTER TABLE [dbo].[Economy_class] CHECK CONSTRAINT [AvailableSeats_1]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [Price] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [Price]
GO
USE [master]
GO
ALTER DATABASE [Airport_Shalabai] SET  READ_WRITE 
GO
