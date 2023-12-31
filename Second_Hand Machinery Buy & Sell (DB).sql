USE [master]
GO
/****** Object:  Database [SecondHandMachine]    Script Date: 7/4/2023 7:39:50 AM ******/
CREATE DATABASE [SecondHandMachine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SecondHandMachine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SecondHandMachine.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SecondHandMachine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SecondHandMachine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SecondHandMachine] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SecondHandMachine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SecondHandMachine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SecondHandMachine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SecondHandMachine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SecondHandMachine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SecondHandMachine] SET ARITHABORT OFF 
GO
ALTER DATABASE [SecondHandMachine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SecondHandMachine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SecondHandMachine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SecondHandMachine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SecondHandMachine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SecondHandMachine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SecondHandMachine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SecondHandMachine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SecondHandMachine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SecondHandMachine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SecondHandMachine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SecondHandMachine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SecondHandMachine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SecondHandMachine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SecondHandMachine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SecondHandMachine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SecondHandMachine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SecondHandMachine] SET RECOVERY FULL 
GO
ALTER DATABASE [SecondHandMachine] SET  MULTI_USER 
GO
ALTER DATABASE [SecondHandMachine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SecondHandMachine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SecondHandMachine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SecondHandMachine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SecondHandMachine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SecondHandMachine] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SecondHandMachine', N'ON'
GO
ALTER DATABASE [SecondHandMachine] SET QUERY_STORE = ON
GO
ALTER DATABASE [SecondHandMachine] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SecondHandMachine]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NULL,
	[ProName] [varchar](70) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[Description] [varchar](200) NULL,
	[Image] [varchar](100) NULL,
	[Status] [varchar](7) NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[CustID] [int] IDENTITY(1,1) NOT NULL,
	[CustName] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[NRC] [varchar](30) NULL,
	[Password] [varchar](20) NULL,
	[CardType] [varchar](20) NULL,
	[AccNo] [varchar](20) NULL,
 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SaleOrder]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SaleOrder](
	[SaleOrderID] [int] IDENTITY(1,1) NOT NULL,
	[SaleOrderDate] [varchar](11) NULL,
	[CustID] [int] NULL,
	[AllowStatus] [varchar](50) NULL,
	[NotiStatus] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_SaleOrder] PRIMARY KEY CLUSTERED 
(
	[SaleOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SaleOrderDetail]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SaleOrderDetail](
	[SaleOrderID] [int] NOT NULL,
	[ProID] [int] NOT NULL,
	[UnitPrice] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tbl_SaleOrderDetail] PRIMARY KEY CLUSTERED 
(
	[SaleOrderID] ASC,
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_Sale_Order_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Sale_Order_Report]
AS
SELECT        dbo.tbl_SaleOrder.SaleOrderDate, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_Product.Price, dbo.tbl_Product.Quantity, dbo.tbl_Product.Description, dbo.tbl_Product.Image, dbo.tbl_Customer.CustName, 
                         dbo.tbl_Customer.CardType, dbo.tbl_Customer.AccNo
FROM            dbo.tbl_Customer INNER JOIN
                         dbo.tbl_SaleOrder ON dbo.tbl_Customer.CustID = dbo.tbl_SaleOrder.CustID INNER JOIN
                         dbo.tbl_SaleOrderDetail ON dbo.tbl_SaleOrder.SaleOrderID = dbo.tbl_SaleOrderDetail.SaleOrderID INNER JOIN
                         dbo.tbl_Product ON dbo.tbl_SaleOrderDetail.ProID = dbo.tbl_Product.ProID INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_Product.CatID = dbo.tbl_Category.CatID
GO
/****** Object:  View [dbo].[vi_Product]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Product]
AS
SELECT        dbo.tbl_Product.ProID, dbo.tbl_Product.ProName, dbo.tbl_Product.CatID, dbo.tbl_Category.CatName, dbo.tbl_Product.Price, dbo.tbl_Product.Quantity, dbo.tbl_Product.Description, dbo.tbl_Product.Image, 
                         dbo.tbl_Product.Status
FROM            dbo.tbl_Product INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_Product.CatID = dbo.tbl_Category.CatID
GO
/****** Object:  Table [dbo].[tbl_OrderDetail]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProID] [int] NOT NULL,
	[UnitPrice] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tbl_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_Admin_OrderDetail]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Admin_OrderDetail]
AS
SELECT        dbo.tbl_OrderDetail.OrderID, dbo.tbl_OrderDetail.ProID, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_OrderDetail.UnitPrice, dbo.tbl_OrderDetail.Quantity
FROM            dbo.tbl_Category INNER JOIN
                         dbo.tbl_Product ON dbo.tbl_Category.CatID = dbo.tbl_Product.CatID INNER JOIN
                         dbo.tbl_OrderDetail ON dbo.tbl_Product.ProID = dbo.tbl_OrderDetail.ProID
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [varchar](11) NULL,
	[CustID] [int] NULL,
	[ShippingAdd] [varchar](50) NULL,
	[Total] [int] NULL,
	[DeliverStatus] [varchar](50) NULL,
	[NotiStatus] [varchar](5) NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_Admin_Order_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Admin_Order_Report]
AS
SELECT        dbo.tbl_Order.OrderDate, dbo.tbl_Customer.CustName, dbo.tbl_Order.ShippingAdd, dbo.tbl_Order.Total, dbo.tbl_Order.DeliverStatus, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_OrderDetail.UnitPrice, 
                         dbo.tbl_OrderDetail.Quantity
FROM            dbo.tbl_Category INNER JOIN
                         dbo.tbl_Product ON dbo.tbl_Category.CatID = dbo.tbl_Product.CatID INNER JOIN
                         dbo.tbl_OrderDetail ON dbo.tbl_Product.ProID = dbo.tbl_OrderDetail.ProID INNER JOIN
                         dbo.tbl_Order INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_Order.CustID = dbo.tbl_Customer.CustID ON dbo.tbl_OrderDetail.OrderID = dbo.tbl_Order.OrderID
GO
/****** Object:  View [dbo].[vi_SaleOrderDetail_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_SaleOrderDetail_Report]
AS
SELECT        dbo.tbl_SaleOrder.SaleOrderDate, dbo.tbl_SaleOrderDetail.ProID, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_Product.Price, dbo.tbl_Product.Quantity, dbo.tbl_Product.Description, dbo.tbl_Product.Image, 
                         dbo.tbl_SaleOrder.CustID, dbo.tbl_Customer.CustName, dbo.tbl_Customer.Phone, dbo.tbl_Customer.CardType, dbo.tbl_Customer.AccNo
FROM            dbo.tbl_SaleOrder INNER JOIN
                         dbo.tbl_SaleOrderDetail ON dbo.tbl_SaleOrder.SaleOrderID = dbo.tbl_SaleOrderDetail.SaleOrderID INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_SaleOrder.CustID = dbo.tbl_Customer.CustID INNER JOIN
                         dbo.tbl_Product INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_Product.CatID = dbo.tbl_Category.CatID ON dbo.tbl_SaleOrderDetail.ProID = dbo.tbl_Product.ProID
GO
/****** Object:  Table [dbo].[tbl_AllowedProduct]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AllowedProduct](
	[AllowProID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NULL,
	[ProName] [varchar](70) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[Description] [varchar](200) NULL,
	[Image] [varchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CustID] [int] NULL,
	[SalerOrderDate] [varchar](11) NULL,
 CONSTRAINT [PK_tbl_AllowedProduct] PRIMARY KEY CLUSTERED 
(
	[AllowProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_AllowedProduct]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_AllowedProduct]
AS
SELECT        dbo.tbl_AllowedProduct.AllowProID, dbo.tbl_AllowedProduct.ProName, dbo.tbl_AllowedProduct.CatID, dbo.tbl_Category.CatName, dbo.tbl_AllowedProduct.Price, dbo.tbl_AllowedProduct.Quantity, 
                         dbo.tbl_AllowedProduct.Description, dbo.tbl_AllowedProduct.Image, dbo.tbl_AllowedProduct.CustID, dbo.tbl_Customer.CustName, dbo.tbl_Customer.Phone, dbo.tbl_Customer.Email, dbo.tbl_Customer.CardType, 
                         dbo.tbl_Customer.AccNo, dbo.tbl_AllowedProduct.SalerOrderDate
FROM            dbo.tbl_AllowedProduct INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_AllowedProduct.CustID = dbo.tbl_Customer.CustID INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_AllowedProduct.CatID = dbo.tbl_Category.CatID
GO
/****** Object:  View [dbo].[vi_Product_Detail]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Product_Detail]
AS
SELECT        dbo.tbl_SaleOrderDetail.ProID, dbo.tbl_Product.ProName, dbo.tbl_Product.CatID, dbo.tbl_Category.CatName, dbo.tbl_Product.Price, dbo.tbl_Product.Description, dbo.tbl_Product.Image, dbo.tbl_SaleOrder.CustID, 
                         dbo.tbl_Customer.CustName, dbo.tbl_Customer.Phone, dbo.tbl_Customer.Email, dbo.tbl_Customer.CardType, dbo.tbl_Customer.AccNo, dbo.tbl_SaleOrderDetail.SaleOrderID
FROM            dbo.tbl_Customer INNER JOIN
                         dbo.tbl_SaleOrder ON dbo.tbl_Customer.CustID = dbo.tbl_SaleOrder.CustID INNER JOIN
                         dbo.tbl_Product INNER JOIN
                         dbo.tbl_SaleOrderDetail ON dbo.tbl_Product.ProID = dbo.tbl_SaleOrderDetail.ProID ON dbo.tbl_SaleOrder.SaleOrderID = dbo.tbl_SaleOrderDetail.SaleOrderID INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_Product.CatID = dbo.tbl_Category.CatID
GO
/****** Object:  View [dbo].[vi_Customer_Order_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Customer_Order_Report]
AS
SELECT        dbo.tbl_OrderDetail.OrderID, dbo.tbl_Order.OrderDate, dbo.tbl_Customer.CustName, dbo.tbl_Order.ShippingAdd, dbo.tbl_Order.Total, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_OrderDetail.UnitPrice, 
                         dbo.tbl_OrderDetail.Quantity, dbo.tbl_Order.CustID
FROM            dbo.tbl_Customer INNER JOIN
                         dbo.tbl_Order ON dbo.tbl_Customer.CustID = dbo.tbl_Order.CustID INNER JOIN
                         dbo.tbl_OrderDetail ON dbo.tbl_Order.OrderID = dbo.tbl_OrderDetail.OrderID INNER JOIN
                         dbo.tbl_Product ON dbo.tbl_OrderDetail.ProID = dbo.tbl_Product.ProID INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_Product.CatID = dbo.tbl_Category.CatID
GO
/****** Object:  View [dbo].[vi_AllowProduct]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_AllowProduct]
AS
SELECT        dbo.tbl_AllowedProduct.AllowProID, dbo.tbl_AllowedProduct.ProName, dbo.tbl_AllowedProduct.CatID, dbo.tbl_Category.CatName, dbo.tbl_AllowedProduct.Price, dbo.tbl_AllowedProduct.Quantity, 
                         dbo.tbl_AllowedProduct.Description, dbo.tbl_AllowedProduct.Image, dbo.tbl_AllowedProduct.CustID, dbo.tbl_Customer.CustName, dbo.tbl_Customer.Phone, dbo.tbl_Customer.CardType, dbo.tbl_Customer.AccNo, 
                         dbo.tbl_AllowedProduct.SalerOrderDate
FROM            dbo.tbl_Category INNER JOIN
                         dbo.tbl_AllowedProduct ON dbo.tbl_Category.CatID = dbo.tbl_AllowedProduct.CatID INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_AllowedProduct.CustID = dbo.tbl_Customer.CustID
GO
/****** Object:  View [dbo].[vi_Admin_Order]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Admin_Order]
AS
SELECT        dbo.tbl_Order.OrderID, dbo.tbl_Order.OrderDate, dbo.tbl_Order.CustID, dbo.tbl_Customer.CustName, dbo.tbl_Order.ShippingAdd, dbo.tbl_Order.Total, dbo.tbl_Order.DeliverStatus, dbo.tbl_Order.NotiStatus
FROM            dbo.tbl_Order INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_Order.CustID = dbo.tbl_Customer.CustID
GO
/****** Object:  View [dbo].[vi_Admin_Sale_Order_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Admin_Sale_Order_Report]
AS
SELECT        dbo.tbl_SaleOrder.SaleOrderDate, dbo.tbl_Customer.CustName, dbo.tbl_SaleOrder.AllowStatus, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_SaleOrderDetail.UnitPrice, dbo.tbl_SaleOrderDetail.Quantity
FROM            dbo.tbl_Category INNER JOIN
                         dbo.tbl_Product ON dbo.tbl_Category.CatID = dbo.tbl_Product.CatID INNER JOIN
                         dbo.tbl_SaleOrderDetail ON dbo.tbl_Product.ProID = dbo.tbl_SaleOrderDetail.ProID CROSS JOIN
                         dbo.tbl_SaleOrder INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_SaleOrder.CustID = dbo.tbl_Customer.CustID
GO
/****** Object:  View [dbo].[vi_Admin_Sale_OrderDetail]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Admin_Sale_OrderDetail]
AS
SELECT        dbo.tbl_SaleOrderDetail.SaleOrderID, dbo.tbl_Product.ProID, dbo.tbl_Product.ProName, dbo.tbl_Category.CatName, dbo.tbl_SaleOrderDetail.UnitPrice, dbo.tbl_SaleOrderDetail.Quantity
FROM            dbo.tbl_SaleOrderDetail INNER JOIN
                         dbo.tbl_Product ON dbo.tbl_SaleOrderDetail.ProID = dbo.tbl_Product.ProID INNER JOIN
                         dbo.tbl_Category ON dbo.tbl_Product.CatID = dbo.tbl_Category.CatID
GO
/****** Object:  View [dbo].[vi_Admin_Sale_Order]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Admin_Sale_Order]
AS
SELECT        dbo.tbl_SaleOrder.SaleOrderID, dbo.tbl_SaleOrder.SaleOrderDate, dbo.tbl_SaleOrder.CustID, dbo.tbl_Customer.CustName, dbo.tbl_SaleOrder.AllowStatus, dbo.tbl_SaleOrder.NotiStatus
FROM            dbo.tbl_SaleOrder INNER JOIN
                         dbo.tbl_Customer ON dbo.tbl_SaleOrder.CustID = dbo.tbl_Customer.CustID
GO
/****** Object:  View [dbo].[vi_Category]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi_Category]
AS
SELECT        dbo.tbl_AllowedProduct.CatID, dbo.tbl_Category.CatName
FROM            dbo.tbl_Category INNER JOIN
                         dbo.tbl_AllowedProduct ON dbo.tbl_Category.CatID = dbo.tbl_AllowedProduct.CatID
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Admin] ON 

INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password]) VALUES (1, N'Adam', N'adam123')
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password]) VALUES (2, N'Bob', N'bob123')
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password]) VALUES (3, N'Cubby', N'cubby123')
SET IDENTITY_INSERT [dbo].[tbl_Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AllowedProduct] ON 

INSERT [dbo].[tbl_AllowedProduct] ([AllowProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status], [CustID], [SalerOrderDate]) VALUES (1, 4, N'Water Pump Motor', 200000, 1, N'Usage/Application = Industrial
Motor Horsepower = 2 - 5 HP
Voltage = 220 V
Frequency = 50-60 Hz
Driven Type = Electric
Working Temperature	 = 0 to 60 Degree C
New / Used = Used', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_AllowedProduct] ([AllowProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status], [CustID], [SalerOrderDate]) VALUES (2, 1, N'Agricultural Gasoline Mini Power Tiller', 250000, 1, N'Type : Professional Mowers
Moving Way : Rear Push
Cutter Type : Rotary Lawn Mower
Applicable Area : 1000-5000m²', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_AllowedProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([CatID], [CatName]) VALUES (1, N'Agricultural Equipment')
INSERT [dbo].[tbl_Category] ([CatID], [CatName]) VALUES (2, N'Car Equipment')
INSERT [dbo].[tbl_Category] ([CatID], [CatName]) VALUES (3, N'Domestic Machinery Equipment')
INSERT [dbo].[tbl_Category] ([CatID], [CatName]) VALUES (4, N'Industrial Equipment')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Customer] ON 

INSERT [dbo].[tbl_Customer] ([CustID], [CustName], [Address], [Phone], [Email], [NRC], [Password], [CardType], [AccNo]) VALUES (1, N'U Myaing', N'Yangon', N'0978667249', N'myaing@gmail.com', N'ma@gmail.com', N'm123', N'Visa', N'009876334092')
INSERT [dbo].[tbl_Customer] ([CustID], [CustName], [Address], [Phone], [Email], [NRC], [Password], [CardType], [AccNo]) VALUES (2, N'Ma Ma', N'Yangon', N'09780556898', N'mama@gmail.com', N'5/mamata(N)007819', N'mama123', N'Master', N'00899676712')
INSERT [dbo].[tbl_Customer] ([CustID], [CustName], [Address], [Phone], [Email], [NRC], [Password], [CardType], [AccNo]) VALUES (3, N'Phyo Phyo', N'Mandalay', N'09778332114', N'phyophyo@gmail.com', N'12/KaYaTa(N)009818', N'p123', N'Visa', N'008080332119')
INSERT [dbo].[tbl_Customer] ([CustID], [CustName], [Address], [Phone], [Email], [NRC], [Password], [CardType], [AccNo]) VALUES (4, N'hnin hnin', N'Monywa', N'09974331290', N'hninhnin@gmail.com', N'5/Salaka(N)009218', N'h123', N'Visa', N'08099217120')
INSERT [dbo].[tbl_Customer] ([CustID], [CustName], [Address], [Phone], [Email], [NRC], [Password], [CardType], [AccNo]) VALUES (5, N'Aung Lay', N'Monywa', N'09258110329', N'aunglay@gmail.com', N'5/Salaka(N)039981', N'a123', N'Visa', N'09844230189')
SET IDENTITY_INSERT [dbo].[tbl_Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Order] ON 

INSERT [dbo].[tbl_Order] ([OrderID], [OrderDate], [CustID], [ShippingAdd], [Total], [DeliverStatus], [NotiStatus]) VALUES (1, N'26/06/2023', 1, N'Thakata Township', 300000, N'Deliver', N'-')
INSERT [dbo].[tbl_Order] ([OrderID], [OrderDate], [CustID], [ShippingAdd], [Total], [DeliverStatus], [NotiStatus]) VALUES (2, N'26/06/2023', 3, N'Yankin', 250000, N'Order...', N'-')
INSERT [dbo].[tbl_Order] ([OrderID], [OrderDate], [CustID], [ShippingAdd], [Total], [DeliverStatus], [NotiStatus]) VALUES (3, N'27/06/2023', 1, N'Thakata', 200000, N'Order...', N'-')
INSERT [dbo].[tbl_Order] ([OrderID], [OrderDate], [CustID], [ShippingAdd], [Total], [DeliverStatus], [NotiStatus]) VALUES (4, N'27/06/2023', 3, N'Hlaing', 250000, N'Deliver', N'-')
INSERT [dbo].[tbl_Order] ([OrderID], [OrderDate], [CustID], [ShippingAdd], [Total], [DeliverStatus], [NotiStatus]) VALUES (5, N'03/07/2023', 2, N'Monywa', 250000, N'Credit Card Error', N'-')
SET IDENTITY_INSERT [dbo].[tbl_Order] OFF
GO
INSERT [dbo].[tbl_OrderDetail] ([OrderID], [ProID], [UnitPrice], [Quantity]) VALUES (1, 1, 300000, 1)
INSERT [dbo].[tbl_OrderDetail] ([OrderID], [ProID], [UnitPrice], [Quantity]) VALUES (2, 2, 250000, 1)
INSERT [dbo].[tbl_OrderDetail] ([OrderID], [ProID], [UnitPrice], [Quantity]) VALUES (3, 3, 200000, 1)
INSERT [dbo].[tbl_OrderDetail] ([OrderID], [ProID], [UnitPrice], [Quantity]) VALUES (4, 4, 250000, 1)
INSERT [dbo].[tbl_OrderDetail] ([OrderID], [ProID], [UnitPrice], [Quantity]) VALUES (5, 5, 250000, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Product] ON 

INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (1, 4, N'Water Pump Motor', 300000, 0, N'Usage/Application = Industrial
Motor Horsepower = 2 - 5 HP
Voltage = 220 V
Frequency = 50-60 Hz
Driven Type = Electric
Working Temperature	 = 0 to 60 Degree C
New / Used = Used', N'~/Images/ProImage/1.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (2, 1, N'Agricultural Gasoline Mini Power Tiller', 250000, 0, N'Type : Professional Mowers
Moving Way : Rear Push
Cutter Type : Rotary Lawn Mower
Applicable Area : 1000-5000m²', N'~/Images/ProImage/2.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (3, 3, N'Yamabisi Gasoline Generator – 1000W', 200000, 0, N'BRANDS : YAMABISI
MODEL : YB 1500', N'~/Images/ProImage/3.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (4, 1, N'Commercial Freezer Chiller Stainless Steel Fridge Single Door Refriger', 250000, 0, N'Brand Name:Bestong
Model Number:RX
Type:Freezer
Style:Single-Temperature
Capacity:500L
Temperature:+4?~-5?/-3?~-20?
Climate Type:Multi-climate
Refrigerant:R134a
Product name:Single Door Refrig', N'~/Images/ProImage/4.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (5, 3, N'ALPHA PORTABKLE AIR CONDITONER (ALPAC09K)', 250000, 0, N'Power Supply 220-240V/50Hz
Cooling Capacity 2640W
Cooling input Power 1100W
Cooing Current 5.0A
Rated Power 1300W
Rated Current 6.0A
Airflow Volume 400m3/h
Noise 53dB(A)
Refrigerant/Charge/GWP', N'~/Images/ProImage/5.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (6, 3, N'Master Water Dispenser MWD-CS3311', 300000, 1, N'Modern Push Down Button
Hot, Normal & Cold
3.6L Stainless Steel Water Tank
Child Lock On Hot Water Tap
16L Storage Cabinet
Double Safety Protection For Low Water
High Efficiency Danfu 2.5 Compre', N'~/Images/ProImage/6.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (7, 4, N'500W/1Car Home Solar Power Inverter for Lead Acid and Lifepo4', 200000, 0, N'500W/1000W/1200W/1500W  2000W 12V DC To 220-230V AC Car Home Solar Power Inverter
Output Voltage : AC 220V +/- 5%
Ouput Frequency : 60Hz +/- 5Hz (It is suitable for appliances in Philippines)
Outpu', N'~/Images/ProImage/7.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (8, 1, N'Y1818DHK', 500000, 1, N'Type = plow
Weight = 405 kg
Mountable tractor
YM351A / YM357A / EF514T
Row plowing after harvest
After plowing, mulching and leveling can be done quickly
Easy to turn with 3 places connection
I', N'~/Images/ProImage/8.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (9, 1, N'Y1818DHK', 500000, 1, N'Type = plow
Weight = 405 kg
Mountable tractor
YM351A / YM357A / EF514T
Row plowing after harvest
After plowing, mulching and leveling can be done quickly
Easy to turn with 3 places connection
I', N'~/Images/ProImage/9.jpg', N'false')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (10, 1, N'Y1818DHK', 500000, 1, N'Type = plow
Weight = 405 kg
Mountable tractor
YM351A / YM357A / EF514T
Row plowing after harvest
After plowing, mulching and leveling can be done quickly
Easy to turn with 3 places connection
I', N'~/Images/ProImage/10.jpg', N'false')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (11, 1, N'Y1900RH / Y2000RH', 700000, 1, N'Type earthmoving machine
Weight 345 kg
Mountable tractor
Y1900RH for YM351A / YM357A / EF514T
Y2000RH for YM357A
A new style mulcher that best fits the YM tractor
The light weight tiller allows ', N'~/Images/ProImage/11.jpg', N'true')
INSERT [dbo].[tbl_Product] ([ProID], [CatID], [ProName], [Price], [Quantity], [Description], [Image], [Status]) VALUES (12, 4, N'Yuchai Brand Engine 30KW/ 40KVA diesel power generator', 4000000, 1, N'Yuchai Brand Engine 30KW/ 40KVA diesel power generator set price 3 phase alternator with global warranty

Output Type
AC Single Phase ,  
AC Three Phase', N'~/Images/ProImage/12.jpg', N'true')
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SaleOrder] ON 

INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (1, N'26/06/2023', 2, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (2, N'26/06/2023', 2, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (3, N'26/06/2023', 1, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (4, N'27/06/2023', 3, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (5, N'27/06/2023', 2, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (6, N'27/06/2023', 2, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (7, N'27/06/2023', 3, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (8, N'04/07/2023', 4, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (9, N'04/07/2023', 4, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (10, N'04/07/2023', 4, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (11, N'04/07/2023', 4, N'false', NULL)
INSERT [dbo].[tbl_SaleOrder] ([SaleOrderID], [SaleOrderDate], [CustID], [AllowStatus], [NotiStatus]) VALUES (12, N'04/07/2023', 5, N'false', NULL)
SET IDENTITY_INSERT [dbo].[tbl_SaleOrder] OFF
GO
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (1, 1, 300000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (2, 2, 250000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (3, 3, 200000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (4, 4, 250000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (5, 5, 250000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (6, 6, 300000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (7, 7, 200000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (8, 8, 500000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (9, 9, 500000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (10, 10, 500000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (11, 11, 700000, 1)
INSERT [dbo].[tbl_SaleOrderDetail] ([SaleOrderID], [ProID], [UnitPrice], [Quantity]) VALUES (12, 12, 4000000, 1)
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Delete]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Delete]
@AdminID int
as
begin
delete from tbl_Admin where AdminID=@AdminID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Insert]
@AdminName varchar(50),
@Password varchar(50)
as
begin
insert into tbl_Admin(AdminName,Password)values (@AdminName,@Password)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_All]
as
begin
select ROW_NUMBER() over(order by OrderID) as No,* from vi_Admin_Order order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_CustID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_CustID]
@CustID int
as
begin
select ROW_NUMBER()over(Order by OrderID) as No, * from vi_Admin_Order where CustID=@CustID order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_CustName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_CustName]
@CustName varchar(50)
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_Order where CustName like @CustName +'%' order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_Deliver]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_Deliver]
as
begin
select ROW_NUMBER() over(order by OrderID) as No,* from vi_Admin_Order where DeliverStatus<>'Deliver' order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_DeliverStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_DeliverStatus]
@DeliverStatus varchar(50)
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_Order where DeliverStatus like @DeliverStatus +'%' order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_NotiStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_NotiStatus]
@CustID int
as
begin
select ROW_NUMBER()over(order by OrderID) as No,* from vi_Admin_Order where CustID=@CustID and NotiStatus<>'-' order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_OrderDate]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_OrderDate]
@OrderDate varchar(11)
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_Order where OrderDate=@OrderDate order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_ShippingAdd]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_ShippingAdd]
@ShippAdd varchar(50)
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_Order where ShippingAdd like @ShippAdd +'%' order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Select_By_Total]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Select_By_Total]
@Total varchar(50)
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_Order where Total like @Total +'%' order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Order_Update]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Order_Update]
@OrderID int,
@DeliverStatus varchar(50)
as
begin
update tbl_Order set DeliverStatus=@DeliverStatus where OrderID=@OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderDetail_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderDetail_Select_All]
@DeliverStatus varchar(50)
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_OrderDetail order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderDetail_Select_By_OrderID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderDetail_Select_By_OrderID]
@OrderID int
as
begin
select ROW_NUMBER() over(order By OrderID)as No,* from vi_Admin_OrderDetail where OrderID=@OrderID order by OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderReport_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderReport_Select_All]
as
begin
select * from vi_Admin_Order_Report
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderReport_Select_CustomerName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderReport_Select_CustomerName]
@CustName varchar(50)
as
begin
select * from vi_Admin_Order_Report where CustName like @CustName + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderReport_Select_DeliverStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderReport_Select_DeliverStatus]
@DeliverStatus varchar(50)
as
begin
select * from vi_Admin_Order_Report where DeliverStatus like @DeliverStatus + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderReport_Select_OrderDate]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderReport_Select_OrderDate]
@OrderDate varchar(11)
as
begin
select * from vi_Admin_Order_Report where OrderDate=@OrderDate
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderReport_Select_ShippingAdd]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderReport_Select_ShippingAdd]
@ShippingAdd varchar(50)
as
begin
select * from vi_Admin_Order_Report where ShippingAdd like @ShippingAdd + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_OrderReport_Select_Total]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_OrderReport_Select_Total]
@Total int
as
begin
select * from vi_Admin_Order_Report where Total like @Total + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_SaleOrder_Select_By_CustID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_SaleOrder_Select_By_CustID]
@CustID int
as
begin
select ROW_NUMBER()over(Order by SaleOrderID) as No, * from vi_Admin_Sale_Order where CustID=@CustID order by SaleOrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_SaleOrderDetail_Select_By_OrderID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_SaleOrderDetail_Select_By_OrderID]
@OrderID int
as
begin
select ROW_NUMBER()over(order by SaleOrderID)As No,* from vi_Admin_Sale_OrderDetail where SaleOrderID=@OrderID order by SaleOrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Select_All]
as
begin
select ROW_NUMBER()over(Order by AdminName)as No,* from tbl_Admin order by AdminName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Select_By_AdminNamePassword]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Select_By_AdminNamePassword]
@AdminName varchar(50),
@Password varchar(50)
as
begin
select ROW_NUMBER()over(Order by AdminName) as No,* from tbl_Admin where AdminName=@AdminName and Password=@Password order by AdminName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Select_By_SearchAdminName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Admin_Select_By_SearchAdminName]
@AdminName varchar(50)
as
begin
select ROW_NUMBER()over(order by AdminName) as No,* from tbl_Admin where AdminName like @AdminName+'%' order by AdminName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Update]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Admin_Update]
@AdminID int,
@AdminName varchar(50),
@Password varchar(50)
as
begin
update tbl_Admin set AdminName=@AdminName, Password=@Password where AdminID=@AdminID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AllowProduct_Insert]
@CatID int,
@ProName varchar(70),
@Price int,
@Quantity int,
@Description varchar(200),
@Status varchar(10),
@CustID int,
@SaleOrderDate varchar(11)
as
begin
insert into tbl_AllowedProduct(CatID,ProName,Price,Quantity,Description) values(@CatID,@ProName,@Price,@Quantity,@Description)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Insert_Image]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Insert_Image]
@AllowProID int,
@Image varchar(100)
as
begin
update tbl_AllowedProduct set Image=@Image where AllowProID=@AllowProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AllowProduct_Select_All]
as
begin
select ROW_NUMBER() over(order by ProName)as No,* from vi_AllowProduct order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_By_MaxProID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_By_MaxProID]
as
begin
select ROW_NUMBER()over(order by AllowProID DESC) as No, * from tbl_AllowedProduct order by AllowProID DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_By_ProID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_By_ProID]
@AllowProID int
as
begin
select ROW_NUMBER()over(order by ProName)as No,* from vi_AllowProduct where AllowProID=@AllowProID order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_By_ProNameCatName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_By_ProNameCatName]
@ProName varchar(70),
@CatName varchar(50)
as
begin
select ROW_NUMBER() over(order by ProName)as No,* from vi_AllowProduct where ProName=@ProName and CatName=@CatName order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_By_SearchCatName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_By_SearchCatName]
@CatName varchar(50)
as
begin
select ROW_NUMBER()over(order by ProName)as No,* from vi_AllowProduct where CatName like @CatName+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_By_SearchPrice]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_By_SearchPrice]
@Price varchar(50)
as
begin
select ROW_NUMBER()over(order by ProName)as No,* from vi_AllowProduct where Price like @Price+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_By_SearchProName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_By_SearchProName]
@ProName varchar(70)
as
begin
select ROW_NUMBER()over(order by ProName)as No,* from vi_AllowProduct where ProName like @ProName+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AllowProduct_Select_CatID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AllowProduct_Select_CatID]
@CatID int
as
begin
select ROW_NUMBER() over(order by ProName)as No,* from vi_AllowProduct where CatID=@CatID order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Category_Delete]
@CatID int
as
begin
delete from tbl_Category where CatID=@CatID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Category_Insert]
@CatName varchar(50)
as
begin
insert into tbl_Category(CatName) values (@CatName)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Category_Select_All]
as
begin
select ROW_NUMBER()over(order by CatName) as No,* from tbl_Category order by CatName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Select_By_CatName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Category_Select_By_CatName]
@CatName varchar(50)
as
begin
select ROW_NUMBER()over(order by CatName)as No,* from tbl_Category where CatName=@CatName order by CatName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Select_By_Product]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Category_Select_By_Product]
as
begin
select ROW_NUMBER()over(order by CatName)as No,* from vi_Category order by CatName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Select_By_Search_CatName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Category_Select_By_Search_CatName]
@CatName varchar(50)
as
begin
select ROW_NUMBER()over (order by CatName)as No,* from tbl_Category where CatName like @CatName +'%' order by CatName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Category_Update]
@CatID int,
@CatName varchar(50)
as
begin
update tbl_Category set CatName=@CatName where CatID=@CatID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Insert]
@CustName varchar(50),
@Address varchar(100),
@Phone varchar(20),
@Email varchar(20),
@NRC varchar(30),
@Password varchar(20),
@CardType varchar(20),
@AccNo varchar(20)
as
begin
insert into tbl_Customer(CustName,Address,Phone,Email,NRC,Password,CardType,AccNo)values(@CustName,@Address,@Phone,@Email,@NRC,@Password,@CardType,@AccNo)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Order_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Order_Report]
@CustID int,
@OrderDate varchar(20)
as
begin
select * from vi_Customer_Order_Report where CustID=@CustID and OrderDate=@OrderDate
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_All]
as
begin
Select Row_Number()Over(Order By CustID) As No, * From tbl_Customer Order By CustID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_CustID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_By_CustID]
@CustID int
as
begin
select ROW_NUMBER()over(order by CustID)as No,* from tbl_Customer where CustID=@CustID order by CustID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_Email]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_By_Email]
@Email varchar(20)
as
begin
Select Row_Number()Over(Order By CustID) As No, * From tbl_Customer where Email=@Email Order By CustID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_SearchAddress]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_By_SearchAddress]
@Address varchar(70)
as
begin
select ROW_NUMBER()over(order by CustName)as No,* from tbl_Customer where Address like @Address+'%' order by CustName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_SearchCustName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_By_SearchCustName]
@CusttName varchar(70)
as
begin
select ROW_NUMBER()over(order by CustName)as No,* from tbl_Customer where CustName like @CusttName+'%' order by CustName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_SearchEmail]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_By_SearchEmail]
@Email varchar(20)
as
begin
select ROW_NUMBER()over(order by CustName)as No,* from tbl_Customer where Email like @Email+'%' order by CustName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_SearchNRC]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_By_SearchNRC]
@nrc varchar(20)
as
begin
select ROW_NUMBER()over(order by CustName)as No,* from tbl_Customer where NRC like @nrc+'%' order by CustName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_By_SearchPhone]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Customer_Select_By_SearchPhone]
@Phone varchar(20)
as
begin
select ROW_NUMBER()over(order by CustName)as No,* from tbl_Customer where Phone like '09'+@Phone+'%' order by CustName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_CustID_By_Email]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_CustID_By_Email]
  @email varchar(20)
  as
  begin
  select CustID from tbl_Customer where Email=@email
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Select_For_LogIn]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_Select_For_LogIn]
@Email varchar(20),
@Password varchar(20)
as
begin
select ROW_NUMBER()over(order by CustID)as No,* from tbl_Customer where Email=@Email and Password=@Password order by CustID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerID_Select_By_ProID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CustomerID_Select_By_ProID]
@ProID int
as
begin
select CustID from vi_Product_Detail where ProID=@ProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Order_Cust_NotiStatus_Update]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Order_Cust_NotiStatus_Update]
@CustID int
as
begin
update tbl_Order set NotiStatus='-' where CustID=@CustID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Order_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Order_Insert]
@OrderDate varchar(11),
@CustID int,
@ShippingAdd varchar(50),
@Total int,
@DeliveryStatus varchar(50)
as
begin
insert into tbl_Order(OrderDate,CustID,ShippingAdd,Total,DeliverStatus)values (@OrderDate,@CustID,@ShippingAdd,@Total,@DeliveryStatus)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Order_NotiStatus_Update]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Order_NotiStatus_Update]
@OrderID int,
@NotiStatus varchar(5)
as
begin
update tbl_Order set NotiStatus=@NotiStatus where OrderID=@OrderID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Order_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Order_Select_All]
as
begin
select * from tbl_Order
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Order_Select_By_NotiStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Order_Select_By_NotiStatus]
@CustID int
as
begin
select * from tbl_Order where CustID=@CustID and NotiStatus<>'-'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_OrderDetail_Insert]
@OrderID int,
@ProID int,
@UnitPrice int,
@Quantity int
as
begin
insert into tbl_OrderDetail(OrderID,ProID,UnitPrice,Quantity)values (@OrderID,@ProID,@UnitPrice,@Quantity)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_OrderDetail_Select_All]
as
begin
select * from tbl_OrderDetail
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Delete]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Delete]
@ProID int
as
begin
delete from tbl_Product where ProID=@ProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Detail_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Product_Detail_Select_All]
@ProID int
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product_Detail where ProID=@ProID order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Insert]
@CatID int,
@ProName varchar(70),
@Price int,
@Quantity int,
@Description varchar(200),
@Status varchar(7)
as
begin
insert into tbl_Product(CatID,ProName,Price,Quantity,Description,Status) values(@CatID,@ProName,@Price,@Quantity,@Description,@Status)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Insert_Image]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Insert_Image]
@ProID int,
@Image varchar(100)
as
begin
update tbl_Product set Image=@Image where ProID=@ProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_All]
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_AllowProductStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_AllowProductStatus]
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where Status='true' and Quantity>0 order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_AllowStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_AllowStatus]
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where Status='true' order by ProName
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_CatID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Product_Select_By_CatID]
@CatID int
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where CatID=@CatID and Quantity=1 and Status='true' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_MaxProID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_MaxProID]
as
begin
select ROW_NUMBER()over(order by ProID DESC) as No, * from vi_Product order by ProID DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_ProID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_ProID]
@ProID int
as
begin
select ROW_NUMBER()over(order by ProName)as No,* from vi_Product where ProID=@ProID order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_ProNameCatName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_ProNameCatName]
@ProName varchar(70),
@CatName varchar(50)
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where ProName=@ProName and CatName=@CatName order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_SearchCatName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_SearchCatName]
@CatName varchar(50)
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where CatID like @CatName+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_SearchPrice]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_SearchPrice]
@Price varchar(50)
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where Price like @Price+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_SearchProName]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_SearchProName]
@ProName varchar(70)
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where ProName like @ProName+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Select_By_SearchQuantity]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Select_By_SearchQuantity]
@Quantity varchar(50)
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_Product where Quantity like @Quantity+'%' order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_SelectImage_By_ProID]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_SelectImage_By_ProID]
@ProID int
as
begin
select ROW_NUMBER()over(Order by ProName)as No,Image from tbl_Product where ProID=@ProID order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Product_Update]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Product_Update]
@ProID int,
@CatID int,
@ProName varchar(70),
@Price int,
@Quantity int,
@Description varchar(200),
@Image varchar(100)
as
begin
update tbl_Product set CatID=@CatID, ProName=@ProName, Price=@Price,Quantity=@Quantity,Description=@Description, Image=@Image where ProID=@ProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SaleOrder_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaleOrder_Insert]
@SaleOrderDate varchar(11),
@CustID int,
@AllowStatus varchar(50)
as
begin
insert into tbl_SaleOrder(SaleOrderDate,CustID,AllowStatus)values (@SaleOrderDate,@CustID,@AllowStatus)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SaleOrder_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaleOrder_Select_All]
as
begin
select * from tbl_SaleOrder
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SaleOrder_Select_By_NotiStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaleOrder_Select_By_NotiStatus]
@CustID int
as
begin
select * from tbl_SaleOrder  where CustID=@CustID and NotiStatus<>'-'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SaleOrderDetail_Insert]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaleOrderDetail_Insert]
@SaleOrderID int,
@ProID int,
@UnitPrice int,
@Quantity int
as
begin
insert into tbl_SaleOrderDetail(SaleOrderID,ProID,UnitPrice,Quantity)values (@SaleOrderID,@ProID,@UnitPrice,@Quantity)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SaleOrderDetail_Report]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaleOrderDetail_Report]
@ProID int
as
begin
select ROW_NUMBER()over(order by ProName) as No, * from vi_SaleOrderDetail_Report where ProID=@ProId order by ProName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SaleOrderDetail_Select_All]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaleOrderDetail_Select_All]
as
begin
select * from tbl_SaleOrderDetail
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_AllowProductStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Update_AllowProductStatus]
@AllowProID int
as
begin
update tbl_AllowedProduct set Status='true' where AllowProID=@AllowProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Product_Quantity]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Update_Product_Quantity]
@ProID int,
@Quantity int
as
begin
update tbl_Product set Quantity=@Quantity where ProID=@ProID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_ProductStatus]    Script Date: 7/4/2023 7:39:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Update_ProductStatus]
@ProID int
as
begin
update tbl_Product set Status='true' where ProID=@ProID
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Order"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 0
               Left = 662
               Bottom = 96
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 195
               Left = 566
               Bottom = 325
               Right = 736
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_OrderDetail"
            Begin Extent = 
               Top = 6
               Left = 416
               Bottom = 136
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Order"
            Begin Extent = 
               Top = 6
               Left = 208
               Bottom = 136
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 81
               Left = 0
               Bottom = 211
               Right = 170
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_OrderDetail"
            Begin Extent = 
               Top = 56
               Left = 35
               Bottom = 186
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_OrderDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_OrderDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_SaleOrder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 102
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_SaleOrderDetail"
            Begin Extent = 
               Top = 102
               Left = 662
               Bottom = 232
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_SaleOrder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_SaleOrderDetail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_OrderDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Admin_Sale_OrderDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_AllowedProduct"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_AllowedProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_AllowedProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 102
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_AllowedProduct"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_AllowProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_AllowProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_AllowedProduct"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Order"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tbl_OrderDetail"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 234
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Customer_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Customer_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Customer_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 102
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[16] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 36
               Left = 546
               Bottom = 166
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "tbl_SaleOrder"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tbl_SaleOrderDetail"
            Begin Extent = 
               Top = 141
               Left = 230
               Bottom = 271
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 174
               Left = 16
               Bottom = 270
               Right = 186
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Product_Detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Product_Detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Product_Detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "tbl_SaleOrder"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_SaleOrderDetail"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 187
               Left = 699
               Bottom = 283
               Right = 869
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Sale_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Sale_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_Sale_Order_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[34] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 102
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Customer"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "tbl_SaleOrder"
            Begin Extent = 
               Top = 111
               Left = 221
               Bottom = 241
               Right = 391
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_SaleOrderDetail"
            Begin Extent = 
               Top = 169
               Left = 9
               Bottom = 299
               Right = 179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_SaleOrderDetail_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_SaleOrderDetail_Report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi_SaleOrderDetail_Report'
GO
USE [master]
GO
ALTER DATABASE [SecondHandMachine] SET  READ_WRITE 
GO
