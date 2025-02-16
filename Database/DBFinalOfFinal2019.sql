USE [master]
GO
/****** Object:  Database [Final_Project_3]    Script Date: 7/29/2020 12:21:19 AM ******/
CREATE DATABASE [Final_Project_3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Final_Project_3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Final_Project_3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Final_Project_3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Final_Project_3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Final_Project_3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Final_Project_3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Final_Project_3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Final_Project_3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Final_Project_3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Final_Project_3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Final_Project_3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Final_Project_3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Final_Project_3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Final_Project_3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Final_Project_3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Final_Project_3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Final_Project_3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Final_Project_3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Final_Project_3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Final_Project_3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Final_Project_3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Final_Project_3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Final_Project_3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Final_Project_3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Final_Project_3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Final_Project_3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Final_Project_3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Final_Project_3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Final_Project_3] SET RECOVERY FULL 
GO
ALTER DATABASE [Final_Project_3] SET  MULTI_USER 
GO
ALTER DATABASE [Final_Project_3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Final_Project_3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Final_Project_3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Final_Project_3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Final_Project_3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Final_Project_3', N'ON'
GO
ALTER DATABASE [Final_Project_3] SET QUERY_STORE = OFF
GO
USE [Final_Project_3]
GO
/****** Object:  Table [dbo].[dbo_Admin]    Script Date: 7/29/2020 12:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo_Admin](
	[Admin_ID] [nvarchar](10) NOT NULL,
	[Admin_Name] [nvarchar](50) NULL,
	[Admin_Pass] [nvarchar](10) NULL,
 CONSTRAINT [PK__dbo_Admi__4A3001174C17A6FE] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo_Car]    Script Date: 7/29/2020 12:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo_Car](
	[Car_ID] [nvarchar](10) NOT NULL,
	[Car_Name] [nvarchar](50) NULL,
	[Car_Status] [nvarchar](20) NULL,
	[Car_Color] [nvarchar](10) NULL,
	[City] [nvarchar](10) NULL,
	[Car_Version] [nvarchar](10) NULL,
	[Car_Series] [nvarchar](10) NULL,
	[Car_YearOfProduction] [int] NULL,
	[Car_Type] [nvarchar](10) NULL,
	[Car_Origin] [nvarchar](10) NULL,
	[Car_Price] [float] NULL,
	[Pro_ID] [nvarchar](10) NULL,
	[Admin_ID] [nvarchar](10) NULL,
	[Cust_ID] [nvarchar](10) NULL,
 CONSTRAINT [PK__dbo_Car__523653D9D36C88EC] PRIMARY KEY CLUSTERED 
(
	[Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo_Customer]    Script Date: 7/29/2020 12:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo_Customer](
	[Cust_ID] [nvarchar](10) NOT NULL,
	[Cust_Pass] [nvarchar](10) NULL,
	[Cust_Gender] [bit] NULL,
	[Cust_YearOfBith] [nvarchar](4) NULL,
	[Cust_Email] [nvarchar](30) NULL,
	[Cust_Address] [nvarchar](50) NULL,
	[Cust_Phone] [nvarchar](10) NULL,
	[Admin_ID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cust_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo_Producer]    Script Date: 7/29/2020 12:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo_Producer](
	[Pro_ID] [nvarchar](10) NOT NULL,
	[Pro_Name] [nvarchar](50) NULL,
	[Admin_ID] [nvarchar](10) NULL,
 CONSTRAINT [PK__dbo_Prod__04BA0DF5222C7095] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo_RegisterCar]    Script Date: 7/29/2020 12:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo_RegisterCar](
	[ReCarID] [int] IDENTITY(1,1) NOT NULL,
	[ReCarName] [nvarchar](50) NULL,
	[ReCarStatus] [nvarchar](10) NULL,
	[ReCarColor] [nvarchar](10) NULL,
	[ReCarCity] [nvarchar](30) NULL,
	[ReCarVersion] [nvarchar](10) NULL,
	[ReCarSeries] [nvarchar](10) NULL,
	[ReCarYob] [int] NULL,
	[ReCarType] [nvarchar](10) NULL,
	[ReCarOrigin] [nvarchar](30) NULL,
	[ReCarPrice] [float] NULL,
	[Pro_ID] [nvarchar](10) NULL,
	[Cust_ID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReCarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo_Tech]    Script Date: 7/29/2020 12:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo_Tech](
	[Tech_ID] [int] IDENTITY(1,1) NOT NULL,
	[Doors] [int] NULL,
	[Chairs] [int] NULL,
	[Engine] [int] NULL,
	[Cylinder_Capacity] [int] NULL,
	[Fuel_Tank_Capacity] [int] NULL,
	[Car_Lead] [nvarchar](10) NULL,
	[Fuel] [nvarchar](10) NULL,
	[Fuel_Filling_System] [nvarchar](10) NULL,
	[Consumption] [int] NULL,
	[Car_ID] [nvarchar](10) NULL,
 CONSTRAINT [PK__dbo_Tech__F908CC23D91C615C] PRIMARY KEY CLUSTERED 
(
	[Tech_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[dbo_Admin] ([Admin_ID], [Admin_Name], [Admin_Pass]) VALUES (N'A01', N'Thang', N'123')
INSERT [dbo].[dbo_Admin] ([Admin_ID], [Admin_Name], [Admin_Pass]) VALUES (N'A02', N'Minh', N'123')
INSERT [dbo].[dbo_Admin] ([Admin_ID], [Admin_Name], [Admin_Pass]) VALUES (N'A03', N'Quang', N'123')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C01', N'Honda ANCORD', N'New', N'Black', N'HCM', N'Limited', N'ACCORD', 2017, N'SUV', N'Viet Nam', 48000, N'P01', N'A01', N'quang')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C02', N'FORD ESCAPE', N'OLD', N'WHITE', N'HCM', N'2.3', N'ESCAPE', 2020, N'SEDAN', N'CHINA', 57346, N'P02', N'A02', N'minh')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C03', N'TOYOTA VIOS', N'NEW', N'WHITE', N'HA NOI', N'1.5 E CVT', N'VIOS', 2020, N'SEDAN', N'CHINA', 25346, N'P03', N'A03', N'thang')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C04', N' Lamborghini Sian', N'NEW', N'WHITE', N'HCM', N'V12', N'SIAN', 2020, N'SPORTS', N'Italy', 360000, N'P05', N'A02', N'quang')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C05', N'Honda Accord AX ', N'OLD', N'WHITE', N'HA NOI', N'AX', N'ACCORD', 2019, N'SUV', N'JAPAN', 57400, N'P01', N'A01', N'minh')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C06', N'HONGQI E-JING GT', N'OLD', N'EMERALD', N'DA NANG', N'E-JING', N'GT', 2018, N'COUPE', N'HONGKONG', 111000, N'P06', N'A03', N'thang')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C07', N'HONDA EVERUS EV CONCEPT', N'NEW', N'RED', N'HA NOI', N'HR-V', N'VE-1', 2019, N'COUPE', N'JAPAN', 170800, N'P01', N'A01', N'quang')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C08', N'Lamborghini S Roadster', N'NEW', N'BLUE', N'PHAN THIET', N'S ', N'AVENTATOR', 2019, N'SPORTS', N'ITALY', 146700, N'P05', N'A02', N'minh')
INSERT [dbo].[dbo_Car] ([Car_ID], [Car_Name], [Car_Status], [Car_Color], [City], [Car_Version], [Car_Series], [Car_YearOfProduction], [Car_Type], [Car_Origin], [Car_Price], [Pro_ID], [Admin_ID], [Cust_ID]) VALUES (N'C09', N'FERRARI PORTOFINO', N'OLD', N'WHITE', N'HCM', N'V8', N'PORTOFINO', 2019, N'CABRIOLET', N'ITALY', 215000, N'P04', N'A03', N'thang')
INSERT [dbo].[dbo_Customer] ([Cust_ID], [Cust_Pass], [Cust_Gender], [Cust_YearOfBith], [Cust_Email], [Cust_Address], [Cust_Phone], [Admin_ID]) VALUES (N'minh', N'123', 1, N'1997', N'minh123@gmail.com', N'quan 12', N'0123789456', N'A02')
INSERT [dbo].[dbo_Customer] ([Cust_ID], [Cust_Pass], [Cust_Gender], [Cust_YearOfBith], [Cust_Email], [Cust_Address], [Cust_Phone], [Admin_ID]) VALUES (N'quang', N'123', 0, N'1999', N'quang123@gmail.com', N'quan 7', N'0943975647', N'A01')
INSERT [dbo].[dbo_Customer] ([Cust_ID], [Cust_Pass], [Cust_Gender], [Cust_YearOfBith], [Cust_Email], [Cust_Address], [Cust_Phone], [Admin_ID]) VALUES (N'thang', N'123', 0, N'1999', N'thang123@gmail.com', N'quan 5', N'0123789456', N'A03')
INSERT [dbo].[dbo_Producer] ([Pro_ID], [Pro_Name], [Admin_ID]) VALUES (N'P01', N'Honda', N'A01')
INSERT [dbo].[dbo_Producer] ([Pro_ID], [Pro_Name], [Admin_ID]) VALUES (N'P02', N'FORD', N'A02')
INSERT [dbo].[dbo_Producer] ([Pro_ID], [Pro_Name], [Admin_ID]) VALUES (N'P03', N'TOYOTA', N'A03')
INSERT [dbo].[dbo_Producer] ([Pro_ID], [Pro_Name], [Admin_ID]) VALUES (N'P04', N'FERRARI', N'A01')
INSERT [dbo].[dbo_Producer] ([Pro_ID], [Pro_Name], [Admin_ID]) VALUES (N'P05', N'LAMBORGHINI', N'A02')
INSERT [dbo].[dbo_Producer] ([Pro_ID], [Pro_Name], [Admin_ID]) VALUES (N'P06', N'HONGQI ', N'A03')
SET IDENTITY_INSERT [dbo].[dbo_Tech] ON 

INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (1, 4, 5, 3, 3000, 80, N'H-Track', N'Gas', N'
Electric', 70, N'C01')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (2, 4, 5, 2, 2261, 90, N'4WD', N'Gas', N'
Electric', 45, N'C02')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (3, 4, 5, 1, 1496, 45, N'H-Track', N'Gas', N'
Electric', 55, N'C03')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (4, 2, 2, 7, 6498, 100, N'V12 6.5', N'GAS', N'
Electric', 42, N'C04')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (5, 4, 5, 3, 1499, 55, N'H-Track', N'GAS', N'
Electric', 61, N'C05')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (6, 2, 2, 5, 7453, 94, N'T2 7.1', N'GAS', N'
Electric', 50, N'C06')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (7, 2, 2, 6, 8500, 76, N'V12.3', N'gas', N'
Electric', 39, N'C07')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (8, 2, 2, 4, 6548, 88, N'V12', N'GAS', N'
Electric', 43, N'C08')
INSERT [dbo].[dbo_Tech] ([Tech_ID], [Doors], [Chairs], [Engine], [Cylinder_Capacity], [Fuel_Tank_Capacity], [Car_Lead], [Fuel], [Fuel_Filling_System], [Consumption], [Car_ID]) VALUES (9, 2, 2, 4, 3458, 84, N'H-Track', N'GAS', N'
Electric', 65, N'C09')
SET IDENTITY_INSERT [dbo].[dbo_Tech] OFF
ALTER TABLE [dbo].[dbo_Car]  WITH CHECK ADD  CONSTRAINT [FK__dbo_Car__Admin_I__2F10007B] FOREIGN KEY([Admin_ID])
REFERENCES [dbo].[dbo_Admin] ([Admin_ID])
GO
ALTER TABLE [dbo].[dbo_Car] CHECK CONSTRAINT [FK__dbo_Car__Admin_I__2F10007B]
GO
ALTER TABLE [dbo].[dbo_Car]  WITH CHECK ADD FOREIGN KEY([Cust_ID])
REFERENCES [dbo].[dbo_Customer] ([Cust_ID])
GO
ALTER TABLE [dbo].[dbo_Car]  WITH CHECK ADD  CONSTRAINT [FK__dbo_Car__Pro_ID__49C3F6B7] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[dbo_Producer] ([Pro_ID])
GO
ALTER TABLE [dbo].[dbo_Car] CHECK CONSTRAINT [FK__dbo_Car__Pro_ID__49C3F6B7]
GO
ALTER TABLE [dbo].[dbo_Customer]  WITH CHECK ADD  CONSTRAINT [FK__dbo_Custo__Admin__52593CB8] FOREIGN KEY([Admin_ID])
REFERENCES [dbo].[dbo_Admin] ([Admin_ID])
GO
ALTER TABLE [dbo].[dbo_Customer] CHECK CONSTRAINT [FK__dbo_Custo__Admin__52593CB8]
GO
ALTER TABLE [dbo].[dbo_Producer]  WITH CHECK ADD  CONSTRAINT [FK__dbo_Produ__Admin__29572725] FOREIGN KEY([Admin_ID])
REFERENCES [dbo].[dbo_Admin] ([Admin_ID])
GO
ALTER TABLE [dbo].[dbo_Producer] CHECK CONSTRAINT [FK__dbo_Produ__Admin__29572725]
GO
ALTER TABLE [dbo].[dbo_RegisterCar]  WITH CHECK ADD FOREIGN KEY([Cust_ID])
REFERENCES [dbo].[dbo_Customer] ([Cust_ID])
GO
ALTER TABLE [dbo].[dbo_RegisterCar]  WITH CHECK ADD  CONSTRAINT [FK__dbo_Regis__Pro_I__6A30C649] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[dbo_Producer] ([Pro_ID])
GO
ALTER TABLE [dbo].[dbo_RegisterCar] CHECK CONSTRAINT [FK__dbo_Regis__Pro_I__6A30C649]
GO
ALTER TABLE [dbo].[dbo_Tech]  WITH CHECK ADD  CONSTRAINT [FK__dbo_Tech__Car_ID__31EC6D26] FOREIGN KEY([Car_ID])
REFERENCES [dbo].[dbo_Car] ([Car_ID])
GO
ALTER TABLE [dbo].[dbo_Tech] CHECK CONSTRAINT [FK__dbo_Tech__Car_ID__31EC6D26]
GO
USE [master]
GO
ALTER DATABASE [Final_Project_3] SET  READ_WRITE 
GO
