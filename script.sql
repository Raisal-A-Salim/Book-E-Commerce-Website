USE [master]
GO
/****** Object:  Database [shoppingsite]    Script Date: 04-12-2025 07:47:51 PM ******/
CREATE DATABASE [shoppingsite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shoppingsite', FILENAME = N'E:\C\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\shoppingsite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shoppingsite_log', FILENAME = N'E:\C\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\shoppingsite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [shoppingsite] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shoppingsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shoppingsite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shoppingsite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shoppingsite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shoppingsite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shoppingsite] SET ARITHABORT OFF 
GO
ALTER DATABASE [shoppingsite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shoppingsite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shoppingsite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shoppingsite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shoppingsite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shoppingsite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shoppingsite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shoppingsite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shoppingsite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shoppingsite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shoppingsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shoppingsite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shoppingsite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shoppingsite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shoppingsite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shoppingsite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shoppingsite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shoppingsite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shoppingsite] SET  MULTI_USER 
GO
ALTER DATABASE [shoppingsite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shoppingsite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shoppingsite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shoppingsite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shoppingsite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [shoppingsite] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [shoppingsite] SET QUERY_STORE = ON
GO
ALTER DATABASE [shoppingsite] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [shoppingsite]
GO
/****** Object:  Table [dbo].[Admin_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Table](
	[Admin_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
 CONSTRAINT [PK_Admin_Table] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills_Table](
	[Bill_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Grand_Total] [bigint] NOT NULL,
	[Bill_Date] [date] NOT NULL,
 CONSTRAINT [PK_Bills_Table] PRIMARY KEY CLUSTERED 
(
	[Bill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Table](
	[Cart_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Pdt_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Subtotal] [bigint] NOT NULL,
	[Cart_Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cart_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Table](
	[Cato_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cato_Name] [varchar](50) NOT NULL,
	[Cato_Image] [nvarchar](100) NOT NULL,
	[Cato_Description] [nvarchar](100) NOT NULL,
	[Cato_Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cato_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District_Table](
	[District_ID] [int] IDENTITY(1,1) NOT NULL,
	[State_ID] [int] NULL,
	[District_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[District_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Table](
	[Login_ID] [int] IDENTITY(1,1) NOT NULL,
	[Reg_ID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Login_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Login_Table] PRIMARY KEY CLUSTERED 
(
	[Login_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Table](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Pdt_ID] [int] NOT NULL,
	[Order_Date] [date] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Order_Status] [varchar](50) NOT NULL,
	[Subtotal] [bigint] NOT NULL,
 CONSTRAINT [PK_Order_Table] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Table](
	[Pdt_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cato_ID] [int] NOT NULL,
	[Pdt_Name] [varchar](50) NOT NULL,
	[Pdt_Image] [nvarchar](100) NOT NULL,
	[Pdt_Description] [nvarchar](100) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Stock] [int] NOT NULL,
	[Pdt_Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pdt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_Table](
	[State_ID] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Table]    Script Date: 04-12-2025 07:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Table](
	[User_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[State_ID] [int] NOT NULL,
	[District_ID] [int] NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Pincode] [bigint] NULL,
	[User_Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Table] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin_Table] ([Admin_ID], [Name], [Email], [Phone]) VALUES (1, N'Raisal Salim', N'raisal@gmail.com', 9656863305)
GO
SET IDENTITY_INSERT [dbo].[Cart_Table] ON 
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (6, 3, 21, 5, 1400, 1)
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (7, 3, 20, 3, 1050, 1)
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (8, 3, 29, 9, 3500, 1)
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (10, 2, 10, 3, 750, 1)
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (11, 2, 16, 4, 1600, 1)
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (12, 2, 23, 3, 900, 1)
GO
INSERT [dbo].[Cart_Table] ([Cart_ID], [User_ID], [Pdt_ID], [Quantity], [Subtotal], [Cart_Status]) VALUES (13, 2, 8, 11, 3850, 1)
GO
SET IDENTITY_INSERT [dbo].[Cart_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Category_Table] ON 
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (1, N'Fiction', N'~/Img/fiction.jpg', N'Books that contain imaginative narration, including novels and short stories.', N'Inactive')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (2, N'Non-Fiction', N'~/Img/nonfiction.jpg', N'Books based on facts, real events, and real people.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (3, N'Science Fiction', N'~/Img/scifi.jpg', N'Books that explore futuristic concepts, space exploration, and advanced technology.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (4, N'Biography', N'~/Img/biography.jpg', N'Books describing the life of a real person.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (5, N'Self-Help', N'~/Img/selfhelp.jpg', N'Books designed to guide and inspire personal improvement.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (6, N'History', N'~/Img/history.jpg', N'Books covering historical events, periods, and analysis.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (7, N'Mystery', N'~/Img/mystery.jpg', N'Books involving suspense, crime solving, or secret plots.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (8, N'Fantasy', N'~/Img/fantasy.jpg', N'Books involving magical or supernatural elements.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (9, N'Poetry', N'~/Img/poetry.jpg', N'Books containing poems, verse, and lyrical expression.', N'Active')
GO
INSERT [dbo].[Category_Table] ([Cato_ID], [Cato_Name], [Cato_Image], [Cato_Description], [Cato_Status]) VALUES (10, N'Education', N'~/Img/education.jpg', N'Books that provide academic learning and study material.', N'Active')
GO
SET IDENTITY_INSERT [dbo].[Category_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[District_Table] ON 
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (1, 1, N'Anantapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (2, 1, N'Chittoor')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (3, 1, N'East Godavari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (4, 1, N'Guntur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (5, 1, N'Krishna')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (6, 1, N'Kurnool')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (7, 1, N'Nellore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (8, 1, N'Prakasam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (9, 1, N'Srikakulam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (10, 1, N'Visakhapatnam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (11, 1, N'Vizianagaram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (12, 1, N'West Godavari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (13, 1, N'YSR Kadapa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (14, 2, N'Tawang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (15, 2, N'West Kameng')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (16, 2, N'East Kameng')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (17, 2, N'Papum Pare')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (18, 2, N'Kurung Kumey')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (19, 2, N'Kra Daadi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (20, 2, N'Lower Subansiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (21, 2, N'Upper Subansiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (22, 2, N'West Siang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (23, 2, N'East Siang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (24, 2, N'Upper Siang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (25, 2, N'Lower Siang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (26, 2, N'Lower Dibang Valley')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (27, 2, N'Dibang Valley')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (28, 2, N'Anjaw')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (29, 2, N'Lohit')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (30, 2, N'Namsai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (31, 2, N'Changlang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (32, 2, N'Tirap')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (33, 2, N'Longding')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (34, 3, N'Baksa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (35, 3, N'Barpeta')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (36, 3, N'Biswanath')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (37, 3, N'Bongaigaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (38, 3, N'Cachar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (39, 3, N'Charaideo')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (40, 3, N'Chirang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (41, 3, N'Darrang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (42, 3, N'Dhemaji')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (43, 3, N'Dhubri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (44, 3, N'Dibrugarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (45, 3, N'Goalpara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (46, 3, N'Golaghat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (47, 3, N'Hailakandi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (48, 3, N'Hojai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (49, 3, N'Jorhat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (50, 3, N'Kamrup')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (51, 3, N'Kamrup Metropolitan')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (52, 3, N'Karbi Anglong')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (53, 3, N'Karimganj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (54, 3, N'Kokrajhar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (55, 3, N'Lakhimpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (56, 3, N'Majuli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (57, 3, N'Morigaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (58, 3, N'Nagaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (59, 3, N'Nalbari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (60, 3, N'Sivasagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (61, 3, N'Sonitpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (62, 3, N'South Salmara-Mankachar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (63, 3, N'Tinsukia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (64, 3, N'Udalguri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (65, 3, N'West Karbi Anglong')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (66, 4, N'Araria')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (67, 4, N'Arwal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (68, 4, N'Aurangabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (69, 4, N'Banka')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (70, 4, N'Begusarai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (71, 4, N'Bhagalpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (72, 4, N'Bhojpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (73, 4, N'Buxar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (74, 4, N'Darbhanga')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (75, 4, N'East Champaran')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (76, 4, N'Gaya')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (77, 4, N'Gopalganj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (78, 4, N'Jamui')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (79, 4, N'Jehanabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (80, 4, N'Kaimur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (81, 4, N'Katihar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (82, 4, N'Khagaria')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (83, 4, N'Kishanganj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (84, 4, N'Lakhisarai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (85, 4, N'Madhepura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (86, 4, N'Madhubani')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (87, 4, N'Munger')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (88, 4, N'Muzaffarpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (89, 4, N'Nalanda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (90, 4, N'Nawada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (91, 4, N'Patna')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (92, 4, N'Purnia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (93, 4, N'Rohtas')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (94, 4, N'Saharsa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (95, 4, N'Samastipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (96, 4, N'Saran')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (97, 4, N'Sheikhpura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (98, 4, N'Sheohar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (99, 4, N'Sitamarhi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (100, 4, N'Siwan')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (101, 4, N'Supaul')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (102, 4, N'Vaishali')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (103, 4, N'West Champaran')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (104, 5, N'Balod')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (105, 5, N'Baloda Bazar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (106, 5, N'Balrampur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (107, 5, N'Bastar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (108, 5, N'Bemetara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (109, 5, N'Bijapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (110, 5, N'Bilaspur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (111, 5, N'Dantewada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (112, 5, N'Dhamtari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (113, 5, N'Durg')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (114, 5, N'Gariaband')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (115, 5, N'Janjgir-Champa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (116, 5, N'Jashpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (117, 5, N'Kabirdham')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (118, 5, N'Kanker')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (119, 5, N'Kondagaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (120, 5, N'Korba')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (121, 5, N'Koriya')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (122, 5, N'Mahasamund')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (123, 5, N'Mungeli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (124, 5, N'Narayanpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (125, 5, N'Raigarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (126, 5, N'Raipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (127, 5, N'Rajnandgaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (128, 5, N'Sukma')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (129, 5, N'Surajpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (130, 5, N'Surguja')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (131, 6, N'North Goa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (132, 6, N'South Goa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (133, 7, N'Ahmedabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (134, 7, N'Amreli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (135, 7, N'Anand')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (136, 7, N'Aravalli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (137, 7, N'Banaskantha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (138, 7, N'Bharuch')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (139, 7, N'Bhavnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (140, 7, N'Botad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (141, 7, N'Chhota Udaipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (142, 7, N'Dahod')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (143, 7, N'Dang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (144, 7, N'Devbhoomi Dwarka')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (145, 7, N'Gandhinagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (146, 7, N'Gir Somnath')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (147, 7, N'Jamnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (148, 7, N'Junagadh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (149, 7, N'Kheda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (150, 7, N'Kutch')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (151, 7, N'Mahisagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (152, 7, N'Mehsana')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (153, 7, N'Morbi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (154, 7, N'Narmada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (155, 7, N'Navsari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (156, 7, N'Panchmahal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (157, 7, N'Patan')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (158, 7, N'Porbandar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (159, 7, N'Rajkot')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (160, 7, N'Sabarkantha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (161, 7, N'Surat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (162, 7, N'Surendranagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (163, 7, N'Tapi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (164, 7, N'Vadodara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (165, 7, N'Valsad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (166, 8, N'Ambala')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (167, 8, N'Bhiwani')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (168, 8, N'Charkhi Dadri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (169, 8, N'Faridabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (170, 8, N'Fatehabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (171, 8, N'Gurugram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (172, 8, N'Hisar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (173, 8, N'Jhajjar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (174, 8, N'Jind')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (175, 8, N'Kaithal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (176, 8, N'Karnal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (177, 8, N'Kurukshetra')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (178, 8, N'Mahendragarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (179, 8, N'Nuh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (180, 8, N'Palwal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (181, 8, N'Panchkula')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (182, 8, N'Panipat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (183, 8, N'Rewari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (184, 8, N'Rohtak')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (185, 8, N'Sirsa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (186, 8, N'Sonipat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (187, 8, N'Yamunanagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (188, 9, N'Bilaspur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (189, 9, N'Chamba')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (190, 9, N'Hamirpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (191, 9, N'Kangra')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (192, 9, N'Kinnaur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (193, 9, N'Kullu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (194, 9, N'Lahaul and Spiti')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (195, 9, N'Mandi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (196, 9, N'Shimla')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (197, 9, N'Sirmaur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (198, 9, N'Solan')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (199, 9, N'Una')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (200, 10, N'Bokaro')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (201, 10, N'Chatra')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (202, 10, N'Deoghar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (203, 10, N'Dhanbad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (204, 10, N'Dumka')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (205, 10, N'East Singhbhum')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (206, 10, N'Garhwa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (207, 10, N'Giridih')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (208, 10, N'Godda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (209, 10, N'Gumla')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (210, 10, N'Hazaribagh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (211, 10, N'Jamtara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (212, 10, N'Khunti')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (213, 10, N'Koderma')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (214, 10, N'Latehar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (215, 10, N'Lohardaga')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (216, 10, N'Pakur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (217, 10, N'Palamu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (218, 10, N'Ramgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (219, 10, N'Ranchi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (220, 10, N'Sahebganj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (221, 10, N'Saraikela Kharsawan')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (222, 10, N'Simdega')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (223, 10, N'West Singhbhum')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (224, 11, N'Bagalkot')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (225, 11, N'Ballari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (226, 11, N'Belagavi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (227, 11, N'Bengaluru Rural')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (228, 11, N'Bengaluru Urban')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (229, 11, N'Bidar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (230, 11, N'Chamarajanagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (231, 11, N'Chikballapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (232, 11, N'Chikkamagaluru')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (233, 11, N'Chitradurga')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (234, 11, N'Dakshina Kannada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (235, 11, N'Davanagere')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (236, 11, N'Dharwad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (237, 11, N'Gadag')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (238, 11, N'Hassan')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (239, 11, N'Haveri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (240, 11, N'Kalaburagi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (241, 11, N'Kodagu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (242, 11, N'Kolar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (243, 11, N'Koppal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (244, 11, N'Mandya')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (245, 11, N'Mysuru')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (246, 11, N'Raichur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (247, 11, N'Ramanagara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (248, 11, N'Shivamogga')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (249, 11, N'Tumakuru')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (250, 11, N'Udupi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (251, 11, N'Uttara Kannada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (252, 11, N'Vijayapura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (253, 11, N'Yadgir')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (254, 12, N'Alappuzha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (255, 12, N'Ernakulam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (256, 12, N'Idukki')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (257, 12, N'Kannur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (258, 12, N'Kasaragod')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (259, 12, N'Kollam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (260, 12, N'Kottayam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (261, 12, N'Kozhikode')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (262, 12, N'Malappuram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (263, 12, N'Palakkad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (264, 12, N'Pathanamthitta')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (265, 12, N'Thiruvananthapuram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (266, 12, N'Thrissur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (267, 12, N'Wayanad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (268, 13, N'Agar Malwa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (269, 13, N'Alirajpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (270, 13, N'Anuppur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (271, 13, N'Ashoknagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (272, 13, N'Balaghat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (273, 13, N'Barwani')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (274, 13, N'Betul')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (275, 13, N'Bhind')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (276, 13, N'Bhopal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (277, 13, N'Burhanpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (278, 13, N'Chhatarpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (279, 13, N'Chhindwara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (280, 13, N'Damoh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (281, 13, N'Datia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (282, 13, N'Dewas')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (283, 13, N'Dhar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (284, 13, N'Dindori')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (285, 13, N'Guna')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (286, 13, N'Gwalior')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (287, 13, N'Harda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (288, 13, N'Hoshangabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (289, 13, N'Indore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (290, 13, N'Jabalpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (291, 13, N'Jhabua')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (292, 13, N'Katni')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (293, 13, N'Khandwa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (294, 13, N'Khargone')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (295, 13, N'Mandla')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (296, 13, N'Mandsaur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (297, 13, N'Morena')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (298, 13, N'Narsinghpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (299, 13, N'Neemuch')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (300, 13, N'Panna')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (301, 13, N'Raisen')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (302, 13, N'Rajgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (303, 13, N'Ratlam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (304, 13, N'Rewa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (305, 13, N'Sagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (306, 13, N'Satna')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (307, 13, N'Sehore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (308, 13, N'Seoni')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (309, 13, N'Shahdol')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (310, 13, N'Shajapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (311, 13, N'Sheopur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (312, 13, N'Shivpuri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (313, 13, N'Sidhi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (314, 13, N'Singrauli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (315, 13, N'Tikamgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (316, 13, N'Ujjain')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (317, 13, N'Umaria')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (318, 13, N'Vidisha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (319, 14, N'Ahmednagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (320, 14, N'Akola')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (321, 14, N'Amravati')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (322, 14, N'Aurangabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (323, 14, N'Beed')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (324, 14, N'Bhandara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (325, 14, N'Buldhana')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (326, 14, N'Chandrapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (327, 14, N'Dhule')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (328, 14, N'Gadchiroli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (329, 14, N'Gondia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (330, 14, N'Hingoli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (331, 14, N'Jalgaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (332, 14, N'Jalna')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (333, 14, N'Kolhapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (334, 14, N'Latur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (335, 14, N'Mumbai City')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (336, 14, N'Mumbai Suburban')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (337, 14, N'Nagpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (338, 14, N'Nanded')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (339, 14, N'Nandurbar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (340, 14, N'Nashik')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (341, 14, N'Osmanabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (342, 14, N'Palghar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (343, 14, N'Parbhani')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (344, 14, N'Pune')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (345, 14, N'Raigad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (346, 14, N'Ratnagiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (347, 14, N'Sangli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (348, 14, N'Satara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (349, 14, N'Sindhudurg')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (350, 14, N'Solapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (351, 14, N'Thane')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (352, 14, N'Wardha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (353, 14, N'Washim')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (354, 14, N'Yavatmal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (355, 15, N'Bishnupur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (356, 15, N'Chandel')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (357, 15, N'Churachandpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (358, 15, N'Imphal East')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (359, 15, N'Imphal West')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (360, 15, N'Jiribam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (361, 15, N'Kakching')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (362, 15, N'Kamjong')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (363, 15, N'Kangpokpi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (364, 15, N'Noney')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (365, 15, N'Pherzawl')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (366, 15, N'Senapati')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (367, 15, N'Tamenglong')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (368, 15, N'Tengnoupal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (369, 15, N'Thoubal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (370, 15, N'Ukhrul')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (371, 16, N'East Garo Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (372, 16, N'East Jaintia Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (373, 16, N'East Khasi Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (374, 16, N'North Garo Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (375, 16, N'Ri Bhoi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (376, 16, N'South Garo Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (377, 16, N'South West Garo Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (378, 16, N'South West Khasi Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (379, 16, N'West Garo Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (380, 16, N'West Jaintia Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (381, 16, N'West Khasi Hills')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (382, 17, N'Aizawl')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (383, 17, N'Champhai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (384, 17, N'Hnahthial')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (385, 17, N'Khawzawl')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (386, 17, N'Kolasib')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (387, 17, N'Lawngtlai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (388, 17, N'Lunglei')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (389, 17, N'Mamit')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (390, 17, N'Saiha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (391, 17, N'Saitual')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (392, 17, N'Serchhip')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (393, 18, N'Chumoukedima')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (394, 18, N'Dimapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (395, 18, N'Kiphire')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (396, 18, N'Kohima')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (397, 18, N'Longleng')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (398, 18, N'Mokokchung')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (399, 18, N'Mon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (400, 18, N'Niuland')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (401, 18, N'Noklak')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (402, 18, N'Peren')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (403, 18, N'Phek')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (404, 18, N'Shamator')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (405, 18, N'Tseminyu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (406, 18, N'Tuensang')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (407, 18, N'Wokha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (408, 18, N'Zunheboto')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (409, 19, N'Angul')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (410, 19, N'Balangir')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (411, 19, N'Balasore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (412, 19, N'Bargarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (413, 19, N'Bhadrak')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (414, 19, N'Boudh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (415, 19, N'Cuttack')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (416, 19, N'Deogarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (417, 19, N'Dhenkanal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (418, 19, N'Gajapati')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (419, 19, N'Ganjam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (420, 19, N'Jagatsinghpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (421, 19, N'Jajpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (422, 19, N'Jharsuguda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (423, 19, N'Kalahandi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (424, 19, N'Kandhamal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (425, 19, N'Kendrapara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (426, 19, N'Kendujhar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (427, 19, N'Khordha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (428, 19, N'Koraput')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (429, 19, N'Malkangiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (430, 19, N'Mayurbhanj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (431, 19, N'Nabarangpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (432, 19, N'Nayagarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (433, 19, N'Nuapada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (434, 19, N'Puri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (435, 19, N'Rayagada')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (436, 19, N'Sambalpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (437, 19, N'Sonepur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (438, 19, N'Sundargarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (439, 20, N'Amritsar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (440, 20, N'Barnala')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (441, 20, N'Bathinda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (442, 20, N'Faridkot')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (443, 20, N'Fatehgarh Sahib')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (444, 20, N'Fazilka')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (445, 20, N'Ferozepur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (446, 20, N'Gurdaspur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (447, 20, N'Hoshiarpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (448, 20, N'Jalandhar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (449, 20, N'Kapurthala')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (450, 20, N'Ludhiana')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (451, 20, N'Mansa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (452, 20, N'Moga')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (453, 20, N'Muktsar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (454, 20, N'Nawanshahr')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (455, 20, N'Pathankot')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (456, 20, N'Patiala')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (457, 20, N'Rupnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (458, 20, N'Sangrur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (459, 20, N'SAS Nagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (460, 20, N'Tarn Taran')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (461, 21, N'Ajmer')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (462, 21, N'Alwar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (463, 21, N'Banswara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (464, 21, N'Baran')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (465, 21, N'Barmer')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (466, 21, N'Bharatpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (467, 21, N'Bhilwara')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (468, 21, N'Bikaner')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (469, 21, N'Bundi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (470, 21, N'Chittorgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (471, 21, N'Churu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (472, 21, N'Dausa')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (473, 21, N'Dholpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (474, 21, N'Dungarpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (475, 21, N'Ganganagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (476, 21, N'Hanumangarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (477, 21, N'Jaipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (478, 21, N'Jaisalmer')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (479, 21, N'Jalore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (480, 21, N'Jhalawar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (481, 21, N'Jhunjhunu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (482, 21, N'Jodhpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (483, 21, N'Karauli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (484, 21, N'Kota')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (485, 21, N'Nagaur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (486, 21, N'Pali')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (487, 21, N'Pratapgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (488, 21, N'Rajsamand')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (489, 21, N'Sawai Madhopur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (490, 21, N'Sikar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (491, 21, N'Sirohi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (492, 21, N'Tonk')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (493, 21, N'Udaipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (494, 22, N'East Sikkim')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (495, 22, N'North Sikkim')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (496, 22, N'South Sikkim')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (497, 22, N'West Sikkim')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (498, 23, N'Ariyalur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (499, 23, N'Chengalpattu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (500, 23, N'Chennai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (501, 23, N'Coimbatore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (502, 23, N'Cuddalore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (503, 23, N'Dharmapuri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (504, 23, N'Dindigul')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (505, 23, N'Erode')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (506, 23, N'Kallakurichi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (507, 23, N'Kanchipuram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (508, 23, N'Kanyakumari')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (509, 23, N'Karur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (510, 23, N'Krishnagiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (511, 23, N'Madurai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (512, 23, N'Nagapattinam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (513, 23, N'Namakkal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (514, 23, N'Nilgiris')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (515, 23, N'Perambalur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (516, 23, N'Pudukkottai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (517, 23, N'Ramanathapuram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (518, 23, N'Ranipet')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (519, 23, N'Salem')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (520, 23, N'Sivaganga')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (521, 23, N'Tenkasi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (522, 23, N'Thanjavur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (523, 23, N'Theni')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (524, 23, N'Thoothukudi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (525, 23, N'Tiruchirappalli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (526, 23, N'Tirunelveli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (527, 23, N'Tirupathur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (528, 23, N'Tiruppur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (529, 23, N'Tiruvallur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (530, 23, N'Tiruvannamalai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (531, 23, N'Tiruvarur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (532, 23, N'Vellore')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (533, 23, N'Viluppuram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (534, 23, N'Virudhunagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (535, 24, N'Adilabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (536, 24, N'Bhadradri Kothagudem')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (537, 24, N'Hyderabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (538, 24, N'Jagtial')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (539, 24, N'Jangaon')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (540, 24, N'Jayashankar Bhupalpally')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (541, 24, N'Jogulamba Gadwal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (542, 24, N'Kamareddy')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (543, 24, N'Karimnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (544, 24, N'Khammam')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (545, 24, N'Komaram Bheem Asifabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (546, 24, N'Mahabubabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (547, 24, N'Mahbubnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (548, 24, N'Mancherial')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (549, 24, N'Medak')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (550, 24, N'Medchal–Malkajgiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (551, 24, N'Mulugu')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (552, 24, N'Nagarkurnool')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (553, 24, N'Nalgonda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (554, 24, N'Narayanpet')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (555, 24, N'Nirmal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (556, 24, N'Nizamabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (557, 24, N'Peddapalli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (558, 24, N'Rajanna Sircilla')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (559, 24, N'Rangareddy')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (560, 24, N'Sangareddy')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (561, 24, N'Siddipet')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (562, 24, N'Suryapet')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (563, 24, N'Vikarabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (564, 24, N'Wanaparthy')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (565, 24, N'Warangal Rural')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (566, 24, N'Warangal Urban')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (567, 24, N'Yadadri Bhuvanagiri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (568, 25, N'Dhalai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (569, 25, N'Gomati')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (570, 25, N'Khowai')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (571, 25, N'North Tripura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (572, 25, N'Sepahijala')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (573, 25, N'South Tripura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (574, 25, N'Unakoti')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (575, 25, N'West Tripura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (576, 26, N'Agra')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (577, 26, N'Aligarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (578, 26, N'Ambedkar Nagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (579, 26, N'Amethi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (580, 26, N'Amroha')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (581, 26, N'Auraiya')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (582, 26, N'Azamgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (583, 26, N'Baghpat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (584, 26, N'Bahraich')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (585, 26, N'Ballia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (586, 26, N'Balrampur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (587, 26, N'Banda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (588, 26, N'Barabanki')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (589, 26, N'Bareilly')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (590, 26, N'Basti')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (591, 26, N'Bhadohi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (592, 26, N'Bijnor')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (593, 26, N'Budaun')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (594, 26, N'Bulandshahr')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (595, 26, N'Chandauli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (596, 26, N'Chitrakoot')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (597, 26, N'Deoria')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (598, 26, N'Etah')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (599, 26, N'Etawah')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (600, 26, N'Faizabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (601, 26, N'Farrukhabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (602, 26, N'Fatehpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (603, 26, N'Firozabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (604, 26, N'Gautam Buddha Nagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (605, 26, N'Ghaziabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (606, 26, N'Ghazipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (607, 26, N'Gonda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (608, 26, N'Gorakhpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (609, 26, N'Hamirpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (610, 26, N'Hapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (611, 26, N'Hardoi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (612, 26, N'Hathras')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (613, 26, N'Jalaun')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (614, 26, N'Jaunpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (615, 26, N'Jhansi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (616, 26, N'Kannauj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (617, 26, N'Kanpur Dehat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (618, 26, N'Kanpur Nagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (619, 26, N'Kasganj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (620, 26, N'Kaushambi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (621, 26, N'Kushinagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (622, 26, N'Lalitpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (623, 26, N'Lucknow')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (624, 26, N'Maharajganj')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (625, 26, N'Mahoba')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (626, 26, N'Mainpuri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (627, 26, N'Mathura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (628, 26, N'Mau')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (629, 26, N'Meerut')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (630, 26, N'Mirzapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (631, 26, N'Moradabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (632, 26, N'Muzaffarnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (633, 26, N'Pilibhit')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (634, 26, N'Pratapgarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (635, 26, N'Raebareli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (636, 26, N'Rampur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (637, 26, N'Saharanpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (638, 26, N'Sambhal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (639, 26, N'Sant Kabir Nagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (640, 26, N'Shahjahanpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (641, 26, N'Shamli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (642, 26, N'Shrawasti')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (643, 26, N'Siddharthnagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (644, 26, N'Sitapur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (645, 26, N'Sonbhadra')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (646, 26, N'Sultanpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (647, 26, N'Unnao')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (648, 26, N'Varanasi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (649, 27, N'Almora')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (650, 27, N'Bageshwar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (651, 27, N'Chamoli')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (652, 27, N'Champawat')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (653, 27, N'Dehradun')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (654, 27, N'Haridwar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (655, 27, N'Nainital')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (656, 27, N'Pauri Garhwal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (657, 27, N'Pithoragarh')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (658, 27, N'Rudraprayag')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (659, 27, N'Tehri Garhwal')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (660, 27, N'Udham Singh Nagar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (661, 27, N'Uttarkashi')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (662, 28, N'Alipurduar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (663, 28, N'Bankura')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (664, 28, N'Birbhum')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (665, 28, N'Cooch Behar')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (666, 28, N'Dakshin Dinajpur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (667, 28, N'Darjeeling')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (668, 28, N'Hooghly')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (669, 28, N'Howrah')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (670, 28, N'Jalpaiguri')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (671, 28, N'Jhargram')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (672, 28, N'Kalimpong')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (673, 28, N'Kolkata')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (674, 28, N'Malda')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (675, 28, N'Murshidabad')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (676, 28, N'Nadia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (677, 28, N'North 24 Parganas')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (678, 28, N'Paschim Bardhaman')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (679, 28, N'Paschim Medinipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (680, 28, N'Purba Bardhaman')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (681, 28, N'Purba Medinipur')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (682, 28, N'Purulia')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (683, 28, N'South 24 Parganas')
GO
INSERT [dbo].[District_Table] ([District_ID], [State_ID], [District_Name]) VALUES (684, 28, N'Uttar Dinajpur')
GO
SET IDENTITY_INSERT [dbo].[District_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Login_Table] ON 
GO
INSERT [dbo].[Login_Table] ([Login_ID], [Reg_ID], [Username], [Password], [Login_Type]) VALUES (1, 1, N'Raisal', N'richu', N'admin')
GO
INSERT [dbo].[Login_Table] ([Login_ID], [Reg_ID], [Username], [Password], [Login_Type]) VALUES (2, 2, N'Anugrah', N'anumol', N'user')
GO
INSERT [dbo].[Login_Table] ([Login_ID], [Reg_ID], [Username], [Password], [Login_Type]) VALUES (1002, 3, N'Surya', N'sursur', N'user')
GO
SET IDENTITY_INSERT [dbo].[Login_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Table] ON 
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (1, 1, N'The Great Gatsby', N'~/Img/thegreatgatsby.jpg', N'A classic novel about the American dream.', 300, 50, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (2, 1, N'To Kill a Mockingbird', N'~/Img/tokillamockingbird.jpg', N'A novel on racial injustice in the Deep South.', 250, 40, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (3, 1, N'Pride and Prejudice', N'~/Img/prideandprejudice.jpg', N'A romance and social commentary by Jane Austen.', 280, 30, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (4, 2, N'Sapiens: A Brief History of Humankind', N'~/Img/sapiens.jpg', N'Explores the history and impact of Homo sapiens.', 400, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (5, 2, N'Educated', N'~/Img/educated.jpg', N'A memoir about family and self-discovery.', 350, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (6, 2, N'The Wright Brothers', N'~/Img/wrightbrothers.jpg', N'Biography of the inventors of the airplane.', 300, 15, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (7, 3, N'Dune', N'~/Img/dune.jpg', N'Epic science fiction about politics and ecology.', 500, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (8, 3, N'Neuromancer', N'~/Img/neuromancer.jpg', N'A novel that pioneered cyberpunk.', 350, 15, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (9, 3, N'The Martian', N'~/Img/martian.jpg', N'A survival story of an astronaut stranded on Mars.', 400, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (10, 4, N'The Diary of a Young Girl', N'~/Img/dairyofayounggirl.jpg', N'Anne Frank’s memoir during WWII.', 250, 30, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (11, 4, N'Long Walk to Freedom', N'~/Img/longwalktofreedom.jpg', N'Autobiography of Nelson Mandela.', 350, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (12, 4, N'Steve Jobs', N'~/Img/stevejobs.jpg', N'Biography of Apple co-founder Steve Jobs.', 400, 15, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (13, 5, N'Atomic Habits', N'~/Img/atomichabits.jpg', N'Practical guide to building good habits.', 300, 40, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (14, 5, N'The Power of Now', N'~/Img/thepowerofnow.jpg', N'Guide to spiritual enlightenment.', 280, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (15, 5, N'How to Win Friends and Influence People', N'~/Img/howtowinfriendsandinfluencepeople.jpg', N'Classic self-help on interpersonal skills.', 250, 30, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (16, 6, N'Guns, Germs, and Steel', N'~/Img/gunsgermsandsteel.jpg', N'Explains historical development of civilizations.', 400, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (17, 6, N'The Silk Roads', N'~/Img/silkroads.jpg', N'History of trade routes that shaped civilizations.', 350, 15, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (18, 6, N'A People’s History of the United States', N'~/Img/peopleshistoryofunitedstates.jpg', N'History from the perspective of common people.', 300, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (19, 7, N'Gone Girl', N'~/Img/gonegirl.jpg', N'A psychological thriller about a missing wife.', 300, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (20, 7, N'The Girl with the Dragon Tattoo', N'~/Img/thegirlwiththedragontattoo.jpg', N'A mystery involving disappearance and investigation.', 350, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (21, 7, N'Big Little Lies', N'~/Img/biglittlelies.jpg', N'A suspenseful novel of secrets and lies.', 280, 30, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (22, 8, N'Harry Potter and the Sorcerer’s Stone', N'~/Img/harrypotterandthesorcerersstone.jpg', N'First book in the Harry Potter fantasy series.', 350, 40, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (23, 8, N'The Hobbit', N'~/Img/hobbit.jpg', N'Epic fantasy tale of adventure and dragons.', 300, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (24, 8, N'The Name of the Wind', N'~/Img/nameofthewind.JPG', N'A story of a gifted young magician.', 400, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (25, 9, N'The Sun and Her Flowers', N'~/Img/thesunandherflowers.jpg', N'Poetry collection about growth and healing.', 250, 30, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (26, 9, N'Milk and Honey', N'~/Img/milkandhoney.jpg', N'Poems about love, loss, and femininity.', 300, 25, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (27, 9, N'The Raven', N'~/Img/theraven.jpg', N'Classic narrative poem by Edgar Allan Poe.', 200, 20, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (28, 10, N'Mathematics for Class 10', N'~/Img/mathematicsforclass10.jpg', N'Complete guide for class 10 mathematics.', 200, 50, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (29, 10, N'Physics Fundamentals', N'~/Img/fundamentalphysics.jpg', N'A comprehensive guide to physics concepts.', 350, 30, N'Available')
GO
INSERT [dbo].[Product_Table] ([Pdt_ID], [Cato_ID], [Pdt_Name], [Pdt_Image], [Pdt_Description], [Price], [Stock], [Pdt_Status]) VALUES (30, 10, N'English Grammar Essentials', N'~/Img/englishgrammaressentials.jpg', N'A detailed guide to English grammar.', 250, 40, N'Available')
GO
SET IDENTITY_INSERT [dbo].[Product_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[State_Table] ON 
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (1, N'Andhra Pradesh')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (2, N'Arunachal Pradesh')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (3, N'Assam')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (4, N'Bihar')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (5, N'Chhattisgarh')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (6, N'Goa')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (7, N'Gujarat')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (8, N'Haryana')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (9, N'Himachal Pradesh')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (10, N'Jharkhand')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (11, N'Karnataka')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (12, N'Kerala')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (13, N'Madhya Pradesh')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (14, N'Maharashtra')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (15, N'Manipur')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (16, N'Meghalaya')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (17, N'Mizoram')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (18, N'Nagaland')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (19, N'Odisha')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (20, N'Punjab')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (21, N'Rajasthan')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (22, N'Sikkim')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (23, N'Tamil Nadu')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (24, N'Telangana')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (25, N'Tripura')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (26, N'Uttar Pradesh')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (27, N'Uttarakhand')
GO
INSERT [dbo].[State_Table] ([State_ID], [State_Name]) VALUES (28, N'West Bengal')
GO
SET IDENTITY_INSERT [dbo].[State_Table] OFF
GO
INSERT [dbo].[User_Table] ([User_ID], [Name], [Age], [Email], [Phone], [State_ID], [District_ID], [Address], [Pincode], [User_Status]) VALUES (2, N'Anugrah Suku', 22, N'anu@gmail.com', 8156948015, 12, 255, NULL, NULL, N'active')
GO
INSERT [dbo].[User_Table] ([User_ID], [Name], [Age], [Email], [Phone], [State_ID], [District_ID], [Address], [Pincode], [User_Status]) VALUES (3, N'Surya', 23, N'sur@gmail.com', 9685968596, 6, 132, NULL, NULL, N'active')
GO
USE [master]
GO
ALTER DATABASE [shoppingsite] SET  READ_WRITE 
GO
