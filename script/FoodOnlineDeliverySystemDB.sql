USE [FoodOnlineDeliveryDB]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order Details_Shoes]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order Details_Orders]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Products]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Customers]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Customers]
GO
/****** Object:  Index [IX_Account]    Script Date: 11/19/2020 12:07:48 PM ******/
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [IX_Account]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Order Details]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Admin]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [FoodOnlineDeliveryDB]    Script Date: 11/19/2020 12:07:48 PM ******/
DROP DATABASE [FoodOnlineDeliveryDB]
GO
/****** Object:  Database [FoodOnlineDeliveryDB]    Script Date: 11/19/2020 12:07:48 PM ******/
CREATE DATABASE [FoodOnlineDeliveryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FoodOnlineDeliveryDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FoodOnlineDeliveryDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FoodOnlineDeliveryDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FoodOnlineDeliveryDB_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodOnlineDeliveryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET RECOVERY FULL 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET  MULTI_USER 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FoodOnlineDeliveryDB', N'ON'
GO
USE [FoodOnlineDeliveryDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](36) NOT NULL,
	[password] [nvarchar](36) NOT NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[name] [nvarchar](36) NULL,
	[username] [nvarchar](36) NOT NULL,
	[password] [nvarchar](36) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](24) NOT NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](20) NULL,
	[phone] [nvarchar](16) NULL,
	[email] [nvarchar](50) NULL,
	[picture] [ntext] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[order_date] [datetime] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[city] [nvarchar](20) NULL,
	[phone] [nvarchar](16) NOT NULL,
	[email] [nvarchar](36) NULL,
	[note] [nvarchar](200) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [money] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/19/2020 12:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[category_id] [int] NOT NULL,
	[price] [money] NOT NULL,
	[discount] [float] NULL,
	[description] [nvarchar](500) NULL,
	[picture] [nvarchar](255) NULL,
	[view] [int] NULL,
	[order_level] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([username], [password], [customer_id]) VALUES (N'minh', N'202cb962ac59075b964b07152d234b70', 2)
INSERT [dbo].[Account] ([username], [password], [customer_id]) VALUES (N'bac', N'202cb962ac59075b964b07152d234b70', 3)
INSERT [dbo].[Account] ([username], [password], [customer_id]) VALUES (N'ninh', N'116fd7e4ef53b66644a49fc7a06716e2', 6)
INSERT [dbo].[Account] ([username], [password], [customer_id]) VALUES (N'khanhpd', N'202cb962ac59075b964b07152d234b70', 25)
INSERT [dbo].[Account] ([username], [password], [customer_id]) VALUES (N'datpham123', N'202cb962ac59075b964b07152d234b70', 26)
INSERT [dbo].[Account] ([username], [password], [customer_id]) VALUES (N'anhttv20', N'3b67b271831caac1af04ac0b32eba2ed', 46)
INSERT [dbo].[Admin] ([name], [username], [password]) VALUES (N'Trịnh Bá Minh Ninh', N'ninh137', N'116fd7e4ef53b66644a49fc7a06716e2')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Hamburgur')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Fried Chicken')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Drinks')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (1, N'ai đôn nâu', N'', N'', N'', N'', N'')
INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (2, N'Hoàng Duy Minh', N'Hoàn Kiếm', N'Hà Nội', N'', N'hoangduy.minh18@gmail.com', N'assets/avatar/3.png')
INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (3, N'Đỗ Văn Bắc', N'', N'Hưng Yên', N'', N'ngu@kris.com', N'assets/avatar/3.png')
INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (6, N'Trịnh Bá Minh Ninh', N'Chương Mỹ', N'Hà Nội', N'+84369543469', N'sogorosanza@gmail.com', N'assets/avatar/1.png')
INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (25, N'Phạm Duy Khánh', N'', N'Hải Dương', N'', N'khanh@d101.com', N'assets/avatar/3.png')
INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (26, N'Phạm Tiến Đạt', N'', N'Thái Nguyên', N'', N'gmail@dat.com', N'assets/avatar/3.png')
INSERT [dbo].[Customer] ([id], [name], [address], [city], [phone], [email], [picture]) VALUES (46, N'Trịnh Thị Vân Anh', N'', N'Hà Nội', N'', N'gmail@vananh.com', N'assets/avatar/2.png')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [customer_id], [order_date], [address], [city], [phone], [email], [note]) VALUES (2, 6, CAST(N'2020-11-19 00:00:00.000' AS DateTime), N'Chương Mỹ', N'Hà Nội', N'+84369543469', N'sogorosanza@gmail.com', N'')
INSERT [dbo].[Order] ([id], [customer_id], [order_date], [address], [city], [phone], [email], [note]) VALUES (3, 6, CAST(N'2020-11-19 00:00:00.000' AS DateTime), N'Chương Mỹ', N'Hà Nội', N'+84369543469', N'sogorosanza@gmail.com', N'')
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[Order Details] ([order_id], [product_id], [unit_price], [quantity]) VALUES (2, 7, 39600.0000, 2)
INSERT [dbo].[Order Details] ([order_id], [product_id], [unit_price], [quantity]) VALUES (2, 40, 22500.0000, 1)
INSERT [dbo].[Order Details] ([order_id], [product_id], [unit_price], [quantity]) VALUES (2, 50, 12600.0000, 1)
INSERT [dbo].[Order Details] ([order_id], [product_id], [unit_price], [quantity]) VALUES (3, 40, 22500.0000, 1)
INSERT [dbo].[Order Details] ([order_id], [product_id], [unit_price], [quantity]) VALUES (3, 44, 18000.0000, 1)
INSERT [dbo].[Order Details] ([order_id], [product_id], [unit_price], [quantity]) VALUES (3, 45, 18000.0000, 1)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (1, N'Hawaii Burger', 1, 60000.0000, 10, N'Ngol', N'/burger1/hawaii_burger_1_2.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (2, N'Mozzarella Burger', 1, 60000.0000, 10, N'Ngol', N'/burger2/mozzarella-burger_5.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (3, N'Super Jumbo Burger', 1, 60000.0000, 10, N'rat ngon', N'/burger3/jumbo-chicken-burger.jpg', 3, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (4, N'Big Star Burger', 1, 56000.0000, 10, N'Ngol', N'/burger4/burger_bigstar.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (5, N'Shrimp Burger', 1, 47000.0000, 10, N'NgolNgol', N'/burger5/burger_shrimp.png', 3, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (6, N'Bulgogi Burger', 1, 44000.0000, 10, N'Ngol', N'/burger6/burger_bulgogi.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (7, N'Premium Chicken Burger', 1, 44000.0000, 10, N'Ngol', N'/burger7/burger_premium-chicken.png', 3, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (8, N'Fish Burger', 1, 34000.0000, 10, N'Ngol', N'/burger8/burger_fish.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (9, N'Burger Cheese', 1, 34000.0000, 10, N'Ngol', N'/burger9/burger_cheese.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (10, N'Teriyaki Burger', 1, 31000.0000, 10, N'NgolNgolNgol', N'/burger10/teriyaki-burger.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (11, N'HS Chicken ( 9 pcs )', 2, 31000.0000, 10, N'Ngol', N'/chicken1/hs-chicken-9pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (12, N'Saled Egg Chicken ( 9pcs )', 2, 31000.0000, 10, N'Ngol', N'/chicken2/saled-egg-chicken-9pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (13, N'Grilled Chicken ( 9 pcs )', 2, 31000.0000, 10, N'Ngol', N'/chicken3/grilled-chicken-9pcs.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (15, N'Cheese Chicken ( 9 pcs )', 2, 31000.0000, 10, N'NgolNgolNgol', N'/chicken4/cheese-chicken-9pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (16, N'Soybean Chicken ( 9 pcs )', 2, 310000.0000, 10, N'Ngol', N'/chicken5/soybean-chicken-9pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (17, N'Fried Chieck ( 9 pcs )', 2, 289000.0000, 10, N'Ngol', N'/chicken6/fried-chicken-6pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (18, N'HS Chicken ( 6 pcs )', 2, 207000.0000, 10, N'NgolNgolNgol', N'/chicken7/hs-chicken-6pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (20, N'Saled Egg Chicken ( 6pcs )', 2, 207000.0000, 10, N'Ngol', N'/chicken8/saled-egg-chicken-6pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (22, N'Grilled Chicken ( 6 pcs )', 2, 207000.0000, 10, N'NgolNgolNgolNgol', N'/chicken9/grilled-chicken-6pcs.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (23, N'Cheese Chicken ( 6 pcs )', 2, 207000.0000, 10, N'Ngol', N'/chicken10/cheese-chicken-6pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (24, N'Soybean Chicken ( 6 pcs )', 2, 207000.0000, 10, N'Ngol', N'/chicken11/soybean-chicken-6pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (25, N'Fried Chieck ( 6 pcs )', 2, 195000.0000, 10, N'Ngol', N'/chicken12/fried-chicken-6pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (26, N'HS Chicken ( 3 pcs )', 2, 107000.0000, 10, N'Ngol', N'/chicken13/hs-chicken-3pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (27, N'Saled Egg ( 3 pcs )', 2, 107000.0000, 10, N'Ngol', N'/chicken14/saled-egg-chicken-3pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (28, N'Grilled Chicken ( 3 pcs )', 2, 107000.0000, 10, N'Ngol', N'/chicken15/grilled-chicken-3pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (29, N'Cheese Chicken ( 3 pcs )', 2, 107000.0000, 10, N'NgolNgolNgolNgol', N'/chicken16/cheese-chicken-3pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (30, N'Soybean Chicken ( 3 pcs )', 2, 107000.0000, 10, N'Ngol', N'/chicken17/soybean-chicken-3pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (31, N'Fried Chicken ( 3 pcs )', 2, 99000.0000, 10, N'Ngol', N'/chicken18/fried-chicken-3pcs.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (32, N'Chicken Quarter Leg', 2, 49000.0000, 10, N'NgolNgol', N'/chicken19/chicken-quarter-leg.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (33, N'HS Chicken ( 1 pcs )', 2, 38000.0000, 10, N'Ngol', N'/chicken20/hs-chicken-1pc.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (34, N'Saled Egg Chicken ( 1 pc )', 2, 38000.0000, 10, N'Ngol', N'/chicken21/saled-egg-chicken-1pc.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (35, N'Grilled Chicken ( 1 pc )', 2, 38000.0000, 10, N'Ngol', N'/chicken22/grilled-chicken-1pc.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (36, N'Cheese Chicken ( 1pc )', 2, 38000.0000, 10, N'NgolNgol', N'/chicken23/cheese-chicken-1pc.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (37, N'Fried Chicken ( 1 pc  )', 2, 38000.0000, 10, N'NgolNgol', N'/chicken24/fried-chicken-1pc.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (38, N'Orange Juice', 3, 28000.0000, 10, N'Ngol', N'/drink1/orangejuice.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (39, N'7 Up Cheery', 3, 25000.0000, 10, N'Ngol', N'/drink2/7_up_cherry.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (40, N'7 Up Rose', 3, 25000.0000, 10, N'Ngol', N'/drink3/7_up_rose.jpg', 9, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (41, N'Milo', 3, 25000.0000, 10, N'NgolNgolNgol', N'/drink4/milo.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (42, N'Sjora', 3, 25000.0000, 10, N'NgolNgolNgol', N'/drink5/sjora.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (44, N'Milk Coffee', 3, 20000.0000, 10, N'NgolNgol', N'/drink6/milk-coffee.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (45, N'Black Coffee', 3, 20000.0000, 10, N'NgolNgolNgol', N'/drink7/black-coffee.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (46, N'7 Up ( L )', 3, 18000.0000, 10, N'Ngol', N'/drink8/7-up( L ).jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (47, N'Nestea', 3, 18000.0000, 10, N'Ngol', N'/drink9/nestea.png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (48, N'Pepsi ( L )', 3, 18000.0000, 10, N'Ngol', N'/drink10/pepsi( L ).png', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (49, N'Pepsi Zero', 3, 18000.0000, 10, N'Ngol', N'/drink11/pepsi-zero.jpg', 1, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (50, N'7 Up ( M )', 3, 14000.0000, 10, N'NgolNgol', N'/drink12/7_up_m_.jpg', 6, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (51, N'Mirinda ( M )', 3, 14000.0000, 10, N'NgolNgol', N'/drink13/mirinda_m.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [category_id], [price], [discount], [description], [picture], [view], [order_level]) VALUES (52, N'Pepsi ( M )', 3, 14000.0000, 10, N'NgolNgolNgolNgolNgol', N'/drink14/pepsi_m.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Account]    Script Date: 11/19/2020 12:07:48 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [IX_Account] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customers]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customers]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Products]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Orders]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Shoes] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Shoes]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [FoodOnlineDeliveryDB] SET  READ_WRITE 
GO
