USE [master]
GO
/****** Object:  Database [LaunchManagementSyatem]    Script Date: 7/28/2019 10:58:58 AM ******/
CREATE DATABASE [LaunchManagementSyatem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaunchManagementSyatem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LaunchManagementSyatem.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LaunchManagementSyatem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LaunchManagementSyatem_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LaunchManagementSyatem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LaunchManagementSyatem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LaunchManagementSyatem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET ARITHABORT OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LaunchManagementSyatem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LaunchManagementSyatem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LaunchManagementSyatem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LaunchManagementSyatem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LaunchManagementSyatem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LaunchManagementSyatem] SET  MULTI_USER 
GO
ALTER DATABASE [LaunchManagementSyatem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LaunchManagementSyatem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LaunchManagementSyatem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LaunchManagementSyatem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LaunchManagementSyatem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LaunchManagementSyatem]
GO
/****** Object:  Table [dbo].[Canteen]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Canteen](
	[Food_item] [varchar](50) NOT NULL,
	[Food_price] [int] NULL,
	[Friuts_item] [varchar](50) NOT NULL,
	[Friuts_price] [int] NULL,
 CONSTRAINT [pk_Food_item_Friuts_item] PRIMARY KEY CLUSTERED 
(
	[Food_item] ASC,
	[Friuts_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Launch]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Launch](
	[Launch_Name] [varchar](50) NULL,
	[Launch_id] [int] NOT NULL,
	[Desnination] [varchar](50) NULL,
 CONSTRAINT [pk_Launch_id] PRIMARY KEY CLUSTERED 
(
	[Launch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passenger](
	[Launch_Name] [varchar](50) NULL,
	[Launch_id] [int] NULL,
	[Pass_name] [varchar](50) NULL,
	[Pass_id] [int] NOT NULL,
 CONSTRAINT [pk_Pass_id] PRIMARY KEY CLUSTERED 
(
	[Pass_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Passenger_Information]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passenger_Information](
	[Pass_id] [int] NULL,
	[Pass_Phn_No] [bigint] NOT NULL,
	[pass_mail] [varchar](50) NULL,
 CONSTRAINT [pk_Pass_Phn_No] PRIMARY KEY CLUSTERED 
(
	[Pass_Phn_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PassengerBuyFood]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PassengerBuyFood](
	[Food_item] [varchar](50) NULL,
	[Friuts_item] [varchar](50) NULL,
	[Pass_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_Name] [varchar](50) NULL,
	[Staff_id] [int] NOT NULL,
	[Launch_id] [int] NULL,
 CONSTRAINT [pk_staff_id] PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Information]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Information](
	[Staff_Name] [varchar](50) NULL,
	[Staff_id] [int] NULL,
	[Staff_phn_no] [bigint] NOT NULL,
	[Staff_address] [varchar](100) NULL,
 CONSTRAINT [pk_staff_Phn_No] PRIMARY KEY CLUSTERED 
(
	[Staff_phn_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Salary]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Salary](
	[Staff_id] [int] NULL,
	[Staff_age] [int] NULL,
	[Stff_salary] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticket_Management]    Script Date: 7/28/2019 10:58:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket_Management](
	[Pass_Phn_No] [bigint] NULL,
	[Ticket_Price] [int] NULL,
	[Ticket_type] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Alu Vorta', 10, N'Graps', 400)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Beef', 120, N'Pomelo', 55)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Beef Kala Bhuna', 100, N'Apple', 160)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Burger', 150, N'Blackbarry', 100)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Chicken', 80, N'Hog-plums', 30)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Chicken Fry', 400, N'Orange', 200)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Dal', 10, N'Sweet gum', 320)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Hissha', 150, N'Lichi', 10)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Kake', 200, N'Mango', 20)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Rice', 20, N'Banaba', 5)
INSERT [dbo].[Canteen] ([Food_item], [Food_price], [Friuts_item], [Friuts_price]) VALUES (N'Sweet', 250, N'Pin_apple', 110)
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 1, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 2, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 3, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 4, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 5, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 6, N'dhaka to hatia')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 7, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 8, N'dhaka to potuakhali')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 9, N'dhaka to amtoli')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 10, N'dhaka to vandariya')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 11, N'dhaka to hularhat')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 12, N'dhaka to dhaka to monpua')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 13, N'dhaka to chorfason')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 14, N'dhaka to chandpur')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Parabat', 15, N'dhaka to borguna')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 16, N'dhaka to potuakhali')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 17, N'dhaka to potuakhali')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 18, N'dhaka to muladi')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 19, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 20, N'dhaka to goserhat')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 21, N'dhaka to goserhat')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 22, N'dhaka to potuakhali')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 23, N'dhaka to borguna')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 24, N'dhaka to boga')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Farhan', 25, N'dhaka to boga')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 26, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 27, N'dhaka to barishal')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 28, N'dhaka to katpotti')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 29, N'dhaka to motlob')
INSERT [dbo].[Launch] ([Launch_Name], [Launch_id], [Desnination]) VALUES (N'Glory of srinagar', 30, N'dhaka to chandpur')
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 1, N'alve', 100)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 2, N'maruf', 101)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabatn', 3, N'mamun', 102)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 4, N'mithu', 103)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 5, N'limon', 104)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 6, N'robin', 105)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 7, N'shawon', 106)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 8, N'sohad', 107)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 9, N'sohan', 108)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 10, N'pulok', 109)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 11, N'tuhin', 110)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 12, N'nirob', 111)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 13, N'rifat', 112)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 14, N'ratul', 113)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Parabat', 15, N'mokless', 114)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 16, N'masum', 115)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 17, N'robin', 116)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 18, N'pulok', 117)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 19, N'kutti', 118)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 20, N'faltu', 119)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Sahruk', 21, N'jotto', 120)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 22, N'sob', 121)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 23, N'amin', 122)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 24, N'jamin', 123)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Farhan', 25, N'shamim', 124)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 26, N'koli', 125)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 27, N'shahin', 126)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 28, N'firoj', 127)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 29, N'suruj', 128)
INSERT [dbo].[Passenger] ([Launch_Name], [Launch_id], [Pass_name], [Pass_id]) VALUES (N'Glory of srinagar', 30, N'nirob', 129)
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (121, 1620, N'sob@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (114, 1621, N'mokless@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (115, 1622, N'masum@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (116, 1623, N'robin@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (117, 1624, N'pulok@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (122, 1626, N'amin@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (119, 1627, N'faltu@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (118, 1628, N'kutti@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (120, 1629, N'jotto@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (105, 1721, N'robin@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (100, 1725, N'alve@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (101, 1726, N'maruf@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (102, 1727, N'mamun@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (103, 1728, N'mithu@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (104, 1729, N'limon@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (123, 1821, N'jamin@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (124, 1822, N'shamim@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (125, 1823, N'koli@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (126, 1824, N'shahin@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (127, 1826, N'firoj@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (128, 1828, N'suruj@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (129, 1829, N'nirob@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (112, 1920, N'rifat@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (113, 1921, N'ratul@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (107, 1923, N'sohad@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (106, 1925, N'shawon@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (108, 1926, N'sohan@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (109, 1927, N'pulok@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (110, 1928, N'tuhin@gmail.com')
INSERT [dbo].[Passenger_Information] ([Pass_id], [Pass_Phn_No], [pass_mail]) VALUES (111, 1929, N'nirob@gmail.com')
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Beef', N'0', 1)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Rice', N'Mango', 3)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Dal + Rice', N'Grap', 5)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Alu Vorta + Rice', N'Pin_Apple', 7)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Burger', N'Orange', 10)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Sweet', N'Sweet gum', 2)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Alu Vorta + Rice', N'Pin_Apple', 11)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Alu Vorta', N'Orange', 12)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Rice + Beef', N'Pin_Apple', 13)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Cake', N'Lichi', 15)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Cake', N'Mango', 17)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Sweet', N'Lichi', 19)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Cake', N'Lichi', 22)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Dal + Rice', N'Banana', 25)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Cake', N'Lichi', 26)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Rice + Hissha', N'Sweet gum', 29)
INSERT [dbo].[PassengerBuyFood] ([Food_item], [Friuts_item], [Pass_id]) VALUES (N'Cake', N'Lichi', 30)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Khasfia', 1, 1)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Soron', 2, 2)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Ritu', 3, 3)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Mishon', 4, 4)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Fahad', 5, 5)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Faysal', 6, 6)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Anik', 7, 7)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Reshad', 8, 8)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Jubaer', 9, 9)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Hasnat', 10, 10)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Maruf', 11, 11)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Sabbin', 12, 12)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Anika', 13, 13)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Nayem', 14, 14)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Rafat', 15, 15)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Shishir', 16, 16)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Iram', 17, 17)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Habib', 18, 18)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Kader', 19, 19)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Fahmid', 20, 20)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Era', 21, 21)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Jihad', 22, 22)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Shakil', 23, 23)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Siraji', 24, 24)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Sohag', 25, 25)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Jashed', 26, 26)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Harun', 27, 27)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Arman', 28, 28)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Aziz', 29, 29)
INSERT [dbo].[Staff] ([Staff_Name], [Staff_id], [Launch_id]) VALUES (N'Mubin', 30, 30)
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Soron', 2, 172346781, N'sirajgonj')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Hasnat', 10, 182345678, N'rajshahi')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Kader', 19, 192345678, N'gulisthan')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Sohag', 25, 1612345678, N'demra')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Jashed', 26, 1623456781, N'chittagong')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Harun', 27, 1634567812, N'gazipur')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Arman', 28, 1645678123, N'narayongonj')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Aziz', 29, 1656781234, N'khulna')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Mubin', 30, 1667812345, N'cumilla')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Khasfia', 1, 1712345678, N'sandip')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Ritu', 3, 1734567812, N'chuadanga')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Mishon', 4, 1745678123, N'cox-bazar')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Fahad', 5, 1756781234, N'mirpur')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Faysal', 6, 1767812345, N'uttara')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Anik', 7, 1778123456, N'dhanmondi')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Reshad', 8, 1781234567, N'jossor')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Jubaer', 9, 1812345678, N'kolabagan')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Iram', 17, 1812834765, N'barishal')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Maruf', 11, 1834567812, N'bogra')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Sabbin', 12, 1845678123, N'jigatola')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Anika', 13, 1856781234, N'teknaf')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Nayem', 14, 1867812345, N'munshiganj')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Rafat', 15, 1878123456, N'tangail')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Shishir', 16, 1881234567, N'chapai')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Habib', 18, 1912345678, N'noakhali')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Fahmid', 20, 1934567812, N'dinajpur')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Era', 21, 1945678123, N'golachipa')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Jihad', 22, 1956781234, N'farmgate')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Shakil', 23, 1967812345, N'tatuliaa')
INSERT [dbo].[Staff_Information] ([Staff_Name], [Staff_id], [Staff_phn_no], [Staff_address]) VALUES (N'Siraji', 24, 1978123456, N'keranigonj')
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (1, 20, CAST(8000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (2, 21, CAST(11000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (3, 22, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (4, 23, CAST(9000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (5, 24, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (6, 25, CAST(8000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (7, 26, CAST(11000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (8, 27, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (9, 28, CAST(9000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (10, 29, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (11, 30, CAST(15000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (12, 22, CAST(6000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (13, 23, CAST(9000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (14, 24, CAST(6000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (15, 25, CAST(18000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (16, 26, CAST(8000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (17, 27, CAST(11000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (18, 28, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (19, 29, CAST(9000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (20, 25, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (21, 26, CAST(16000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (22, 27, CAST(6000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (23, 28, CAST(9000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (24, 29, CAST(6000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (25, 30, CAST(18000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (26, 22, CAST(8000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (27, 23, CAST(11000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (28, 24, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (29, 25, CAST(9000.000 AS Numeric(10, 3)))
INSERT [dbo].[Staff_Salary] ([Staff_id], [Staff_age], [Stff_salary]) VALUES (30, 18, CAST(13000.000 AS Numeric(10, 3)))
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1725, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1726, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1727, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1728, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1729, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1721, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1925, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1923, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1926, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1927, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1928, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1929, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1920, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1921, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1621, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1622, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1623, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1624, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1628, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1627, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1629, 1000, N'cabin')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1620, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1626, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1821, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1822, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1823, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1824, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1826, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1828, 300, N'deck')
INSERT [dbo].[Ticket_Management] ([Pass_Phn_No], [Ticket_Price], [Ticket_type]) VALUES (1829, 1000, N'cabin')
ALTER TABLE [dbo].[Passenger_Information]  WITH CHECK ADD  CONSTRAINT [fk_Pass_id] FOREIGN KEY([Pass_id])
REFERENCES [dbo].[Passenger] ([Pass_id])
GO
ALTER TABLE [dbo].[Passenger_Information] CHECK CONSTRAINT [fk_Pass_id]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [fk_Launch_id] FOREIGN KEY([Launch_id])
REFERENCES [dbo].[Launch] ([Launch_id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [fk_Launch_id]
GO
ALTER TABLE [dbo].[Staff_Information]  WITH CHECK ADD  CONSTRAINT [fk_Staff_id] FOREIGN KEY([Staff_id])
REFERENCES [dbo].[Staff] ([Staff_id])
GO
ALTER TABLE [dbo].[Staff_Information] CHECK CONSTRAINT [fk_Staff_id]
GO
ALTER TABLE [dbo].[Ticket_Management]  WITH CHECK ADD  CONSTRAINT [fk_Pass_Phn_No] FOREIGN KEY([Pass_Phn_No])
REFERENCES [dbo].[Passenger_Information] ([Pass_Phn_No])
GO
ALTER TABLE [dbo].[Ticket_Management] CHECK CONSTRAINT [fk_Pass_Phn_No]
GO
USE [master]
GO
ALTER DATABASE [LaunchManagementSyatem] SET  READ_WRITE 
GO
