USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 27/10/2018 08:54:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Address](
	[ID_Address] [int] NOT NULL,
	[Street_Number] [varchar](50) NOT NULL,
	[Neighborhood] [varchar](50) NOT NULL,
	[District] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID_Address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Appointment](
	[ID_Appointment] [uniqueidentifier] NOT NULL,
	[ID_Patient] [uniqueidentifier] NOT NULL,
	[ID_Doctor] [int] NOT NULL,
	[ID_Doctors_Office] [int] NOT NULL,
	[ID_Prescription] [uniqueidentifier] NOT NULL,
	[ID_Health_Care] [int] NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[ID_Appointment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booth]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booth]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Booth](
	[ID_Booth] [int] NOT NULL,
	[Booth] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Booth] PRIMARY KEY CLUSTERED 
(
	[ID_Booth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Certificate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Certificate](
	[ID_Certificate] [int] NOT NULL,
	[Certificate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[ID_Certificate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctor](
	[ID_Employee] [int] NOT NULL,
	[ID_Doctor] [int] NOT NULL,
	[ID_Specialty] [tinyint] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[ID_Doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Doctors_Office]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctors_Office]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctors_Office](
	[ID_Doctors_Office] [int] NOT NULL,
	[ID_Branch] [int] NOT NULL,
	[ID_Booth] [int] NOT NULL,
	[ID_Schedule] [tinyint] NOT NULL,
	[ID_Employee] [int] NOT NULL,
 CONSTRAINT [PK_Doctors_Office] PRIMARY KEY CLUSTERED 
(
	[ID_Doctors_Office] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[ID_Employee] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[First_Surname] [varchar](50) NOT NULL,
	[Second_Surname] [varchar](50) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[Age]  AS (floor(datediff(day,[Birthdate],getdate())/(365.25))),
	[Gender] [char](1) NOT NULL,
	[ID_Address] [int] NOT NULL,
	[Phone_Number] [int] NOT NULL,
	[ID_Certificate] [int] NULL,
	[ID_Role] [tinyint] NOT NULL,
	[ID_Schedule] [tinyint] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeTerritories]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeTerritories](
	[ID_Employee] [int] NOT NULL,
	[TerritoryID] [nvarchar](20) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Expedient]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expedient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expedient](
	[ID_Expedient] [int] NOT NULL,
	[Expedient] [text] NOT NULL,
 CONSTRAINT [PK_Expedient] PRIMARY KEY CLUSTERED 
(
	[ID_Expedient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Health_Care]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Health_Care]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Health_Care](
	[ID_Health_Care] [int] NOT NULL,
	[Height] [decimal](4, 2) NOT NULL,
	[Weight] [decimal](4, 2) NOT NULL,
	[BMI]  AS ([Weight]/([Height]*[Height])),
 CONSTRAINT [PK_Health_Care] PRIMARY KEY CLUSTERED 
(
	[ID_Health_Care] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order Details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nchar](5) NULL,
	[ID_Employee] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipPostalCode] [nvarchar](10) NULL,
	[ShipCountry] [nvarchar](15) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Patient](
	[ID_Patient] [uniqueidentifier] NOT NULL,
	[Patient_num] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[First_Surname] [varchar](50) NOT NULL,
	[Second_Surname] [varchar](50) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[Age]  AS (floor(datediff(day,[Birthdate],getdate())/(365.25))),
	[ID_Address] [int] NOT NULL,
	[ID_Expedient] [int] NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID_Patient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prescription](
	[ID_Prescription] [uniqueidentifier] NOT NULL,
	[ID_Appointment] [uniqueidentifier] NOT NULL,
	[Diagnosis] [text] NOT NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[ID_Prescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Prescription_Product]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prescription_Product](
	[ID_Prescription_Product] [int] NOT NULL,
	[ID_Prescription] [uniqueidentifier] NOT NULL,
	[ID_Product] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Prescription_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Prescription_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Products]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)),
	[UnitsInStock] [smallint] NULL CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)),
	[UnitsOnOrder] [smallint] NULL CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)),
	[ReorderLevel] [smallint] NULL CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)),
	[Discontinued] [bit] NOT NULL CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)),
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Region]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[RegionID] [int] NOT NULL,
	[RegionDescription] [nchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[ID_Role] [tinyint] NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Schedule](
	[ID_Schedule] [tinyint] NOT NULL,
	[Schedule] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[ID_Schedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shippers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Specialty]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specialty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Specialty](
	[ID_Specialty] [tinyint] NOT NULL,
	[Specialty] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Specialty] PRIMARY KEY CLUSTERED 
(
	[ID_Specialty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Territories]    Script Date: 27/10/2018 08:54:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Territories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Territories](
	[TerritoryID] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nchar](50) NOT NULL,
	[RegionID] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (1, N'Ap #718-2941 Dis Road', N'Toronto', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (2, N'278-3424 Mi Rd.', N'Kawerau', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (3, N'2697 At, St.', N'Hudiksvall', N'Gävleborgs län')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (4, N'Ap #471-1259 Imperdiet, Rd.', N'Reus', N'Catalunya')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (5, N'3000 Tortor Avenue', N'Waterbury', N'Connecticut')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (6, N'108 A St.', N'Papudo', N'V')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (7, N'P.O. Box 214, 8209 Mauris. Ave', N'Gisborne', N'NI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (8, N'P.O. Box 664, 774 A Rd.', N'Sluis', N'Zeeland')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (9, N'Ap #749-7039 Mauris St.', N'Montluçon', N'Auvergne')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (10, N'Ap #828-1540 In Rd.', N'Bialystok', N'Podlaskie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (11, N'7925 Dictum Rd.', N'Santander', N'Cantabria')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (12, N'983-6427 Mollis. Ave', N'Massello', N'PIE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (13, N'Ap #649-2331 Ac Rd.', N'Lidingo', N'AB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (14, N'7401 Nunc St.', N'Hoofddorp', N'N.')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (15, N'1147 Neque St.', N'Maracanaú', N'CE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (16, N'P.O. Box 537, 5919 Diam Road', N'Lagos', N'Lagos')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (17, N'6053 Donec St.', N'Kano', N'KN')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (18, N'P.O. Box 951, 8027 Cras Rd.', N'Pukekohe', N'NI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (19, N'811-5796 Pede Avenue', N'Flushing', N'Zeeland')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (20, N'4512 Mi Avenue', N'A Coruña', N'Galicia')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (21, N'P.O. Box 423, 3471 Lectus Road', N'Celle', N'NI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (22, N'7830 Convallis St.', N'Deventer', N'Overijssel')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (23, N'P.O. Box 894, 9985 Ut Avenue', N'Columbia', N'MO')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (24, N'952-2159 Imperdiet Ave', N'Etawah', N'UP')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (25, N'Ap #489-341 Sem Av.', N'Livingston', N'WL')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (26, N'P.O. Box 731, 9846 Sit Street', N'Castelseprio', N'LOM')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (27, N'P.O. Box 638, 1870 Orci St.', N'Ankara', N'Ankara')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (28, N'Ap #947-2858 Amet St.', N'Bydgoszcz', N'Kujawsko-pomorskie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (29, N'866-7791 Cum Rd.', N'Vienna', N'Wie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (30, N'304 Amet Street', N'Luziânia', N'GO')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (31, N'791-3217 Enim St.', N'Montreuil', N'Île-de-France')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (32, N'P.O. Box 419, 3851 Conubia Street', N'Lanark County', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (33, N'280-5463 Orci Av.', N'Dublin', N'Leinster')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (34, N'P.O. Box 182, 4650 Eu Rd.', N'Punta Arenas', N'Magallanes y Antártica Chilena')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (35, N'797-8432 Integer Street', N'Barrhead', N'AB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (36, N'Ap #405-9897 Adipiscing Av.', N'Vienna', N'Wie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (37, N'P.O. Box 983, 3435 Ornare, Rd.', N'San Diego', N'California')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (38, N'Ap #399-4314 Justo Rd.', N'Owensboro', N'KY')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (39, N'Ap #540-9937 Elit Rd.', N'Hamilton', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (40, N'4315 Adipiscing St.', N'Fairbanks', N'AK')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (41, N'Ap #283-1940 Ipsum St.', N'Baie-Comeau', N'QC')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (42, N'8466 Consequat Street', N'Mercedes', N'Heredia')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (43, N'9421 Sit St.', N'Santander', N'CA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (44, N'951-1187 Orci. Rd.', N'Mackay', N'QLD')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (45, N'882-8729 A Street', N'Ogbomosho', N'OY')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (46, N'6966 Orci Rd.', N'Athens', N'GA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (47, N'P.O. Box 559, 7118 Ultrices St.', N'Saumur', N'PA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (48, N'Ap #742-2311 Hendrerit Rd.', N'Bowling Green', N'KY')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (49, N'3196 Elit, Street', N'Ribeirão das Neves', N'MG')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (50, N'594-3294 Varius. Ave', N'Hamburg', N'HH')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (51, N'7375 Augue Ave', N'Onitsha', N'Anambra')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (52, N'P.O. Box 382, 5628 Curabitur Rd.', N'Tokoroa', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (53, N'P.O. Box 793, 4021 Semper St.', N'San Rafael', N'Maule')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (54, N'Ap #464-7868 Nunc Avenue', N'Prato Carnico', N'Friuli-Venezia Giulia')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (55, N'Ap #345-5271 Pede. Street', N'Bettiah', N'Bihar')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (56, N'P.O. Box 606, 5954 Consequat Road', N'Ganshoren', N'Brussels Hoofdstedelijk Gewest')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (57, N'P.O. Box 495, 784 Fusce Ave', N'Göteborg', N'O')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (58, N'P.O. Box 710, 2259 Lorem Rd.', N'Meer', N'AN')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (59, N'293-2237 Dui, Av.', N'Rouen', N'Haute-Normandie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (60, N'851-2028 Magnis St.', N'Göteborg', N'Västra Götalands län')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (61, N'P.O. Box 165, 3850 A, Avenue', N'Laino Castello', N'CAL')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (62, N'891-3399 Sem Ave', N'Aurora', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (63, N'236-3116 Arcu. Av.', N'Opole', N'OP')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (64, N'Ap #307-636 Arcu. Rd.', N'Middelburg', N'Zl')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (65, N'807-1945 Venenatis Av.', N'Calgary', N'AB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (66, N'5232 Massa. Street', N'Feilding', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (67, N'904-5772 Curae; Road', N'Kisi', N'Oyo')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (68, N'Ap #635-3278 Mi Rd.', N'Arica', N'Arica y Parinacota')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (69, N'P.O. Box 667, 1110 A Rd.', N'Kulti-Barakar', N'WB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (70, N'P.O. Box 109, 3258 Sagittis. Road', N'Dunoon', N'Argyllshire')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (71, N'641-7766 Ligula. Av.', N'Galway', N'Connacht')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (72, N'Ap #611-5551 Sed St.', N'Istanbul', N'Ist')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (73, N'P.O. Box 443, 865 Aliquet. Rd.', N'Bhiwandi', N'MH')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (74, N'P.O. Box 391, 2169 Cras Rd.', N'Kumbakonam', N'Tamil Nadu')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (75, N'P.O. Box 586, 7064 Magna Av.', N'Sapele', N'Delta')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (76, N'Ap #731-9748 Blandit. Ave', N'Istanbul', N'Ist')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (77, N'Ap #369-9449 Inceptos Rd.', N'Chanco', N'VII')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (78, N'Ap #669-3897 Bibendum Street', N'Polatli', N'Ank')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (79, N'311-6543 Arcu. Avenue', N'Bozeman', N'MT')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (80, N'Ap #168-2350 Venenatis Avenue', N'Galway', N'C')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (81, N'P.O. Box 793, 9168 Nec Street', N'Uberaba', N'MG')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (82, N'Ap #568-6458 Neque Avenue', N'Beerzel', N'Antwerpen')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (83, N'Ap #288-736 Erat St.', N'Bhavnagar', N'GJ')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (84, N'Ap #358-1983 Molestie Avenue', N'Compiègne', N'PI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (85, N'4338 Id, St.', N'Marche-les-Dames', N'NA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (86, N'Ap #131-8455 Eleifend. St.', N'Foz do Iguaçu', N'PR')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (87, N'1431 Dui. St.', N'Recoleta', N'Metropolitana de Santiago')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (88, N'Ap #933-9125 Sem, Rd.', N'Funtua', N'KT')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (89, N'957-7927 Porttitor St.', N'Matamata', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (90, N'Ap #591-4513 Facilisis, Avenue', N'Recife', N'PE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (91, N'Ap #575-9824 Ullamcorper Avenue', N'Vienna', N'Vienna')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (92, N'Ap #598-2563 Dolor. Rd.', N'Melbourne', N'VIC')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (93, N'845-7626 Ante Street', N'Carapicuíba', N'São Paulo')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (94, N'Ap #260-7561 Facilisis, Rd.', N'Berlin', N'BE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (95, N'P.O. Box 609, 7347 Per Rd.', N'San Nicolás', N'Cartago')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (96, N'Ap #252-6491 Cum Ave', N'San Bernardo', N'RM')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (97, N'6115 Elementum, St.', N'Jacksonville', N'FL')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (98, N'3146 Integer St.', N'Castres', N'Midi-Pyrénées')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (99, N'630-802 Pellentesque. Av.', N'Warri', N'Delta')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (100, N'P.O. Box 954, 9018 Arcu. Rd.', N'Peñaflor', N'RM')
GO
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (101, N'197 Nequ St', N'Macú', N'DE')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c101830a-fb19-259a-ee49-037c3709328b', N'f780380c-68ab-642d-cb49-264e54f8593b', 24, 24, N'3aa173e2-c0ea-1055-d33f-dc0657aab2fa', 24, N'2019-03-30T13:43:42-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7e5dfcde-b4af-aa02-a918-047a9f418bb1', N'7ff613f9-1fd7-6d56-5d6f-d18e03a6dd9c', 27, 27, N'c676a3db-e7ef-5eef-6776-d0cd29cdb392', 27, N'2016-03-18T20:02:48-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'05930675-71bd-885e-4e6a-052b6799e516', N'1b000c31-fb4a-0d32-5309-6c6ea8464089', 83, 83, N'1d582d80-e081-9b30-4356-4c0844a898e9', 83, N'2018-05-19T02:48:39-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e04ff857-d46e-1ec4-c01c-0555687111c8', N'e590a7cd-9bca-05ad-d7b8-1d602af149b8', 31, 31, N'64abee09-44c8-8bff-50cc-8875a529dff5', 31, N'2018-12-23T00:00:53-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'ce230135-9cb4-db7a-9fe1-092b387955bc', N'0958638d-1b58-956d-4533-14ed075aeb09', 75, 75, N'230e96ec-26a9-13e9-9a32-8e918a08f4bd', 75, N'2016-07-17T16:43:10-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b1febe81-8488-b85b-1211-0e7450672d1e', N'8c512dd9-5a30-952e-926c-a9bc3d4ecb37', 58, 58, N'0536ab1c-1de2-3962-4103-dc34772e9d80', 58, N'2017-07-18T18:56:45-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7ebeb01b-a876-ff1d-b1bc-1242529d2ef4', N'ccb8f5d3-cbfc-ae67-186d-d5f4e9306b84', 95, 95, N'1b825267-e1d1-85f9-e226-7de5d0b282f3', 95, N'2018-03-24T21:41:56-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e3c58c99-f2ed-fc05-bbc2-13e49f4e384b', N'60d2aa4b-caed-6350-0b61-179b0ec49572', 94, 94, N'ed21d58b-45df-c8c1-e236-48e0cfb9b691', 94, N'2019-04-14T11:41:43-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'707c741e-400b-44b9-f887-1976701c5516', N'74670f71-cbf8-cb7f-5829-c30bb152e16a', 54, 54, N'0f3ec2c9-444d-ad74-1caf-7e4336c0c6bd', 54, N'2019-03-19T20:58:49-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7cd2432a-2ef7-6c5f-2235-1aab29cf96f6', N'f9d01a60-54e1-c78e-1300-1bc0841cd921', 4, 4, N'edfc3739-bc15-a729-e9af-a91fd2e07f42', 4, N'2017-06-24T15:07:01-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e0cfcc6a-6f23-5ef1-8603-1baa9df67b98', N'e4053898-1c5c-84be-0720-32cca2c73d0e', 79, 79, N'c535704e-ccb5-ef77-9460-7702bfa6c67b', 79, N'2016-10-13T00:12:23-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'caf152c5-18af-e455-75d4-1e57872d0fae', N'a29cda7c-35fb-9a12-1f2e-c5cd795bb177', 63, 63, N'2823c52a-2684-d9df-f1d9-41ce824524c9', 63, N'2018-12-20T10:21:04-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'4bcc3999-af75-a6ae-32f9-1f8a33997ddd', N'55f96315-adaa-6bc0-f3e2-307fbe327645', 41, 41, N'56d51f6b-149c-9ca1-6baa-eb6d9459f278', 41, N'2018-10-22T02:26:42-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'01bcfacf-ffaa-c10c-7ba7-2360442fdcd0', N'391b56ae-f13d-b61d-e05d-03c84d0d2a74', 78, 78, N'c76b8157-72c7-0a6f-78ed-4f96c87c81f6', 78, N'2018-03-06T22:38:21-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'beaab99d-937d-2162-93f7-275db9a3e9f9', N'8ee5c8fa-f26b-bcca-b2ad-4cb838ce6027', 86, 86, N'f574a92a-1698-056c-2796-c93eba93a7e1', 86, N'2018-03-13T03:21:56-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'6399b429-b429-d2a7-fce6-27fe1ffdc35b', N'd97245c7-6413-b347-bcc6-7e0639abd55b', 7, 7, N'239756af-866e-4b04-2db1-2b999454a432', 7, N'2016-07-27T08:27:37-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1b2caeb6-0a71-2cc5-cc06-2b70d753148e', N'32be3b24-7a85-59c6-740b-89f5040f892a', 82, 82, N'67acc854-b1ce-4c50-a0f1-c0dc1023ffd2', 82, N'2018-01-06T08:53:16-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'5247572a-3cdc-279b-66d4-30259941a5df', N'a13ac10b-0ebf-ba49-e0aa-8e118aedb575', 87, 87, N'eac28f87-7a10-5770-01b0-74a80461e843', 87, N'2017-12-06T19:33:09-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b71f0816-f8f1-510e-c117-31d1aa764971', N'355c80a8-b6e1-6dc8-2e9e-f054fcebb38a', 11, 11, N'e15f6803-e2ff-6a2a-14b3-62b1fe62a36a', 11, N'2018-05-14T15:25:37-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'81348090-acd1-5fe4-c0ad-38cf2317ac4b', N'aacda8c0-df9d-144f-c24c-2995d1ae1968', 34, 34, N'28e14c13-d40c-b4a1-e7c3-6310e06b8b17', 34, N'2016-06-24T09:44:44-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'de65fccb-33c8-63e3-09cb-390ad149c34c', N'775d06fe-647b-defc-9e94-58993d907615', 39, 39, N'914be981-bf3d-59b2-5ba7-9f6225c800c0', 39, N'2019-06-12T23:08:01-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c9e3a49f-27cb-2d74-2f46-3a2ebed19255', N'f1cc17b5-f382-99aa-23ec-31185215e41f', 22, 22, N'b76b2f8d-e3db-0eee-91af-66988bbabe37', 22, N'2016-04-23T15:41:12-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c4843d8c-6e21-950f-ae8e-3a2fb027e5a1', N'f25d99c7-5d22-467f-29d6-e7bf7b251fac', 90, 90, N'60f4333a-946b-1bd7-3861-caedf69ebb5a', 90, N'2017-09-15T01:28:13-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7c7eb5b2-eb33-b108-b1d8-3dde193c682c', N'06b5c4a4-15f0-0606-bf2f-b47893548094', 45, 45, N'df5e7ebb-f222-3cbe-c8ec-84ef842e2011', 45, N'2018-04-01T11:04:41-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'2b1df573-e025-5fbe-5729-3eb29b09a32f', N'cc8a4c15-c055-100c-4cb5-8c7df96aa6c6', 9, 9, N'ce6ac6ac-4374-07a6-4d1c-69800c3f250a', 9, N'2018-10-16T06:43:33-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'20ff6c47-3f44-2f49-9252-428723c5b1c6', N'202b4db9-ad4b-0c5b-2d79-37d8c210e61c', 51, 51, N'934c7b8d-2e99-9ef3-2972-4932d561839b', 51, N'2017-12-03T13:21:36-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'becdd3fd-dbd2-d89f-519c-44b4eabeb00d', N'bf1e6d1a-4092-2308-bf53-cd7dde57df64', 5, 5, N'7d4eceaa-609a-58ee-7cfe-fa1194c67593', 5, N'2018-01-09T20:27:52-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'50ebcc61-3f56-319d-cdb4-46f118f3f68b', N'443ed2cd-314d-d665-39c0-6b183c18eb48', 40, 40, N'cffbf04f-4975-6b2b-4fea-256ee29b8c7e', 40, N'2019-09-10T03:12:55-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c7174798-bb48-ab63-da0a-4a8f86e7c76f', N'b5582b8f-13e3-9855-7611-f0c17b424c30', 71, 71, N'12b3a37d-7b50-c445-a001-8b8116a6ffe0', 71, N'2016-09-09T10:51:23-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'9f824633-3580-aab8-09ce-4ca0b28142b1', N'b7f8149b-4b9c-9ccb-cff3-3523987e3e98', 43, 43, N'b0a86665-9443-e6fa-7489-59fdb44e8850', 43, N'2017-02-19T07:56:45-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c4556c8d-84ee-13f3-ca6c-4d4e0fd4889c', N'cdbd6490-783b-d32d-683d-c0b1fcc1ca13', 62, 62, N'6cd2d6f0-3077-8b34-fe06-d406b30cf4a0', 62, N'2016-04-05T08:17:22-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'd30da56b-e857-8aa6-0746-503a66b9baca', N'ffd2f570-acfc-7b85-6c6f-11e7bb08eab1', 35, 35, N'1ff0f1b3-6336-6fce-a517-72c27b6c80dd', 35, N'2016-08-05T03:32:50-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'6409c559-f08e-2ff4-569c-56653a478e40', N'dfa31ab5-7403-ba0e-2e66-1589c617cbb7', 13, 13, N'45f99b09-0176-4853-3fc7-d9bc34546b68', 13, N'2016-01-09T02:00:18-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1e79d589-1d29-f7a6-bbe1-5882d35de078', N'a0ce52e8-f501-732f-3963-44eee7c35058', 70, 70, N'823d440f-46dd-ecda-55ac-5d46cfc4b643', 70, N'2017-02-10T04:00:35-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7be42c36-2f0f-c800-656a-630dbb12b10d', N'bee7cb62-6cc1-89e9-9ff7-1cc7fd094c94', 33, 33, N'93c95649-a2ab-093f-4110-fb360b2e9ac8', 33, N'2016-04-25T02:56:45-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'df6456ad-4c93-0bac-842f-64441e31ad86', N'71c6a676-8ac9-53a4-5e80-4d065ef9343b', 18, 18, N'7023f4d9-7400-8f2d-b0c7-b1efe80b704f', 18, N'2016-10-20T22:11:32-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'548b03c4-d6f7-5b1a-0d84-64899b56752d', N'227193a9-e8b7-0de1-8068-afff84bde835', 73, 73, N'6af1232d-68b6-8e61-0769-936e42866b41', 73, N'2016-09-10T22:21:31-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'60c75b1d-c9a0-92a9-22e9-6557582a99f7', N'453a1f34-1bde-7d9b-da64-471ce953dc14', 93, 93, N'544ce764-dfd2-b34f-24bd-e88801aa8a22', 93, N'2016-02-08T00:23:44-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'6aac0161-e7e7-ffb8-9502-682d14fa4d6e', N'ca182f37-9a28-b143-de73-1ee685859f2e', 14, 14, N'2b120a2a-778d-0911-3422-15943f3f22be', 14, N'2019-01-04T09:34:50-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'aefdaf13-24c0-6987-b066-6a1ecce3473a', N'0dbdb786-ed7b-d1b1-3d60-fb19386900c7', 85, 85, N'85b5dbe7-0e90-c78c-c617-a99e44a05ec4', 85, N'2019-01-21T06:43:20-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'2289bccd-f401-1a00-63d7-6e40ba842f0f', N'c49f55cd-60c0-c535-c111-14f4a81f5a77', 53, 53, N'68ff6100-6d70-8bb2-2e8f-b96be1403055', 53, N'2017-03-26T07:55:13-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'bda96446-454d-dd95-c5ac-70f971498592', N'05bb067b-9926-d25f-0585-3d1666ff1650', 29, 29, N'449d088e-aa64-d3c5-42c2-5d14cf6a3764', 29, N'2017-08-28T11:39:19-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'72579507-5125-a2d0-fd5c-71f603a81b05', N'00918c32-f374-1db6-8a7e-0ec6785610cc', 97, 97, N'1d137b43-5f8a-4a7f-5916-8aece250d506', 97, N'2018-09-05T03:35:05-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'3ab3bb65-e66d-3a65-422e-734f8e5256ae', N'8a797a86-745b-732e-073b-32ab53373a34', 91, 91, N'c72a5345-0071-a014-050d-92625fd547ff', 91, N'2019-11-27T13:24:40-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'4b6004cd-02d5-c49d-3920-73758c5208d0', N'23522bfa-69cc-873b-6f4c-9dfb1adfddd6', 77, 77, N'6de0d1cb-ecf9-f78b-81d7-bd9d92648f2b', 77, N'2019-03-25T00:55:45-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'bd482c5b-a99e-3823-e300-74ade11b0b15', N'fe8a40e3-e5bf-96d7-235d-f547d7b11255', 60, 60, N'0c8a00f4-9930-c28a-9dbe-da5d05f2dc48', 60, N'2016-09-09T01:21:10-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'bd6bcdfd-522b-496c-5962-74f6ea14a72b', N'e5d505de-9b59-fe1d-f188-ba9a5141af44', 48, 48, N'd00b2b35-5ffa-2eba-c0e7-e634159f4db9', 48, N'2019-09-02T09:52:27-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b4966d0b-64b7-8056-f58d-76b956374f8b', N'7536de40-ed81-091a-b8e5-7e5d94fc924e', 56, 56, N'498f80ba-27d2-d908-50bb-d7311aeedc05', 56, N'2017-04-10T16:00:41-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'16d73bfb-c105-24af-dd29-77c1c68d4354', N'90cd26a8-9bb0-3263-f152-c6893c656b2c', 6, 6, N'4b42e411-b9f6-e188-4658-a2cf120581b0', 6, N'2019-05-25T02:14:07-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'93254d16-7db2-aecc-1324-7834372be67f', N'04cf8bf6-1c34-c800-e3d6-832a4225cc76', 64, 64, N'56763933-c0c9-62bd-317f-9911f7b84197', 64, N'2017-11-03T19:53:06-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'98955014-8a0e-7669-e651-78ef70c784f9', N'1ebacb08-fe48-3199-22d4-59b90e76b238', 16, 16, N'53a9809e-2ae8-da0d-52ea-38b14ee5f038', 16, N'2017-06-26T11:35:04-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'ed083579-72f8-cadf-634d-79c2a2313ddb', N'4ac40b05-e41c-8c99-72a0-60fba177a40d', 12, 12, N'4e8d89d6-8f84-439c-a921-c8c90eae547f', 12, N'2018-03-19T01:16:47-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'adc2e52a-b37d-06ee-c5cb-7bb845640fe9', N'f0da02a7-5abd-695b-6736-615199e4319f', 19, 19, N'539dc71b-afd4-f361-4bed-4d7a3edbb16d', 19, N'2017-01-06T11:23:59-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'9d758d68-5bc2-d280-2cd7-7c814fafafa7', N'2d9417b5-80c2-b429-7ef4-f7b5c646ecb4', 42, 42, N'81e6b531-d0cb-1327-f365-7b51c311d8b5', 42, N'2016-11-12T02:04:22-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'952aef21-bd4a-941e-b4bc-7eee1d79b910', N'94b581b0-e33d-a64f-5bf6-49d8bf70c65d', 61, 61, N'a086a72b-ee64-1b35-5d94-2595617ac38c', 61, N'2019-11-19T04:55:47-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'aef90e3f-448f-302b-55ab-7f26e5794a76', N'915d826c-0f2f-9623-3047-de2355828db6', 76, 76, N'292233c7-965b-7ed5-b26c-53c3f893cca0', 76, N'2016-09-11T10:53:26-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'8b72504c-fbad-dc17-bc5c-7fb24e0804b8', N'88bd10e3-acb5-b6a7-2bf1-006778622ff8', 55, 55, N'd223f7b7-e853-14d5-22a2-b6e359e17cfa', 55, N'2017-09-10T06:00:53-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'cfc12003-7f2c-db90-aa36-81053ac8193d', N'2c1ac339-0490-ec05-b3b1-2d6f4726b578', 20, 20, N'eafa95bb-b004-4e40-891c-162d04eb6502', 20, N'2018-07-27T20:34:12-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'a07cd650-033c-ad96-f24d-8a2ca7403403', N'352e0875-5fd9-88da-d31e-396159d41b0b', 15, 15, N'8efbb3d4-d0d9-ed0b-35e7-08cfa0cdb78f', 15, N'2019-05-16T19:07:15-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c883075a-ebf7-a878-8ce6-8d8dcac1ce31', N'812dd551-b641-92a5-f527-862fa908f48b', 37, 37, N'd3800220-4eb0-62e7-e12d-82b4460bdc8c', 37, N'2016-11-24T16:32:22-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'198803ac-6fc3-e6d9-a221-8da4cc6b872b', N'b0746cdc-06a5-57a8-f87d-cefa578ab728', 92, 92, N'691b8fff-a659-304b-41af-b62a1b7fd589', 92, N'2017-07-03T03:56:42-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'78873f61-8b25-8244-9f19-8e0943e79bb2', N'9e760a66-713f-0038-40e7-a8c85ec71764', 68, 68, N'317497f4-fbdf-110d-d74a-d17c908adde4', 68, N'2019-06-18T09:34:41-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e42f5e94-218d-91c5-e444-95d31fccd436', N'926a42c1-f928-ffa2-367e-16bb4c75e3bc', 8, 8, N'765a514b-bf01-5638-f670-569f08231b48', 8, N'2019-12-05T08:25:27-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1358923f-ef54-eec8-ffc3-963691af4233', N'07bf3a2c-8ef7-31ed-6cf4-86d3ac19e369', 96, 96, N'a62a5ae4-cb44-e345-8751-83665bee1c12', 96, N'2017-10-02T11:01:48-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7dfc8b5d-43a6-db38-be6a-983560da6ee6', N'6d76b5d0-df16-7d60-8500-34e3ec5e9724', 89, 89, N'86de1eb2-c80a-5bd5-b532-68098e2400d7', 89, N'2019-03-26T02:26:56-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'a204259b-7dc0-366d-7743-9a048c3cddf1', N'ba807998-de7d-c9d0-cb67-5802cccad15b', 99, 99, N'51aafe11-9707-4cce-7bad-b3cf79316a4f', 99, N'2017-08-17T15:18:31-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'8eeddd7d-8e8d-2d43-ae5f-9b930285b728', N'e7e16473-9d53-ef81-ec88-9b4b5834b390', 66, 66, N'c1e22a59-b7a8-31dc-f0aa-0e2ea3a6a083', 66, N'2017-03-15T19:56:08-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c2e96bc7-4c37-b9f6-732c-9c9e9a951b7b', N'199b84d5-9bf4-c3fc-9a7b-3f8340aa5d34', 10, 10, N'82ebbb90-1257-085e-628d-70466fb6d7b2', 10, N'2016-03-23T17:50:05-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'a2aa304b-36da-7543-ec99-9cc5fd48e26f', N'16c94cda-1a95-3fe1-19bf-78a44b297b0e', 59, 59, N'0d031f68-dca4-1185-e282-1b01694d26d5', 59, N'2017-08-28T06:08:19-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'f25e5e11-7fce-c1b3-c2b0-a38c68e675d5', N'd1c81cb1-4257-b975-21df-72ef2f2b1507', 69, 69, N'92886a36-c7f6-06f6-0ffb-0a379e0f9f73', 69, N'2017-02-22T22:10:22-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b59e2222-a4ee-a199-f7e8-ade4af1a960d', N'22ec784d-ff59-a029-6e17-faf96d5768af', 23, 23, N'5956582c-75a5-9e30-7a4f-3a939a9c9908', 23, N'2017-05-31T20:49:24-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1f8df9d4-b01b-6273-3c6f-b4f3dc21d9c9', N'94192c56-f0d8-5ee8-bc8a-10c409d1d066', 32, 32, N'e4550cb0-9ed9-5848-d31f-bdf4372a3fcb', 32, N'2019-05-28T15:19:22-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'd045ec69-6750-e920-e2e9-b55c8c8aa909', N'2c80bd34-a4b7-dbc0-1096-ad2ac79290ef', 72, 72, N'537454b8-e986-2e65-01ad-e1a95d834ce7', 72, N'2018-08-24T22:35:27-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'ea1061fb-8562-22fa-2d7a-b9bbf36b1e2d', N'3e2a1328-fb6a-3df6-354b-eee6ea16a30f', 57, 57, N'bf14c978-b452-b7c6-d163-113ecb03ebec', 57, N'2018-11-01T11:34:49-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'9a2ff865-0a07-0ea3-92d7-c05c5c7842ab', N'b766f857-3ae3-18d1-952d-4d4e65047c32', 38, 38, N'3eb04abf-1add-810b-86a2-b243211ee59b', 38, N'2016-12-21T18:12:25-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'bdb040a9-8e77-67e2-a620-c08817d799af', N'9ec6bfc8-b826-bf68-c483-78095c7e1ebc', 46, 46, N'0d1c2cbc-9011-2be2-4189-353d4dd1a6f8', 46, N'2017-01-04T01:51:47-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'fb46672f-d7c1-d001-dff6-c0e2a9ba87b2', N'9ddb0e74-3327-6ce7-19b3-9bcc803bdcd3', 26, 26, N'ec38f766-8e1d-2c6e-6900-e73c7f5bfca3', 26, N'2018-11-16T14:58:20-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'316ee306-98a7-d905-bbfe-c12d401a701b', N'3c48d2ab-ae98-f053-4109-3025b19aeab5', 21, 21, N'9c153263-7a0d-532d-8399-dcdc05f3f3ae', 21, N'2018-02-13T17:48:43-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'69b57135-ccf2-964f-c450-c1bda2b0b012', N'373f80b3-c6c2-971f-3385-6401708c4974', 52, 52, N'7180b15e-2020-ac32-e0ee-46c664702020', 52, N'2019-08-21T19:53:57-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'78183aa7-c340-7dff-5e13-c53f8a8331fb', N'd22f5b39-fbc4-65c6-61cd-22b675890b3a', 50, 50, N'a327f898-6e0b-cc66-744c-c5b204b2e180', 50, N'2019-12-31T00:47:57-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'cf71c374-9978-44be-db23-c93d1cb3b783', N'acc7ac3d-e4c3-a956-c9d0-7bf21acdddf2', 1, 1, N'4f85aee7-20a9-5096-0866-f57cea308dd7', 1, N'2017-06-25T07:36:39-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'f5fa3580-e90c-f389-fc4c-cb57dd63a785', N'3ff54c0a-a24b-b265-43e2-727dc915da84', 28, 28, N'5b4d34b4-a906-b054-e982-8f4d301f6b6d', 28, N'2017-08-15T02:40:26-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1dcb6b5f-bf7e-b5e0-a704-cc43fda102d4', N'992e1170-d22f-9298-deda-259c984ec6eb', 47, 47, N'd7ca76e4-6fc1-5dc8-3125-c82593191d0e', 47, N'2018-05-10T03:54:09-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'50556366-c08d-808c-d778-d9521176e89b', N'3721daef-6317-4a8e-6cde-4152b0a32d99', 80, 80, N'a943b183-1092-83db-f06d-f7a7c1e84831', 80, N'2018-04-22T23:30:18-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'448b4000-68fa-0f50-f193-dc43ade38d3f', N'c504b739-8616-fa52-d9a3-f2628042f6be', 98, 98, N'e75c5fa0-f8e2-cfda-3c19-68d0c50da6fc', 98, N'2019-08-01T20:19:30-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'3991e085-0ee4-787b-9ab9-ddf3559113fa', N'ec5cfbdc-090e-ae17-bc38-32d4538f0cb3', 67, 67, N'b05316b8-3638-f242-a8d7-f3bc0b0e0d8c', 67, N'2016-11-10T11:45:01-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'76154508-c3e5-b01d-131b-e32c8e249e4a', N'd051f8cf-6416-eba5-ccc2-76a8dec5391a', 88, 88, N'4ad6b68a-dd3d-9fac-6143-1ddfcdeb73a8', 88, N'2017-12-21T05:14:09-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b7515892-f1bb-ae1d-88a3-e4af6c522b64', N'aea75712-b1bd-08ce-d94d-5e476283d2e6', 81, 81, N'5b42840f-2d63-93c4-d75d-1417501fa93b', 81, N'2019-07-28T19:27:01-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'3ba6620d-21b3-b495-3214-e7216bab33a4', N'9581da49-6406-fc21-5656-3decf2a50e5f', 74, 74, N'fc626072-bc8f-0975-a75c-23d3f1ad02c4', 74, N'2017-03-30T12:59:39-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'af07d558-7bbc-b2cb-1e93-e8c6e33b059d', N'ce3ae3da-8259-6e3d-99ff-8c9b5c1c5a6f', 44, 44, N'3a6ed900-6c6c-9cf8-f67f-1728049b0e60', 44, N'2018-05-13T22:40:52-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1a3f7eef-8add-d5ff-5860-ec4d4b2e20e9', N'5273c724-b699-a129-8379-53a716e36093', 30, 30, N'13224b9f-2ecf-3b1e-968f-ff049769b0ed', 30, N'2018-03-08T10:23:09-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e0752853-10c1-7545-6b37-f666c7a480a6', N'ac490d92-3c75-20cd-7792-a18e6a360886', 2, 2, N'26bfdc5c-d775-37cd-3950-1ce22be6b8af', 2, N'2019-12-27T11:48:20-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e93d15ac-2cc3-6ca5-1bb1-f877831ae8f0', N'1a4b14e4-9210-be61-5e1b-e39ad3e18a63', 100, 100, N'ecc898e7-a18f-4b8d-0159-d532f0a71554', 100, N'2018-12-07T16:48:34-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'53a2f246-38e6-e1b0-022d-fa5df214cca2', N'284be372-f21a-cd9b-52c3-0da44c78d018', 25, 25, N'9aca92d5-726b-87d6-bd3f-82caaaa59e7f', 25, N'2019-01-17T09:23:10-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7c0e0bb4-0d74-d09a-53d7-fb2f195a9ecb', N'c9bf179a-011e-d09e-96f6-8e61b8b03231', 36, 36, N'f61cb4db-141e-e6c6-8c17-5acd492e7ced', 36, N'2018-06-28T00:20:18-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'906addd4-4430-27e4-ee9b-fc13732639e4', N'063587d4-36f3-bf9c-8b64-054456cf635b', 3, 3, N'7cc2de46-a3f1-3cbe-e1ec-52658f881fad', 3, N'2019-05-16T13:36:48-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'27b1ede0-f6ea-e239-0c96-fd6de7abed0b', N'f1247a3a-8e56-bfc5-c388-f02a729c86f6', 49, 49, N'9dd13843-e5df-ef12-6c64-aa6d164f88ae', 49, N'2018-03-07T02:36:14-08:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'd3bf9bd0-605e-c253-023b-febd5ad0954c', N'b4c3f57d-0ee9-c3e6-8015-3452c73ae942', 65, 65, N'7936f94a-dc55-d641-f335-f6667b3d0116', 65, N'2019-10-23T22:21:15-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c444a155-2a08-e284-f570-ff6400c0941f', N'6dbcf483-e282-120d-5285-5db675735233', 84, 84, N'00e3b259-e480-60a0-f39c-5ed5c409624b', 84, N'2018-05-26T12:30:40-07:00')
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'f5ced231-9678-f436-8c22-ffe9ca6ab32a', N'c3fede0f-a871-aab8-397c-5e876b4b8f5e', 17, 17, N'76c0b6d4-ff8f-3f03-9277-b3c8a39bd6b3', 17, N'2016-04-18T22:01:19-07:00')
GO
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (1, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (2, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (3, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (4, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (5, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (6, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (7, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (8, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (9, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (10, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (11, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (12, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (13, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (14, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (15, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (16, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (17, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (18, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (19, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (20, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (21, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (22, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (23, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (24, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (25, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (26, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (27, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (28, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (29, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (30, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (31, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (32, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (33, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (34, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (35, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (36, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (37, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (38, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (39, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (40, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (41, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (42, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (43, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (44, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (45, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (46, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (47, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (48, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (49, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (50, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (51, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (52, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (53, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (54, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (55, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (56, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (57, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (58, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (59, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (60, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (61, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (62, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (63, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (64, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (65, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (66, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (67, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (68, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (69, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (70, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (71, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (72, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (73, N' Pediatria ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (74, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (75, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (76, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (77, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (78, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (79, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (80, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (81, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (82, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (83, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (84, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (85, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (86, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (87, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (88, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (89, N' Urgencias')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (90, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (91, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (92, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (93, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (94, N' Dermatologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (95, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (96, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (97, N'Cardiologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (98, N' Farmacologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (99, N' Oftalmologia ')
INSERT [dbo].[Booth] ([ID_Booth], [Booth]) VALUES (100, N'Cardiologia ')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Elect supplies', N'Blood pressure monitor')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Surgical', N'Gloves, gowns, caps, glasses')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Diagnostic', N'Otoscopes, oftalmoscopes')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Durable equip', N'Wheelchair, walking aids, transfer equipment')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Drugs', N'Antibiotics, antihistaminic, analgesics')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Disp equip', N'syngeries')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Preventions', N'Vaccines')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (1, N'E2P 2E2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (2, N'Q3E 0U3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (3, N'D7B 6K3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (4, N'E2U 5G6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (5, N'K9H 8C7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (6, N'C5Y 8R3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (7, N'Q3J 5T7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (8, N'W9O 0I7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (9, N'Z1U 5Q1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (10, N'A1A 0N1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (11, N'A8Q 8U6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (12, N'R2U 5A0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (13, N'X9P 3S1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (14, N'A3T 2F4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (15, N'R5G 8I9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (16, N'J9H 8Z4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (17, N'L6J 6X6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (18, N'U8G 9A2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (19, N'I7B 6W7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (20, N'R0P 5U0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (21, N'P2K 9I7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (22, N'O9Z 0U2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (23, N'O6V 0U4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (24, N'W3W 4X8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (25, N'L7B 8M3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (26, N'A2K 3V6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (27, N'X8W 0U4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (28, N'V1K 0Z6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (29, N'X5V 0A2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (30, N'F5J 0A1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (31, N'Q8U 6C6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (32, N'X1N 6Y0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (33, N'X8L 9F3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (34, N'I8L 4H7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (35, N'Y9T 0F5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (36, N'G5R 6A0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (37, N'Z7P 0J2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (38, N'M6I 8X5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (39, N'P1L 4R2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (40, N'P6E 8W5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (41, N'K9C 2A9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (42, N'A1M 2Y9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (43, N'P4E 1D9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (44, N'B8Y 6S1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (45, N'W8C 9M3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (46, N'C8Q 5Y7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (47, N'B4Y 5P8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (48, N'S3N 9F6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (49, N'V6C 5A0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (50, N'R2X 4P8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (51, N'X4E 3R7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (52, N'R9L 9I3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (53, N'E0V 7H0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (54, N'X3J 5A5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (55, N'M3W 3L7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (56, N'V5G 8E5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (57, N'P1H 0V6')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (58, N'T9G 4R5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (59, N'Z3B 7R3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (60, N'M8U 5A9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (61, N'L6K 4D9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (62, N'K2E 8F5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (63, N'O4Q 7R8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (64, N'J2R 1D2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (65, N'H9D 6V9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (66, N'A2D 6N8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (67, N'S1B 3I5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (68, N'J8C 6E5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (69, N'Y8G 1K9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (70, N'J3O 8H5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (71, N'X3D 0Z1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (72, N'P9E 8A4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (73, N'B8M 0A1')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (74, N'R0I 7A2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (75, N'Z0B 0I5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (76, N'Q6T 3P4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (77, N'T9Q 2K4')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (78, N'P1M 3L7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (79, N'G2I 8G9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (80, N'M1J 2K9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (81, N'K4J 8W3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (82, N'P6D 3V5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (83, N'N1Y 4M5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (84, N'T9D 5T9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (85, N'H4B 5H0')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (86, N'I2V 6Y8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (87, N'A2I 0A2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (88, N'C2A 0P3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (89, N'M5X 8T9')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (90, N'X7H 1O5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (91, N'H3S 4C2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (92, N'W0F 1S8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (93, N'I4S 6K7')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (94, N'J4H 8Y2')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (95, N'E7I 2G5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (96, N'A9K 9O3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (97, N'R8G 1S3')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (98, N'H6F 0K8')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (99, N'O8B 4I5')
INSERT [dbo].[Certificate] ([ID_Certificate], [Certificate]) VALUES (100, N'G5R 5A4')
GO
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'ALFKI', N'Alfreds Futterkiste', N'Maria Anders', N'Sales Representative', N'Obere Str. 57', N'Berlin', NULL, N'12209', N'Germany', N'030-0074321', N'030-0076545')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'ANATR', N'Ana Trujillo Emparedados y helados', N'Ana Trujillo', N'Owner', N'Avda. de la Constitución 2222', N'México D.F.', NULL, N'05021', N'Mexico', N'(5) 555-4729', N'(5) 555-3745')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'ANTON', N'Antonio Moreno Taquería', N'Antonio Moreno', N'Owner', N'Mataderos  2312', N'México D.F.', NULL, N'05023', N'Mexico', N'(5) 555-3932', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'AROUT', N'Around the Horn', N'Thomas Hardy', N'Sales Representative', N'120 Hanover Sq.', N'London', NULL, N'WA1 1DP', N'UK', N'(171) 555-7788', N'(171) 555-6750')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BERGS', N'Berglunds snabbköp', N'Christina Berglund', N'Order Administrator', N'Berguvsvägen  8', N'Luleå', NULL, N'S-958 22', N'Sweden', N'0921-12 34 65', N'0921-12 34 67')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BLAUS', N'Blauer See Delikatessen', N'Hanna Moos', N'Sales Representative', N'Forsterstr. 57', N'Mannheim', NULL, N'68306', N'Germany', N'0621-08460', N'0621-08924')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BLONP', N'Blondesddsl père et fils', N'Frédérique Citeaux', N'Marketing Manager', N'24, place Kléber', N'Strasbourg', NULL, N'67000', N'France', N'88.60.15.31', N'88.60.15.32')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BOLID', N'Bólido Comidas preparadas', N'Martín Sommer', N'Owner', N'C/ Araquil, 67', N'Madrid', NULL, N'28023', N'Spain', N'(91) 555 22 82', N'(91) 555 91 99')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BONAP', N'Bon app''', N'Laurence Lebihan', N'Owner', N'12, rue des Bouchers', N'Marseille', NULL, N'13008', N'France', N'91.24.45.40', N'91.24.45.41')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BOTTM', N'Bottom-Dollar Markets', N'Elizabeth Lincoln', N'Accounting Manager', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', N'Canada', N'(604) 555-4729', N'(604) 555-3745')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BSBEV', N'B''s Beverages', N'Victoria Ashworth', N'Sales Representative', N'Fauntleroy Circus', N'London', NULL, N'EC2 5NT', N'UK', N'(171) 555-1212', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CACTU', N'Cactus Comidas para llevar', N'Patricio Simpson', N'Sales Agent', N'Cerrito 333', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5555', N'(1) 135-4892')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CENTC', N'Centro comercial Moctezuma', N'Francisco Chang', N'Marketing Manager', N'Sierras de Granada 9993', N'México D.F.', NULL, N'05022', N'Mexico', N'(5) 555-3392', N'(5) 555-7293')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CHOPS', N'Chop-suey Chinese', N'Yang Wang', N'Owner', N'Hauptstr. 29', N'Bern', NULL, N'3012', N'Switzerland', N'0452-076545', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'COMMI', N'Comércio Mineiro', N'Pedro Afonso', N'Sales Associate', N'Av. dos Lusíadas, 23', N'Sao Paulo', N'SP', N'05432-043', N'Brazil', N'(11) 555-7647', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CONSH', N'Consolidated Holdings', N'Elizabeth Brown', N'Sales Representative', N'Berkeley Gardens 12  Brewery', N'London', NULL, N'WX1 6LT', N'UK', N'(171) 555-2282', N'(171) 555-9199')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'DRACD', N'Drachenblut Delikatessen', N'Sven Ottlieb', N'Order Administrator', N'Walserweg 21', N'Aachen', NULL, N'52066', N'Germany', N'0241-039123', N'0241-059428')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'DUMON', N'Du monde entier', N'Janine Labrune', N'Owner', N'67, rue des Cinquante Otages', N'Nantes', NULL, N'44000', N'France', N'40.67.88.88', N'40.67.89.89')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'EASTC', N'Eastern Connection', N'Ann Devon', N'Sales Agent', N'35 King George', N'London', NULL, N'WX3 6FW', N'UK', N'(171) 555-0297', N'(171) 555-3373')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'ERNSH', N'Ernst Handel', N'Roland Mendel', N'Sales Manager', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria', N'7675-3425', N'7675-3426')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FAMIA', N'Familia Arquibaldo', N'Aria Cruz', N'Marketing Assistant', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil', N'(11) 555-9857', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FISSA', N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'Accounting Manager', N'C/ Moralzarzal, 86', N'Madrid', NULL, N'28034', N'Spain', N'(91) 555 94 44', N'(91) 555 55 93')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FOLIG', N'Folies gourmandes', N'Martine Rancé', N'Assistant Sales Agent', N'184, chaussée de Tournai', N'Lille', NULL, N'59000', N'France', N'20.16.10.16', N'20.16.10.17')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FOLKO', N'Folk och fä HB', N'Maria Larsson', N'Owner', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden', N'0695-34 67 21', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FRANK', N'Frankenversand', N'Peter Franken', N'Marketing Manager', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany', N'089-0877310', N'089-0877451')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FRANR', N'France restauration', N'Carine Schmitt', N'Marketing Manager', N'54, rue Royale', N'Nantes', NULL, N'44000', N'France', N'40.32.21.21', N'40.32.21.20')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FRANS', N'Franchi S.p.A.', N'Paolo Accorti', N'Sales Representative', N'Via Monte Bianco 34', N'Torino', NULL, N'10100', N'Italy', N'011-4988260', N'011-4988261')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'FURIB', N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Sales Manager', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal', N'(1) 354-2534', N'(1) 354-2535')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'GALED', N'Galería del gastrónomo', N'Eduardo Saavedra', N'Marketing Manager', N'Rambla de Cataluña, 23', N'Barcelona', NULL, N'08022', N'Spain', N'(93) 203 4560', N'(93) 203 4561')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'GODOS', N'Godos Cocina Típica', N'José Pedro Freyre', N'Sales Manager', N'C/ Romero, 33', N'Sevilla', NULL, N'41101', N'Spain', N'(95) 555 82 82', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'GOURL', N'Gourmet Lanchonetes', N'André Fonseca', N'Sales Associate', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', N'Brazil', N'(11) 555-9482', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'GREAL', N'Great Lakes Food Market', N'Howard Snyder', N'Marketing Manager', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', N'USA', N'(503) 555-7555', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'GROSR', N'GROSELLA-Restaurante', N'Manuel Pereira', N'Owner', N'5ª Ave. Los Palos Grandes', N'Caracas', N'DF', N'1081', N'Venezuela', N'(2) 283-2951', N'(2) 283-3397')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'HANAR', N'Hanari Carnes', N'Mario Pontes', N'Accounting Manager', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', N'Brazil', N'(21) 555-0091', N'(21) 555-8765')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'HILAA', N'HILARION-Abastos', N'Carlos Hernández', N'Sales Representative', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela', N'(5) 555-1340', N'(5) 555-1948')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'HUNGC', N'Hungry Coyote Import Store', N'Yoshi Latimer', N'Sales Representative', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA', N'(503) 555-6874', N'(503) 555-2376')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'HUNGO', N'Hungry Owl All-Night Grocers', N'Patricia McKenna', N'Sales Associate', N'8 Johnstown Road', N'Cork', N'Co. Cork', NULL, N'Ireland', N'2967 542', N'2967 3333')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'ISLAT', N'Island Trading', N'Helen Bennett', N'Marketing Manager', N'Garden House Crowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', N'UK', N'(198) 555-8888', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'KOENE', N'Königlich Essen', N'Philip Cramer', N'Sales Associate', N'Maubelstr. 90', N'Brandenburg', NULL, N'14776', N'Germany', N'0555-09876', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LACOR', N'La corne d''abondance', N'Daniel Tonini', N'Sales Representative', N'67, avenue de l''Europe', N'Versailles', NULL, N'78000', N'France', N'30.59.84.10', N'30.59.85.11')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LAMAI', N'La maison d''Asie', N'Annette Roulet', N'Sales Manager', N'1 rue Alsace-Lorraine', N'Toulouse', NULL, N'31000', N'France', N'61.77.61.10', N'61.77.61.11')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LAUGB', N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'Marketing Assistant', N'1900 Oak St.', N'Vancouver', N'BC', N'V3F 2K1', N'Canada', N'(604) 555-3392', N'(604) 555-7293')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LAZYK', N'Lazy K Kountry Store', N'John Steel', N'Marketing Manager', N'12 Orchestra Terrace', N'Walla Walla', N'WA', N'99362', N'USA', N'(509) 555-7969', N'(509) 555-6221')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LEHMS', N'Lehmanns Marktstand', N'Renate Messner', N'Sales Representative', N'Magazinweg 7', N'Frankfurt a.M.', NULL, N'60528', N'Germany', N'069-0245984', N'069-0245874')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LETSS', N'Let''s Stop N Shop', N'Jaime Yorres', N'Owner', N'87 Polk St. Suite 5', N'San Francisco', N'CA', N'94117', N'USA', N'(415) 555-5938', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LILAS', N'LILA-Supermercado', N'Carlos González', N'Accounting Manager', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', N'Venezuela', N'(9) 331-6954', N'(9) 331-7256')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LINOD', N'LINO-Delicateses', N'Felipe Izquierdo', N'Owner', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', N'Venezuela', N'(8) 34-56-12', N'(8) 34-93-93')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'LONEP', N'Lonesome Pine Restaurant', N'Fran Wilson', N'Sales Manager', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', N'USA', N'(503) 555-9573', N'(503) 555-9646')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'MAGAA', N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Marketing Manager', N'Via Ludovico il Moro 22', N'Bergamo', NULL, N'24100', N'Italy', N'035-640230', N'035-640231')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'MAISD', N'Maison Dewey', N'Catherine Dewey', N'Sales Agent', N'Rue Joseph-Bens 532', N'Bruxelles', NULL, N'B-1180', N'Belgium', N'(02) 201 24 67', N'(02) 201 24 68')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'MEREP', N'Mère Paillarde', N'Jean Fresnière', N'Marketing Assistant', N'43 rue St. Laurent', N'Montréal', N'Québec', N'H1J 1C3', N'Canada', N'(514) 555-8054', N'(514) 555-8055')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'MORGK', N'Morgenstern Gesundkost', N'Alexander Feuer', N'Marketing Assistant', N'Heerstr. 22', N'Leipzig', NULL, N'04179', N'Germany', N'0342-023176', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'NORTS', N'North/South', N'Simon Crowther', N'Sales Associate', N'South House 300 Queensbridge', N'London', NULL, N'SW7 1RZ', N'UK', N'(171) 555-7733', N'(171) 555-2530')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'OCEAN', N'Océano Atlántico Ltda.', N'Yvonne Moncada', N'Sales Agent', N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5333', N'(1) 135-5535')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'OLDWO', N'Old World Delicatessen', N'Rene Phillips', N'Sales Representative', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', N'USA', N'(907) 555-7584', N'(907) 555-2880')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'OTTIK', N'Ottilies Käseladen', N'Henriette Pfalzheim', N'Owner', N'Mehrheimerstr. 369', N'Köln', NULL, N'50739', N'Germany', N'0221-0644327', N'0221-0765721')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'PARIS', N'Paris spécialités', N'Marie Bertrand', N'Owner', N'265, boulevard Charonne', N'Paris', NULL, N'75012', N'France', N'(1) 42.34.22.66', N'(1) 42.34.22.77')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'PERIC', N'Pericles Comidas clásicas', N'Guillermo Fernández', N'Sales Representative', N'Calle Dr. Jorge Cash 321', N'México D.F.', NULL, N'05033', N'Mexico', N'(5) 552-3745', N'(5) 545-3745')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'PICCO', N'Piccolo und mehr', N'Georg Pipps', N'Sales Manager', N'Geislweg 14', N'Salzburg', NULL, N'5020', N'Austria', N'6562-9722', N'6562-9723')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'PRINI', N'Princesa Isabel Vinhos', N'Isabel de Castro', N'Sales Representative', N'Estrada da saúde n. 58', N'Lisboa', NULL, N'1756', N'Portugal', N'(1) 356-5634', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'QUEDE', N'Que Delícia', N'Bernardo Batista', N'Accounting Manager', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', N'Brazil', N'(21) 555-4252', N'(21) 555-4545')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'QUEEN', N'Queen Cozinha', N'Lúcia Carvalho', N'Marketing Assistant', N'Alameda dos Canàrios, 891', N'Sao Paulo', N'SP', N'05487-020', N'Brazil', N'(11) 555-1189', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'QUICK', N'QUICK-Stop', N'Horst Kloss', N'Accounting Manager', N'Taucherstraße 10', N'Cunewalde', NULL, N'01307', N'Germany', N'0372-035188', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'RANCH', N'Rancho grande', N'Sergio Gutiérrez', N'Sales Representative', N'Av. del Libertador 900', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 123-5555', N'(1) 123-5556')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'RATTC', N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'Assistant Sales Representative', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', N'USA', N'(505) 555-5939', N'(505) 555-3620')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'REGGC', N'Reggiani Caseifici', N'Maurizio Moroni', N'Sales Associate', N'Strada Provinciale 124', N'Reggio Emilia', NULL, N'42100', N'Italy', N'0522-556721', N'0522-556722')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'RICAR', N'Ricardo Adocicados', N'Janete Limeira', N'Assistant Sales Agent', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', N'Brazil', N'(21) 555-3412', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'RICSU', N'Richter Supermarkt', N'Michael Holz', N'Sales Manager', N'Grenzacherweg 237', N'Genève', NULL, N'1203', N'Switzerland', N'0897-034214', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'ROMEY', N'Romero y tomillo', N'Alejandra Camino', N'Accounting Manager', N'Gran Vía, 1', N'Madrid', NULL, N'28001', N'Spain', N'(91) 745 6200', N'(91) 745 6210')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SANTG', N'Santé Gourmet', N'Jonas Bergulfsen', N'Owner', N'Erling Skakkes gate 78', N'Stavern', NULL, N'4110', N'Norway', N'07-98 92 35', N'07-98 92 47')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SAVEA', N'Save-a-lot Markets', N'Jose Pavarotti', N'Sales Representative', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', N'USA', N'(208) 555-8097', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SEVES', N'Seven Seas Imports', N'Hari Kumar', N'Sales Manager', N'90 Wadhurst Rd.', N'London', NULL, N'OX15 4NB', N'UK', N'(171) 555-1717', N'(171) 555-5646')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SIMOB', N'Simons bistro', N'Jytte Petersen', N'Owner', N'Vinbæltet 34', N'Kobenhavn', NULL, N'1734', N'Denmark', N'31 12 34 56', N'31 13 35 57')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SPECD', N'Spécialités du monde', N'Dominique Perrier', N'Marketing Manager', N'25, rue Lauriston', N'Paris', NULL, N'75016', N'France', N'(1) 47.55.60.10', N'(1) 47.55.60.20')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SPLIR', N'Split Rail Beer & Ale', N'Art Braunschweiger', N'Sales Manager', N'P.O. Box 555', N'Lander', N'WY', N'82520', N'USA', N'(307) 555-4680', N'(307) 555-6525')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'SUPRD', N'Suprêmes délices', N'Pascale Cartrain', N'Accounting Manager', N'Boulevard Tirou, 255', N'Charleroi', NULL, N'B-6000', N'Belgium', N'(071) 23 67 22 20', N'(071) 23 67 22 21')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'THEBI', N'The Big Cheese', N'Liz Nixon', N'Marketing Manager', N'89 Jefferson Way Suite 2', N'Portland', N'OR', N'97201', N'USA', N'(503) 555-3612', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'THECR', N'The Cracker Box', N'Liu Wong', N'Marketing Assistant', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', N'USA', N'(406) 555-5834', N'(406) 555-8083')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'TOMSP', N'Toms Spezialitäten', N'Karin Josephs', N'Marketing Manager', N'Luisenstr. 48', N'Münster', NULL, N'44087', N'Germany', N'0251-031259', N'0251-035695')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'TORTU', N'Tortuga Restaurante', N'Miguel Angel Paolino', N'Owner', N'Avda. Azteca 123', N'México D.F.', NULL, N'05033', N'Mexico', N'(5) 555-2933', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'TRADH', N'Tradição Hipermercados', N'Anabela Domingues', N'Sales Representative', N'Av. Inês de Castro, 414', N'Sao Paulo', N'SP', N'05634-030', N'Brazil', N'(11) 555-2167', N'(11) 555-2168')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'TRAIH', N'Trail''s Head Gourmet Provisioners', N'Helvetius Nagy', N'Sales Associate', N'722 DaVinci Blvd.', N'Kirkland', N'WA', N'98034', N'USA', N'(206) 555-8257', N'(206) 555-2174')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'VAFFE', N'Vaffeljernet', N'Palle Ibsen', N'Sales Manager', N'Smagsloget 45', N'Århus', NULL, N'8200', N'Denmark', N'86 21 32 43', N'86 22 33 44')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'VICTE', N'Victuailles en stock', N'Mary Saveley', N'Sales Agent', N'2, rue du Commerce', N'Lyon', NULL, N'69004', N'France', N'78.32.54.86', N'78.32.54.87')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'VINET', N'Vins et alcools Chevalier', N'Paul Henriot', N'Accounting Manager', N'59 rue de l''Abbaye', N'Reims', NULL, N'51100', N'France', N'26.47.15.10', N'26.47.15.11')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'WANDK', N'Die Wandernde Kuh', N'Rita Müller', N'Sales Representative', N'Adenauerallee 900', N'Stuttgart', NULL, N'70563', N'Germany', N'0711-020361', N'0711-035428')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'WARTH', N'Wartian Herkku', N'Pirkko Koskitalo', N'Accounting Manager', N'Torikatu 38', N'Oulu', NULL, N'90110', N'Finland', N'981-443655', N'981-443655')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'WELLI', N'Wellington Importadora', N'Paula Parente', N'Sales Manager', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', N'Brazil', N'(14) 555-8122', NULL)
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'WHITC', N'White Clover Markets', N'Karl Jablonski', N'Owner', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'WA', N'98128', N'USA', N'(206) 555-4112', N'(206) 555-4115')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'WILMK', N'Wilman Kala', N'Matti Karttunen', N'Owner/Marketing Assistant', N'Keskuskatu 45', N'Helsinki', NULL, N'21240', N'Finland', N'90-224 8858', N'90-224 8858')
INSERT [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'WOLZA', N'Wolski  Zajazd', N'Zbyszek Piestrzeniewicz', N'Owner', N'ul. Filtrowa 68', N'Warszawa', NULL, N'01-012', N'Poland', N'(26) 642-7012', N'(26) 642-7012')
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (1, 1, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (2, 2, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (3, 3, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (4, 4, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (5, 5, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (6, 6, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (7, 7, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (8, 8, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (9, 9, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (10, 10, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (11, 11, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (12, 12, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (13, 13, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (14, 14, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (15, 15, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (16, 16, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (17, 17, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (18, 18, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (19, 19, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (20, 20, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (21, 21, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (22, 22, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (23, 23, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (24, 24, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (25, 25, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (26, 26, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (27, 27, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (28, 28, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (29, 29, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (30, 30, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (31, 31, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (32, 32, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (33, 33, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (34, 34, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (35, 35, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (36, 36, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (37, 37, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (38, 38, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (39, 39, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (40, 40, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (41, 41, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (42, 42, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (43, 43, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (44, 44, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (45, 45, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (46, 46, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (47, 47, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (48, 48, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (49, 49, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (50, 50, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (51, 51, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (52, 52, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (53, 53, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (54, 54, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (55, 55, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (56, 56, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (57, 57, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (58, 58, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (59, 59, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (60, 60, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (61, 61, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (62, 62, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (63, 63, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (64, 64, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (65, 65, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (66, 66, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (67, 67, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (68, 68, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (69, 69, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (70, 70, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (71, 71, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (72, 72, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (73, 73, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (74, 74, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (75, 75, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (76, 76, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (77, 77, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (78, 78, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (79, 79, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (80, 80, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (81, 81, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (82, 82, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (83, 83, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (84, 84, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (85, 85, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (86, 86, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (87, 87, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (88, 88, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (89, 89, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (90, 90, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (91, 91, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (92, 92, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (93, 93, 5)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (94, 94, 4)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (95, 95, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (96, 96, 2)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (97, 97, 6)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (98, 98, 1)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (99, 99, 3)
INSERT [dbo].[Doctor] ([ID_Employee], [ID_Doctor], [ID_Specialty]) VALUES (100, 100, 2)
GO
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (1, 1, 1, 3, 1)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (2, 2, 2, 2, 2)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (3, 3, 3, 1, 3)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (4, 4, 4, 4, 4)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (5, 5, 5, 2, 5)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (6, 6, 6, 4, 6)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (7, 7, 7, 2, 7)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (8, 8, 8, 3, 8)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (9, 9, 9, 3, 9)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (10, 10, 10, 2, 10)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (11, 11, 11, 1, 11)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (12, 12, 12, 4, 12)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (13, 13, 13, 2, 13)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (14, 14, 14, 1, 14)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (15, 15, 15, 4, 15)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (16, 16, 16, 4, 16)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (17, 17, 17, 1, 17)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (18, 18, 18, 2, 18)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (19, 19, 19, 4, 19)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (20, 20, 20, 4, 20)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (21, 21, 21, 1, 21)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (22, 22, 22, 1, 22)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (23, 23, 23, 1, 23)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (24, 24, 24, 2, 24)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (25, 25, 25, 2, 25)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (26, 26, 26, 4, 26)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (27, 27, 27, 2, 27)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (28, 28, 28, 1, 28)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (29, 29, 29, 2, 29)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (30, 30, 30, 2, 30)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (31, 31, 31, 3, 31)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (32, 32, 32, 3, 32)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (33, 33, 33, 3, 33)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (34, 34, 34, 2, 34)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (35, 35, 35, 3, 35)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (36, 36, 36, 2, 36)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (37, 37, 37, 2, 37)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (38, 38, 38, 4, 38)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (39, 39, 39, 1, 39)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (40, 40, 40, 3, 40)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (41, 41, 41, 4, 41)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (42, 42, 42, 1, 42)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (43, 43, 43, 3, 43)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (44, 44, 44, 3, 44)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (45, 45, 45, 3, 45)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (46, 46, 46, 4, 46)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (47, 47, 47, 3, 47)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (48, 48, 48, 1, 48)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (49, 49, 49, 4, 49)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (50, 50, 50, 2, 50)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (51, 51, 51, 3, 51)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (52, 52, 52, 4, 52)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (53, 53, 53, 3, 53)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (54, 54, 54, 1, 54)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (55, 55, 55, 3, 55)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (56, 56, 56, 2, 56)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (57, 57, 57, 3, 57)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (58, 58, 58, 4, 58)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (59, 59, 59, 2, 59)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (60, 60, 60, 1, 60)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (61, 61, 61, 4, 61)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (62, 62, 62, 1, 62)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (63, 63, 63, 2, 63)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (64, 64, 64, 3, 64)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (65, 65, 65, 4, 65)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (66, 66, 66, 3, 66)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (67, 67, 67, 2, 67)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (68, 68, 68, 4, 68)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (69, 69, 69, 2, 69)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (70, 70, 70, 3, 70)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (71, 71, 71, 4, 71)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (72, 72, 72, 3, 72)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (73, 73, 73, 1, 73)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (74, 74, 74, 3, 74)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (75, 75, 75, 3, 75)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (76, 76, 76, 3, 76)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (77, 77, 77, 2, 77)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (78, 78, 78, 1, 78)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (79, 79, 79, 4, 79)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (80, 80, 80, 2, 80)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (81, 81, 81, 3, 81)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (82, 82, 82, 1, 82)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (83, 83, 83, 3, 83)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (84, 84, 84, 1, 84)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (85, 85, 85, 4, 85)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (86, 86, 86, 2, 86)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (87, 87, 87, 1, 87)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (88, 88, 88, 3, 88)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (89, 89, 89, 1, 89)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (90, 90, 90, 1, 90)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (91, 91, 91, 2, 91)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (92, 92, 92, 2, 92)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (93, 93, 93, 3, 93)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (94, 94, 94, 4, 94)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (95, 95, 95, 4, 95)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (96, 96, 96, 2, 96)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (97, 97, 97, 2, 97)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (98, 98, 98, 2, 98)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (99, 99, 99, 2, 99)
INSERT [dbo].[Doctors_Office] ([ID_Doctors_Office], [ID_Branch], [ID_Booth], [ID_Schedule], [ID_Employee]) VALUES (100, 100, 100, 2, 100)
GO
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (26, N'Blaze', N'Rodgers', N'Knox', CAST(N'1967-08-30' AS Date), N'M', 26, 2034837593, 26, 2, 6)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (47, N'Demetria', N'Webb', N'Gonzalez', CAST(N'1977-10-12' AS Date), N'M', 47, 2008727275, 47, 2, 5)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (51, N'John', N'Hanson', N'Juarez', CAST(N'1934-04-02' AS Date), N'M', 51, 1139915085, 51, 2, 5)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (72, N'Mannix', N'Dejesus', N'Horton', CAST(N'1932-07-11' AS Date), N'M', 72, 2018845008, 72, 2, 3)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (74, N'Raja', N'Dickson', N'Ashley', CAST(N'1999-09-03' AS Date), N'M', 74, 1446250643, 74, 2, 5)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (75, N'Willow', N'Elliott', N'Rosales', CAST(N'1971-10-24' AS Date), N'M', 75, 1855388130, 75, 3, 3)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (76, N'Wade', N'Barber', N'Roman', CAST(N'1986-01-07' AS Date), N'M', 76, 1953173216, 76, 3, 4)
INSERT [dbo].[Employee] ([ID_Employee], [Name], [First_Surname], [Second_Surname], [Birthdate], [Gender], [ID_Address], [Phone_Number], [ID_Certificate], [ID_Role], [ID_Schedule]) VALUES (98, N'Avye', N'Hendrix', N'Travis', CAST(N'2008-07-23' AS Date), N'M', 98, 1088801400, 98, 1, 6)
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (1, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (2, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (3, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (4, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (5, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (6, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (7, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (8, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (9, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (10, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (11, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (12, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (13, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (14, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (15, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (16, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (17, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (18, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (19, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (20, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (21, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (22, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (23, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (24, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (25, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (26, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (27, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (28, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (29, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (30, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (31, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (32, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (33, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (34, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (35, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (36, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (37, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (38, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (39, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (40, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (41, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (42, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (43, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (44, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (45, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (46, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (47, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (48, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (49, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (50, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (51, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (52, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (53, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (54, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (55, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (56, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (57, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (58, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (59, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (60, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (61, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (62, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (63, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (64, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (65, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (66, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (67, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (68, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (69, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (70, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (71, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (72, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (73, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (74, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (75, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (76, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (77, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (78, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (79, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (80, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (81, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (82, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (83, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (84, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (85, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (86, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (87, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (88, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (89, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (90, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (91, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (92, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (93, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (94, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (95, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (96, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (97, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (98, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (99, N'Inicio Expedient')
INSERT [dbo].[Expedient] ([ID_Expedient], [Expedient]) VALUES (100, N'Inicio Expedient')
GO
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (1, CAST(0.83 AS Decimal(4, 2)), CAST(1.41 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (2, CAST(0.51 AS Decimal(4, 2)), CAST(7.44 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (3, CAST(0.79 AS Decimal(4, 2)), CAST(4.39 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (4, CAST(1.86 AS Decimal(4, 2)), CAST(8.50 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (5, CAST(1.32 AS Decimal(4, 2)), CAST(7.69 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (6, CAST(0.92 AS Decimal(4, 2)), CAST(5.60 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (7, CAST(0.91 AS Decimal(4, 2)), CAST(9.33 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (8, CAST(0.51 AS Decimal(4, 2)), CAST(3.80 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (9, CAST(0.64 AS Decimal(4, 2)), CAST(6.73 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (10, CAST(1.39 AS Decimal(4, 2)), CAST(2.69 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (11, CAST(1.16 AS Decimal(4, 2)), CAST(9.25 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (12, CAST(1.84 AS Decimal(4, 2)), CAST(0.28 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (13, CAST(1.56 AS Decimal(4, 2)), CAST(2.65 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (14, CAST(1.37 AS Decimal(4, 2)), CAST(5.26 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (15, CAST(0.88 AS Decimal(4, 2)), CAST(0.44 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (16, CAST(0.80 AS Decimal(4, 2)), CAST(4.29 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (17, CAST(1.74 AS Decimal(4, 2)), CAST(1.72 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (18, CAST(1.92 AS Decimal(4, 2)), CAST(1.24 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (19, CAST(0.60 AS Decimal(4, 2)), CAST(5.33 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (20, CAST(0.88 AS Decimal(4, 2)), CAST(7.94 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (21, CAST(0.76 AS Decimal(4, 2)), CAST(7.25 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (22, CAST(1.70 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (23, CAST(0.84 AS Decimal(4, 2)), CAST(9.66 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (24, CAST(1.41 AS Decimal(4, 2)), CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (25, CAST(1.50 AS Decimal(4, 2)), CAST(0.65 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (26, CAST(1.40 AS Decimal(4, 2)), CAST(3.51 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (27, CAST(1.11 AS Decimal(4, 2)), CAST(0.07 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (28, CAST(1.10 AS Decimal(4, 2)), CAST(9.74 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (29, CAST(1.05 AS Decimal(4, 2)), CAST(8.64 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (30, CAST(1.78 AS Decimal(4, 2)), CAST(2.30 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (31, CAST(1.86 AS Decimal(4, 2)), CAST(9.34 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (32, CAST(0.68 AS Decimal(4, 2)), CAST(7.92 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (33, CAST(1.82 AS Decimal(4, 2)), CAST(7.98 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (34, CAST(1.83 AS Decimal(4, 2)), CAST(4.48 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (35, CAST(1.45 AS Decimal(4, 2)), CAST(0.50 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (36, CAST(1.72 AS Decimal(4, 2)), CAST(4.17 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (37, CAST(1.54 AS Decimal(4, 2)), CAST(6.44 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (38, CAST(1.78 AS Decimal(4, 2)), CAST(8.46 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (39, CAST(0.57 AS Decimal(4, 2)), CAST(2.24 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (40, CAST(0.53 AS Decimal(4, 2)), CAST(5.50 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (41, CAST(1.80 AS Decimal(4, 2)), CAST(1.92 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (42, CAST(1.27 AS Decimal(4, 2)), CAST(3.28 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (43, CAST(0.81 AS Decimal(4, 2)), CAST(2.57 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (44, CAST(1.03 AS Decimal(4, 2)), CAST(1.80 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (45, CAST(1.20 AS Decimal(4, 2)), CAST(4.99 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (46, CAST(0.76 AS Decimal(4, 2)), CAST(4.85 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (47, CAST(0.63 AS Decimal(4, 2)), CAST(5.82 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (48, CAST(1.18 AS Decimal(4, 2)), CAST(7.02 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (49, CAST(0.91 AS Decimal(4, 2)), CAST(2.55 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (50, CAST(1.34 AS Decimal(4, 2)), CAST(2.06 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (51, CAST(1.29 AS Decimal(4, 2)), CAST(8.39 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (52, CAST(0.83 AS Decimal(4, 2)), CAST(0.67 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (53, CAST(1.28 AS Decimal(4, 2)), CAST(1.08 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (54, CAST(0.56 AS Decimal(4, 2)), CAST(9.35 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (55, CAST(1.14 AS Decimal(4, 2)), CAST(6.69 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (56, CAST(0.53 AS Decimal(4, 2)), CAST(6.26 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (57, CAST(1.97 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (58, CAST(1.80 AS Decimal(4, 2)), CAST(0.11 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (59, CAST(1.28 AS Decimal(4, 2)), CAST(5.59 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (60, CAST(0.69 AS Decimal(4, 2)), CAST(4.94 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (61, CAST(0.50 AS Decimal(4, 2)), CAST(5.17 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (62, CAST(0.69 AS Decimal(4, 2)), CAST(4.42 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (63, CAST(0.97 AS Decimal(4, 2)), CAST(0.61 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (64, CAST(1.63 AS Decimal(4, 2)), CAST(8.05 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (65, CAST(1.64 AS Decimal(4, 2)), CAST(2.70 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (66, CAST(1.27 AS Decimal(4, 2)), CAST(8.11 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (67, CAST(0.79 AS Decimal(4, 2)), CAST(9.23 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (68, CAST(0.79 AS Decimal(4, 2)), CAST(5.59 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (69, CAST(1.63 AS Decimal(4, 2)), CAST(6.78 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (70, CAST(1.99 AS Decimal(4, 2)), CAST(8.96 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (71, CAST(0.57 AS Decimal(4, 2)), CAST(9.33 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (72, CAST(1.30 AS Decimal(4, 2)), CAST(9.25 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (73, CAST(1.16 AS Decimal(4, 2)), CAST(7.80 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (74, CAST(0.66 AS Decimal(4, 2)), CAST(4.15 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (75, CAST(0.59 AS Decimal(4, 2)), CAST(8.57 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (76, CAST(1.74 AS Decimal(4, 2)), CAST(8.56 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (77, CAST(1.31 AS Decimal(4, 2)), CAST(1.36 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (78, CAST(1.94 AS Decimal(4, 2)), CAST(4.34 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (79, CAST(1.97 AS Decimal(4, 2)), CAST(7.79 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (80, CAST(1.74 AS Decimal(4, 2)), CAST(9.74 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (81, CAST(0.68 AS Decimal(4, 2)), CAST(8.51 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (82, CAST(0.86 AS Decimal(4, 2)), CAST(2.82 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (83, CAST(1.82 AS Decimal(4, 2)), CAST(2.70 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (84, CAST(1.02 AS Decimal(4, 2)), CAST(1.11 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (85, CAST(1.03 AS Decimal(4, 2)), CAST(2.26 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (86, CAST(1.31 AS Decimal(4, 2)), CAST(2.61 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (87, CAST(1.47 AS Decimal(4, 2)), CAST(4.76 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (88, CAST(0.72 AS Decimal(4, 2)), CAST(8.98 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (89, CAST(0.56 AS Decimal(4, 2)), CAST(4.17 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (90, CAST(1.42 AS Decimal(4, 2)), CAST(0.94 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (91, CAST(1.03 AS Decimal(4, 2)), CAST(7.91 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (92, CAST(0.63 AS Decimal(4, 2)), CAST(7.37 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (93, CAST(1.60 AS Decimal(4, 2)), CAST(9.12 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (94, CAST(1.65 AS Decimal(4, 2)), CAST(7.41 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (95, CAST(0.89 AS Decimal(4, 2)), CAST(1.18 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (96, CAST(0.80 AS Decimal(4, 2)), CAST(5.13 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (97, CAST(1.89 AS Decimal(4, 2)), CAST(4.81 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (98, CAST(1.30 AS Decimal(4, 2)), CAST(6.36 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (99, CAST(1.21 AS Decimal(4, 2)), CAST(0.03 AS Decimal(4, 2)))
INSERT [dbo].[Health_Care] ([ID_Health_Care], [Height], [Weight]) VALUES (100, CAST(1.31 AS Decimal(4, 2)), CAST(3.92 AS Decimal(4, 2)))
GO
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'236e8805-ec72-cca5-af99-00743f14aa42', 50, N'Simon', N'Dunlap', N'Espinoza', CAST(N'2007-07-17' AS Date), 50, 50)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f6a7fbf9-5062-7e40-8044-01459d305a6d', 33, N'Ursa', N'Shannon', N'Rowe', CAST(N'1934-06-17' AS Date), 33, 33)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'78618688-0bc7-0e90-ab5a-01b0505c5382', 58, N'Amy', N'Kennedy', N'Blackwell', CAST(N'1991-12-12' AS Date), 58, 58)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'97b4416d-d90e-356d-e0e2-035e36046bd2', 26, N'Wynter', N'Best', N'Merritt', CAST(N'1920-08-23' AS Date), 26, 26)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'7a9b29b1-c99e-b16c-79d6-07a2047d1332', 39, N'Anika', N'Hale', N'Golden', CAST(N'1938-07-23' AS Date), 39, 39)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a2f09389-6595-b6c3-eec7-1130cbef606e', 10, N'Brooke', N'Williams', N'Hyde', CAST(N'1965-11-15' AS Date), 10, 10)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1dc8695d-1dc7-6059-cb74-113455e4cff6', 59, N'Rinah', N'Higgins', N'Warren', CAST(N'1930-06-20' AS Date), 59, 59)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ca178a13-9cfe-052b-9ff3-142cc33828e8', 61, N'Nicole', N'Cherry', N'Hodges', CAST(N'1979-08-22' AS Date), 61, 61)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2551878e-63db-70c5-37a1-14d02bda2257', 2, N'Yasir', N'Clayton', N'Shaffer', CAST(N'2002-03-03' AS Date), 2, 2)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0cd3caa9-f7d5-7b66-b138-1c99b3de1fd6', 55, N'Gage', N'Hodge', N'Cabrera', CAST(N'1979-08-27' AS Date), 55, 55)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'13f82e2a-aacf-8331-4480-2070b554c7ac', 88, N'Taylor', N'Hurley', N'Leon', CAST(N'1988-04-20' AS Date), 88, 88)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'81f5f76b-a0d6-abdb-9332-241a829800a0', 38, N'Lawrence', N'Fleming', N'Cruz', CAST(N'1955-02-14' AS Date), 38, 38)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'6510ea92-8e4b-e481-0464-24d09e91f3c3', 16, N'Whoopi', N'Larsen', N'Bonner', CAST(N'1954-03-20' AS Date), 16, 16)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0eec795b-0b08-a955-9182-26b3d2bbab1a', 89, N'Zelda', N'Hess', N'Massey', CAST(N'1978-06-28' AS Date), 89, 89)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e0d022de-a68f-3ea3-0ce9-28edcbef1d20', 40, N'Cruz', N'Tillman', N'Terrell', CAST(N'1938-09-05' AS Date), 40, 40)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'99ae45fa-f0b9-a996-7e21-2bc4cc8ae8fa', 87, N'Bradley', N'Crane', N'Rose', CAST(N'1951-11-17' AS Date), 87, 87)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'411809f0-8a78-fef5-2087-2ca5f65392fb', 69, N'Duncan', N'Franco', N'Boyer', CAST(N'1957-11-09' AS Date), 69, 69)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'fc0b4495-e57a-e4e3-065a-2f974bd6ee65', 82, N'Paula', N'Holmes', N'Riggs', CAST(N'2007-06-22' AS Date), 82, 82)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f28ccf8f-5207-cf9b-99c5-3065b6bc8d0d', 42, N'Noah', N'Hammond', N'Fleming', CAST(N'2017-03-06' AS Date), 42, 42)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'528bec5f-3f1b-2ee1-0332-31e7be3bb804', 20, N'Donovan', N'Bowers', N'Molina', CAST(N'2003-12-07' AS Date), 20, 20)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'c4433255-a24e-e419-145f-3352b2677faf', 96, N'Amanda', N'Moody', N'Woods', CAST(N'1976-09-19' AS Date), 96, 96)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0be14e7b-4076-75bf-4d79-3553828dc85b', 75, N'Kareem', N'Castaneda', N'Mann', CAST(N'1980-03-17' AS Date), 75, 75)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4a6bdc77-4407-d218-c02c-3a66edb819e5', 44, N'Isabelle', N'Coleman', N'Morse', CAST(N'1998-03-24' AS Date), 44, 44)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'af19ddac-d40f-6934-5a19-3a7ec94c4732', 64, N'Miriam', N'Carson', N'Simmons', CAST(N'1948-07-30' AS Date), 64, 64)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'35ca97d5-9b09-93c4-0955-447716751ee9', 15, N'Ora', N'Cortez', N'Dillard', CAST(N'1999-10-26' AS Date), 15, 15)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'897b0534-0f79-9f41-3bb5-45b3c8b9db9c', 11, N'Charlotte', N'Norris', N'Contreras', CAST(N'1961-07-17' AS Date), 11, 11)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1442d949-0ad3-d3ae-2486-4796585cc729', 3, N'Jonah', N'Rodriguez', N'Cannon', CAST(N'1977-02-13' AS Date), 3, 3)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ef7ae5a9-fae0-6ab7-c312-4856a545c22b', 56, N'Rachel', N'Browning', N'Rosario', CAST(N'1983-11-18' AS Date), 56, 56)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'5b70f654-dfd9-8434-d01e-4b17febb2f88', 17, N'Natalie', N'Patterson', N'Wooten', CAST(N'1926-10-12' AS Date), 17, 17)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'12b15ada-d164-5f62-1777-4c18d2e2fe7f', 43, N'Phelan', N'Bradshaw', N'Wall', CAST(N'2016-02-24' AS Date), 43, 43)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f7081a1e-fad4-3020-76df-4eb487b95fa2', 51, N'Malik', N'Martinez', N'Meadows', CAST(N'1988-01-23' AS Date), 51, 51)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'b718eac9-c652-80b7-391f-53274bff9a21', 48, N'Aline', N'Gates', N'Wood', CAST(N'1934-10-14' AS Date), 48, 48)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'dbd4e013-8c7a-c1e0-2e54-53dbbfd4f1db', 6, N'Yolanda', N'Mcbride', N'Blankenship', CAST(N'1964-04-29' AS Date), 6, 6)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ef3d65e7-4eec-858b-d69d-546c1a2e429d', 90, N'Caesar', N'Rosales', N'Schmidt', CAST(N'1963-05-03' AS Date), 90, 90)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'd775f51f-5eb0-556e-bc20-55cbf2b72f1e', 91, N'Tanisha', N'Stokes', N'Haynes', CAST(N'1942-07-24' AS Date), 91, 91)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f3d6961f-b2ce-72dd-5c6d-5602f151a838', 65, N'Gil', N'Johns', N'Bowen', CAST(N'2007-07-05' AS Date), 65, 65)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'da775daa-1cba-ad72-f1fa-5997823ca442', 97, N'Odette', N'Patel', N'Boyle', CAST(N'1973-02-21' AS Date), 97, 97)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'10f46be1-62cd-160f-aaaf-5b270907f200', 31, N'Hilda', N'Walton', N'Gutierrez', CAST(N'1980-07-25' AS Date), 31, 31)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'23efeabc-54a2-2ec5-40e8-60fff667c2ac', 76, N'Aphrodite', N'Riggs', N'Glenn', CAST(N'1962-07-16' AS Date), 76, 76)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'fd5f3ffd-7f5a-ffce-d069-68ea9be0dcc3', 8, N'Indira', N'Benson', N'Harmon', CAST(N'2005-04-28' AS Date), 8, 8)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'81cd60ae-d99f-c7e4-5f52-6950bdb5d693', 12, N'Quinlan', N'Rivera', N'Quinn', CAST(N'1992-01-08' AS Date), 12, 12)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4a5fc430-ad6f-6d7c-03b1-6a0e88863105', 63, N'Oprah', N'Jefferson', N'Stone', CAST(N'1943-02-09' AS Date), 63, 63)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'31632c05-37c1-f71e-77e0-6a998afea67b', 22, N'Kasper', N'Castaneda', N'Black', CAST(N'1989-09-27' AS Date), 22, 22)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'225443d7-7b05-9ad8-a936-6b08bcea2b23', 86, N'Zephania', N'Hayes', N'Savage', CAST(N'1933-06-08' AS Date), 86, 86)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'd2035137-93a9-6d3a-bb50-6cbf36230913', 84, N'Germane', N'Jarvis', N'Rice', CAST(N'1929-03-07' AS Date), 84, 84)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'907f80bf-98f1-7a71-40c8-6d4363b13c3c', 21, N'Cruz', N'Richardson', N'Olsen', CAST(N'1981-07-30' AS Date), 21, 21)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'7d91f715-132c-0f33-5299-7002f490730f', 92, N'Samson', N'Leon', N'Briggs', CAST(N'1944-05-22' AS Date), 92, 92)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'33d24847-6184-a179-50c0-70395c65eb31', 36, N'Kylan', N'Rocha', N'Kennedy', CAST(N'2011-06-30' AS Date), 36, 36)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'fe626cf1-c0bb-f8e5-adbe-75552bfa852c', 14, N'Zephania', N'Solis', N'Irwin', CAST(N'1957-09-27' AS Date), 14, 14)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f10548ac-10fb-a4a4-99c2-767e8faa64e4', 79, N'Whitney', N'Roach', N'Newton', CAST(N'1953-08-06' AS Date), 79, 79)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'894973ed-9179-1d55-20e0-783f8ab631a2', 98, N'Elmo', N'Burris', N'Tillman', CAST(N'1946-10-01' AS Date), 98, 98)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'3334a950-dd58-a397-2bbf-7901c3a621bf', 35, N'Maggy', N'Sandoval', N'Ball', CAST(N'1985-04-04' AS Date), 35, 35)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0a92f29f-83b3-72f1-4843-7a90730fb5fa', 27, N'Stuart', N'Russell', N'Mckinney', CAST(N'1965-11-26' AS Date), 27, 27)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'410cee3e-1938-f13f-694e-818145f4df1a', 70, N'Ulric', N'Clayton', N'Benton', CAST(N'1965-01-01' AS Date), 70, 70)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'dc1a2ff4-4512-a8a2-72af-81d1e8f9d9f3', 93, N'Steven', N'Parsons', N'Wells', CAST(N'2011-03-17' AS Date), 93, 93)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2ca96b7b-2473-7a6c-ccd5-84d23df22fe9', 53, N'Paula', N'Robertson', N'Emerson', CAST(N'1923-10-26' AS Date), 53, 53)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ea73a693-d27d-44c9-b83e-873af89164d3', 24, N'Nehru', N'Hayes', N'Osborne', CAST(N'1920-11-26' AS Date), 24, 24)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'6f287764-5759-f93e-eec4-89042e8b40e3', 9, N'Macey', N'Stokes', N'Calderon', CAST(N'2012-05-24' AS Date), 9, 9)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f13ba914-d7a2-5798-de34-9057fdb32165', 77, N'Veda', N'Delgado', N'Kane', CAST(N'2004-07-08' AS Date), 77, 77)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'8a344320-c641-b150-a801-9356617b66b8', 32, N'Jesse', N'Knapp', N'Gutierrez', CAST(N'1976-10-01' AS Date), 32, 32)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a61afa0e-6b39-7fc4-e3af-96851a4556e0', 46, N'Rhoda', N'Sims', N'Sanford', CAST(N'1948-12-21' AS Date), 46, 46)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e8e00075-78bf-9355-bff9-9b392109da85', 68, N'Zachary', N'Robbins', N'Schneider', CAST(N'1958-02-06' AS Date), 68, 68)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'57a64fcf-e324-41f2-0715-9b3ed40196ae', 37, N'Jeanette', N'French', N'Mejia', CAST(N'1998-12-31' AS Date), 37, 37)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a1e57c2b-81db-3468-2e09-9df0ff6b380f', 83, N'Barry', N'Roach', N'Pickett', CAST(N'2007-12-12' AS Date), 83, 83)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'5c2a992b-0658-921d-e169-a0fd46ede55b', 47, N'Victor', N'Wheeler', N'Fischer', CAST(N'1962-08-12' AS Date), 47, 47)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'77437142-e589-15a6-7b96-a13bdc22386a', 52, N'Uta', N'Compton', N'Horne', CAST(N'1986-11-16' AS Date), 52, 52)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1d8f3423-8772-19c2-4abd-a2485b8d5007', 29, N'Isaac', N'Burke', N'David', CAST(N'1961-04-21' AS Date), 29, 29)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e0429c7a-760e-6332-ae69-a32903922b5f', 80, N'Ryan', N'Walters', N'Hoffman', CAST(N'1983-01-23' AS Date), 80, 80)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'04fae3e3-7bfa-02c1-d116-a4c6d4c9f2f7', 28, N'Bert', N'Roy', N'Hunt', CAST(N'1952-03-14' AS Date), 28, 28)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'529a1723-1d0a-afba-bb45-a68284d47340', 5, N'Tanek', N'Riley', N'Lamb', CAST(N'2001-02-27' AS Date), 5, 5)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'82e6f24b-c61b-6827-e5ae-a96525cc30fb', 30, N'Pearl', N'Campos', N'Cooper', CAST(N'1975-07-09' AS Date), 30, 30)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'b8087e22-faa6-ed16-ac8e-aa0727876cfc', 99, N'Ingrid', N'Holmes', N'Holland', CAST(N'1930-01-13' AS Date), 99, 99)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'faa39634-e4fa-1072-50e8-ac8a4e619262', 62, N'Howard', N'Herring', N'Dale', CAST(N'1941-09-02' AS Date), 62, 62)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'48fdaaff-b3d5-4797-22d0-ad7910453654', 1, N'Gretchen', N'Wheeler', N'Whitney', CAST(N'1994-02-21' AS Date), 1, 1)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0335afdd-69ad-37c7-abd8-ad9ca827b5d1', 23, N'Ivan', N'Rodgers', N'Frazier', CAST(N'2000-11-17' AS Date), 23, 23)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'454ab953-2c44-31ba-21db-af7c6807ac8c', 60, N'Brennan', N'Carr', N'Carpenter', CAST(N'2002-03-05' AS Date), 60, 60)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'942e0052-af51-3e91-25ca-b1a94bb378f0', 7, N'Dalton', N'Alford', N'Keith', CAST(N'2007-12-27' AS Date), 7, 7)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'9a110178-b756-62df-8cd8-b64cf02a1496', 73, N'Eric', N'Golden', N'Mayer', CAST(N'1974-09-24' AS Date), 73, 73)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0d6a852f-1ec6-b21a-9a61-ba787a78fd8e', 66, N'Uriah', N'Ellison', N'Pearson', CAST(N'1935-09-17' AS Date), 66, 66)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4858d04c-4e3f-2486-4100-bb4b561d7e53', 85, N'Zenia', N'Irwin', N'Cherry', CAST(N'1958-01-05' AS Date), 85, 85)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'8e3ba4a0-f535-9e94-8a78-c3a73c794e2c', 34, N'Graham', N'Sanford', N'Weiss', CAST(N'1993-07-10' AS Date), 34, 34)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'7ab7c62b-0ae2-e0c0-e0bb-ca5ef339062b', 25, N'Carly', N'Rasmussen', N'Petersen', CAST(N'1921-05-21' AS Date), 25, 25)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ba7c9c5f-9d91-848c-26e5-cb67301e9e46', 74, N'Cody', N'Blanchard', N'Cooper', CAST(N'2017-05-01' AS Date), 74, 74)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ef5b869a-3542-f84b-5dee-d414e944ff33', 100, N'Jonah', N'Roy', N'Lindsey', CAST(N'1969-03-08' AS Date), 100, 100)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e7f5ae17-dab0-3490-6d29-d908297fff9a', 19, N'Whilemina', N'Pope', N'Conrad', CAST(N'2007-08-29' AS Date), 19, 19)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'827e5e54-126c-5132-a63c-de88f6792d70', 54, N'Mark', N'Mayo', N'Lancaster', CAST(N'2007-07-29' AS Date), 54, 54)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4a8385ce-392a-fa67-1d79-dfcbc02021c3', 67, N'Cadman', N'Johns', N'Flowers', CAST(N'1964-10-09' AS Date), 67, 67)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f2073a06-0651-f4c8-41ca-e357e275d5aa', 94, N'Yeo', N'Ortiz', N'Mendez', CAST(N'1975-10-30' AS Date), 94, 94)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'c5969782-19cf-3062-c089-e7ca87f881fa', 71, N'Cairo', N'Bishop', N'Guy', CAST(N'2015-10-11' AS Date), 71, 71)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'cda05441-3b0d-945a-684e-e89f23ba41fc', 45, N'Philip', N'Coleman', N'Barnes', CAST(N'1995-02-08' AS Date), 45, 45)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1dac8041-d40b-68ba-9350-ea04276b022d', 4, N'Unity', N'Tanner', N'Hood', CAST(N'1951-06-30' AS Date), 4, 4)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2c71c252-1f8a-3936-a611-ea8d5b95f791', 18, N'Garrett', N'Dillard', N'Sandoval', CAST(N'1997-09-01' AS Date), 18, 18)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e88f7e2f-6059-4654-6340-eba69dc32a1f', 57, N'Dorian', N'Vincent', N'Eaton', CAST(N'1991-07-31' AS Date), 57, 57)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'd1667044-fea3-82e6-6c0d-ef144bd8e6ae', 78, N'Abbot', N'Contreras', N'House', CAST(N'1941-09-02' AS Date), 78, 78)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'447d7a86-3287-96c4-e6a1-f503ff0cd374', 95, N'Calvin', N'Walter', N'Curtis', CAST(N'2005-04-22' AS Date), 95, 95)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'6a62a036-0394-af85-926a-f5aae4e7566b', 49, N'Hiroko', N'Merrill', N'Greer', CAST(N'2007-07-07' AS Date), 49, 49)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a2388fa0-9af9-9b5c-1102-f925c00016b8', 72, N'Christian', N'Rosa', N'Rose', CAST(N'1931-07-20' AS Date), 72, 72)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2c5a7935-e13b-c3d3-43ed-fa038d6248d0', 81, N'Hillary', N'Boyle', N'Fuller', CAST(N'1962-11-28' AS Date), 81, 81)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e8de6aef-5741-c5d7-5618-fc5f90609799', 13, N'Mariam', N'Conner', N'Phillips', CAST(N'2015-10-15' AS Date), 13, 13)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'110ee57c-5736-874f-f150-fcf75b781ae0', 41, N'Stella', N'Spencer', N'Langley', CAST(N'1933-03-25' AS Date), 41, 41)
GO
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6b7f6743-5c7d-40d1-852f-00b50a9e4478', N'470c812e-5b77-4c8e-a02f-c70b51b32b99', N'Unsp injury of great saphenous at lower leg level, left leg')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'3db958b7-1c79-4b22-af3f-04204d887c06', N'8fa78fbf-e594-417a-8e18-d2953c638dc6', N'Epidural hemorrhage w LOC of 6 hours to 24 hours')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a3e04902-6ee9-44eb-8ef0-04d7f8eab3de', N'5e710424-1cf3-484f-8eb2-4144b2be2e9d', N'Accidental malfunction of unsp larger firearm, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ba5c4cac-1487-400c-a460-0b3de89fd7f9', N'7300bf83-eb90-49e7-a3c3-3fea3ebce081', N'Drown due to (nonpowered) inflatable craft sinking')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c8c5529e-48b6-4008-a5ba-0b88daeca02c', N'0d9a92bf-613f-4fcd-99dc-c07472cc3a0d', N'Contusion and laceration of cerebrum, unspecified')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a38d8bea-f7bf-499d-a577-0db3c9f784bb', N'347561ad-aa28-4b30-bb53-16f2a3000fa8', N'Medial dislocation of unsp ulnohumeral joint, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9e84fe8a-539d-4ad4-9403-100eaf23cfb5', N'e5f0158a-b7ce-4668-94e5-c29faf5dc34a', N'Crushed by other nonvenomous reptiles, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'73adfa27-012c-4fff-969c-10f2c328964a', N'628c4689-0d32-4dab-93b5-0285710866af', N'Corrosion of first degree of unspecified foot, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9ebfc42e-53db-4605-9047-124f79f2515d', N'21b73ef1-3252-4cb0-bcfd-33f8b5498cca', N'Passenger in 3-whl mv injured in clsn w oth mv nontraf, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'320a1b55-945b-426a-9927-1491f67ecd8a', N'9b882d55-8c89-41aa-b966-10d98fb432cd', N'Complete traumatic MCP amputation of left ring finger, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'50dc37f8-ca71-4f4b-b960-154c7a18cd2d', N'cc21e661-eb10-4f3c-8380-0796e1695218', N'Ant cord syndrome at unsp level of thor spinal cord, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'd7be94a7-3cbe-4f9c-a974-189e3902b5cf', N'2ef8b403-c45a-4280-802b-5c92d161eff1', N'Other superficial bite of throat, subsequent encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'570beaad-a52c-4ce7-a221-1cb78afb5188', N'fa5d3b31-e13e-45dc-a919-0102166c2da7', N'Personal history of abuse in childhood')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'91652f9c-2e32-4d71-8e5b-1e21d573decd', N'5c86ab07-d104-4cfe-9ab2-c39acd2a73f7', N'Torus fx lower end of unsp humerus, subs for fx w nonunion')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'5bf53324-c51a-4e6e-8618-1e43e3e2b8bd', N'bfd67584-8bd0-4109-a5be-d4985b842d35', N'Multiple fractures of ribs, left side, init for opn fx')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'06e1acde-8e64-41a4-8e5c-20bba2d3576b', N'827001f5-2338-4f71-8b26-271231b119a9', N'Other fracture of sixth cervical vertebra')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'2780a0ba-0b8d-4c3b-9e6b-20efb9082c82', N'750673b3-e72c-40f2-812d-796664561ba4', N'Fall from bed')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'48cfc50e-95ea-4e7c-ab0d-282ef59a5275', N'858e9906-974d-4fd1-bab3-dad0231238c4', N'Traum subrac hem w LOC of unsp duration, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c518b7dc-28de-4c5d-b903-2994348d82d1', N'a599e5af-4596-4d6d-9186-706226421c38', N'Wedge comprsn fx third lum vert, subs for fx w delay heal')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'29182c7d-bd10-4f5b-8fa1-2c98804f3846', N'a586652a-284f-4003-89be-0f884adca659', N'Poisoning by unsp drugs acting on muscles, undet, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f4cf42f9-319c-4d3f-9d84-2f1db7325b4d', N'2e9798cf-73b4-4c6f-8cc1-400bffc5563c', N'Superficial foreign body, unspecified knee, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'e538ef22-3daf-4b77-aaec-306ffad459ad', N'37394a00-f49c-4d29-ab5b-2154382a1b9c', N'Mix cndct/snrl hear loss,uni,r ear,w unrestr hear cntra side')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ca38e070-640a-4de5-8f4a-31d4542651b3', N'3c594f21-fb0e-4940-95ca-e21703250779', N'Trichomonal prostatitis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'def6bee6-7add-4875-a752-352708406875', N'd86a7b26-14ba-4e44-9ad1-07f4aa29818b', N'War op involving intentl restrict of air/airwy, milt, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ef774e65-cc2b-4175-b3ea-374408034c0a', N'22ebdb66-59f8-4c8a-9185-e097bd79bd3e', N'Drug/chem diab with prolif diab rtnop without mclr edema, bi')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'74772524-c24e-4988-831b-38746fd073c0', N'd791670d-eb3d-4a10-9aeb-4474f00bd7e4', N'Other superficial bite of right lesser toe(s)')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'07ef387b-5d84-7a6f-bf05-38c9d4f4516a', N'960397df-7eba-5a91-38a0-f257e7d6f4f8', N'Nondisp fx of medial phalanx of l mid fngr, init for opn fx')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'da8700ab-1783-4e2e-8742-39c8b47e92c0', N'03687750-093b-451e-8e61-1170a34f5e25', N'Nondisp fx of proximal phalanx of unsp great toe, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c7fc8603-cdf2-49b3-b05b-3c142ced9658', N'32cb579b-5659-4ad2-938d-0013555832f2', N'Disp fx of medial phalanx of right little finger, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9aeab5c6-e1ee-4252-a0b0-45001a95dbe1', N'edfd976d-571a-4aa4-a7cf-f36f13960915', N'Burn involving larynx and trachea with lung, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'8811f58b-4f3a-4670-93ff-48490aa2646b', N'd676b82b-dd7f-4cbf-b060-903e2dfc3c66', N'Heart transplant failure')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'122ffb72-e9a9-4307-8811-4e1ab108c876', N'339780a9-ed09-4527-b33f-2601c4096dd0', N'Oth traum displ spondylolysis of 4th cervcal vert, 7thK')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ca54d1da-6b6e-42c7-b5e5-4f2468dfd095', N'c7f04e09-2861-4709-bc3d-5bd163eb62e3', N'Nondisp commnt fx shaft of l fibula, 7thJ')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'b44d502f-a787-4dfc-ae73-4fe2e2f7c504', N'e647ce6c-1614-453d-a667-b6f4a78bdb70', N'Traumatic rupture of left ulnar collateral ligament, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'553ac81a-585f-4fa0-a7dd-507bb0ee542e', N'9cadc8a6-6804-4273-b19d-d7d38583c1a6', N'Maternal care for fetal problem, unsp, first trimester, oth')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7a970a84-d08a-4531-9eab-54c261b02144', N'2ae5a47e-dcbe-4438-ba3e-a481eab9d2c5', N'Open wound of eyelid and periocular area')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9f938d47-a90e-45dc-b24d-575ac53c8f4d', N'37f5dffc-5369-407c-8428-c9d461d47747', N'Toxic effect of insecticides, accidental, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ba1708c5-c2d6-4a05-aa07-5bb36a22ef4f', N'974c2308-acda-4cdb-a3cd-c14177db76a6', N'Person outside car injured in clsn w hv veh in traf, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'01d2731e-2e40-4885-b441-5e30a5beaf5f', N'ac4976fc-ee34-4775-9365-ee49a5ea975c', N'Disp fx of lateral condyle of r femr, 7thP')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'1ffc2920-89f9-d590-edc3-5feb6bc2b919', N'22e14f95-a3b9-87be-c77d-7736dfd9d1b0', N'Displ spiral fx shaft of ulna, unsp arm, 7thR')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'73ad3bcb-6870-4681-b768-65865a85937b', N'60ce30b6-7285-4236-b7e2-845ffc2c2eea', N'Oth physl fx upper end of r fibula, subs for fx w routn heal')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'd1ffd8c0-f356-4e66-9b2e-65d7f817f372', N'f0dcaea8-8c11-42b5-a736-dd2a8876ae09', N'Corrosion of other parts of respiratory tract, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f2ef6c97-2a59-45c8-a29e-65e7a4fd4699', N'c4a8a41b-4f74-4b12-8147-f6bc72c97a9a', N'Fall on or from playground slide, initial encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'fedfd5b1-09f1-4b11-a102-66fcdc54b6f5', N'0c9319ab-dfea-484d-9901-3a305d190609', N'Nondisp fx of unsp ulna styloid pro, 7thQ')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'69343c56-5c5c-4c6c-a540-67b695bde2ed', N'13bf6a30-e426-4ec8-a100-7b1a4350959f', N'Nondisp fx of shaft of 2nd MC bone, l hand, 7thK')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'720a2c8e-74ef-4dce-8271-683242db6cd5', N'fb5842ff-6d65-48af-a0c9-76b70c14fdf2', N'Osteopathy after poliomyelitis, unspecified forearm')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f63b600f-3ec0-45c0-8d10-684b0737146a', N'f67aa62e-6b5d-44c6-a26b-1c0d6d9cb95f', N'Blister (nonthermal) of breast, unsp breast, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'dd7038aa-7723-4614-beb6-6bca55ddcb0d', N'57e47758-b65f-4694-a5d2-13427a59be01', N'Malfunction of tracheostomy stoma')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f731842d-6217-4bd4-9983-7167a31270d5', N'a4287083-5f78-4fea-9ced-e19b68fc661c', N'Corrosion of second degree of forehead and cheek')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7fe6f23c-e528-42d9-9e97-71baf4f04670', N'664eb83a-6556-4db6-83a7-accbb9473dd4', N'Rheumatoid nodule, unspecified ankle and foot')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'01ba22de-a525-4817-9d4f-72ff78aef45e', N'b833690c-4241-4d0f-9f2a-2f1d16047ec1', N'Adverse effect of cephalospor/oth beta-lactm antibiot, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6951c310-3d6f-4106-ae5c-7548e8f69059', N'c2cc32d0-b708-4deb-beed-bedfcabc3b64', N'Legal intervnt w firearm disch, law enforc offl inj, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'5c3dde31-835d-492d-949f-80298fe83137', N'5ca37b81-4a1b-4c00-bab2-8d42f0cfc5de', N'Congenital absence and aplasia of penis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'45a6a5ea-313a-4b92-b666-8235c5d17998', N'dfe5be42-8141-4a31-9634-7c916a99d4de', N'Toxic effect of phenol and phenol homologues, assault, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'5b36faed-b96a-4ba3-bab5-848b13d7fede', N'dd56fbec-d2c4-4a49-a16b-3543316bf90d', N'Other contact with other marine mammals, initial encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'86675269-c4ee-4f94-ad91-8c1f77c2c00c', N'451823ee-8f9c-44c0-9d3e-9910b4f7b541', N'Laceration with foreign body of unsp breast, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'e3e615ca-e8d2-4cf0-988b-8c7c1b723756', N'4106cdb1-bce6-4982-9bbd-d7026de8a853', N'Atrophy of globe, left eye')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6cde1be2-8466-4e28-b14a-8f71b6ea3100', N'90dc6967-e58e-419b-b326-903398a0814a', N'Other injury due to other accident to merchant ship')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a4339cbd-0300-409b-aff9-964c55f26790', N'2fae5f2f-c29e-44e9-a4c4-41b861590547', N'Unsp fx unsp femur, subs for opn fx type I/2 w nonunion')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a425c8fb-a6e0-4884-966f-985404b2a957', N'a8a5a092-35e3-4a9b-9ee7-f13f993d1b62', N'Disp fx of glenoid cavity of scapula, right shoulder, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'3bc682b9-5827-4a01-b6b4-98a85b2f53a7', N'5457e9ca-1963-491b-bd06-18beec57a539', N'Other stimulant abuse with intoxication, unspecified')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'be15c6e3-bcaa-43f4-9362-98c0be1e0de0', N'ae10825b-fde5-485e-a28e-8151da761475', N'Laceration of brachial artery, left side')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'dc31e42d-b1f5-4130-a399-9a56410c89eb', N'b35112ea-faf5-49c2-a1ff-d54ea3922cc6', N'Struck by other birds, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c1bbe744-cb78-4870-a277-9b92816f1a28', N'5c2a0be0-6dd5-419e-a7b6-e52a220c5f6c', N'Ped on skateboard injured in collision w 2/3-whl mv, unsp')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'94a0762e-e372-4d53-86a5-9d574e5955d8', N'cdb75921-9806-4c58-b9b2-621f50865d37', N'Milt op involving intentl restriction of air/airwy, civilian')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'feed78b2-a10a-4034-95bc-a0ec697abc52', N'ca3127a4-129b-490e-96c4-d7baa836a36f', N'Contact with hot food, subsequent encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ce5d982d-175c-408b-b427-a1561a01406e', N'c09b72cc-d0f7-42c2-a737-03dcfcfd0faf', N'Laceration w foreign body of left cheek and TMJ area')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c7801717-cc44-450d-bf09-a3a00e74c0c6', N'df12ce05-0ad0-4f76-82db-1ee73cc8f04a', N'Burn of first deg mult right fingers (nail), not inc thumb')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'0cad6562-ab8c-4f0a-b182-a6c738815099', N'24de39f5-43cc-457a-a106-9247964e2b63', N'Disp fx of shaft of fifth metacarpal bone, left hand, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'64ae4650-d774-4668-9cda-ab87a6ecaf32', N'f43af592-9e8f-49ef-991d-3c2eacb13546', N'Toxic effect of contact w oth jellyfish, accidental')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'3c848ebd-148f-43e3-995e-b38f91604742', N'a760352c-d5d3-48d3-a240-81d7d41643c1', N'Laceration with foreign body of finger w/o damage to nail')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'17e61acd-653b-4467-ba11-b4152a02320e', N'887368cb-042f-4f95-98df-e92779b55c5a', N'Broken internal left knee prosthesis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'0b2d531f-cc87-4502-a791-b49fc9b548c7', N'afc5c027-f8e9-4c23-b127-80d0491dab2d', N'Gastrointestinal stromal tumor, unspecified site')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'fcae477a-d62b-4fab-8ab3-b64ed368697a', N'79cbd0ab-2276-49ac-b448-9b0de0250a72', N'Nondisp fx of less trochanter of l femr, 7thJ')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'89d7420a-8eca-4bed-9652-b71d8ad0ded6', N'fbfd4cb2-d492-4df8-b416-e695c3650292', N'Laceration of muscle, fascia and tendon of oth prt biceps')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'922a8ff7-3898-43c0-8bc6-bbb33f24707d', N'fda505f8-8806-4d5f-bd00-608f91d5daa5', N'Chronic passive congestion of liver')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a65dd596-1213-4c5b-be21-bc9d5de65b0f', N'8d337251-337a-4483-8ca6-9da48fe841b9', N'Nondisp oblique fx shaft of unsp ulna, 7thG')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c2d641fe-190f-457e-90c5-bd9803db47fb', N'd3dcc517-3791-444a-83bb-aff90cbef99d', N'Cocaine use, unsp with cocaine-induced psychotic disorder')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'74dd0c5b-9929-40ba-bbfa-c26be6d6ffec', N'e790a1e5-861f-4c6a-a6d8-470f89e967ce', N'Sltr-haris Type II physl fx upr end l tibia, 7thP')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ad7c9dc7-1893-44ad-89eb-cc151b292fb4', N'49ed73a5-0184-44b7-b60e-81212cf15b7d', N'Complete traum amp at lev betw elbow and wrs, unsp arm, sqla')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a7eb5d74-94eb-45f1-9646-cdf61691df4e', N'6b09c99d-2c77-49bc-892d-c6517bccc979', N'Assault by machine gun, subsequent encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7c952049-4e70-4f7c-803f-d36fb3881ecf', N'bb226510-027c-45b4-91cc-c7dc32301cc1', N'Fracture of shaft of fibula')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c6880298-cccb-4440-96b1-d3c28d4a2098', N'a1c4132b-a748-4977-8ce1-7ad9f9aa915b', N'Abnormal findings on antenatal screening of mother')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'669bdf80-89c4-482e-a085-d54b53eb3ea6', N'0fb0b16c-45ba-42d3-8787-74528eadf410', N'Disseminated histoplasmosis capsulati')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'369fba1a-9855-4e43-b305-d720600a9ef4', N'a7805913-7c3d-4216-b89f-131eefe2e38b', N'Poisoning by unsp anesthetic, undetermined, init encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'b32b9a04-b04a-4825-91d0-d95f2e03fead', N'4c3aeacb-26d6-468c-afff-4f606378534d', N'Nondisp suprcndl fx w/o intrcndl extn low end unsp femr,7thC')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ad0200c2-403b-45b3-8eac-db9f0f0316b0', N'b21fe828-46ee-4489-a8cc-816b34ca66d6', N'Military op w oth effects of nuclear weapons, milt, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'8e56cb29-7d81-4896-a444-dfe6530c5da5', N'f690635f-dbcb-4646-bb46-7e7c6bdbecd1', N'Toxic effect of rodenticides, undetermined, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6e7bf9d3-05e1-4146-aea4-e21f99c8eb9d', N'00d85a75-65df-4c5a-b05b-a807c7cb2a69', N'Ped on foot injured in clsn w nonmtr vehicle, unsp, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'17a91e6f-4d18-470e-a106-e30a322cd0f2', N'3a2fd2da-7502-4e1a-908f-b38b02dac70a', N'Unspecified complication of corneal transplant')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'cac8f73d-cbb1-4559-9c2d-e4e938c1ec2f', N'a99db703-d4f1-46e4-bd55-3fdc341a7d22', N'Frontal lobe and executive function deficit')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'0646cac3-0412-43bb-9191-e66f25ae0544', N'b7b559b7-8f41-4b92-9670-df4639570ec0', N'Displacement of prosth dev/implnt/grft of genital tract')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7ea4c787-ffe0-4f67-bee3-f5aa92ef35b3', N'd06e8f7b-1fab-4cc6-a2a6-70a7a9b83426', N'Unsp inj musc/tend post grp at low leg level, left leg, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c7c54c4a-440b-49b7-b9f7-f6188af04dbd', N'dec74dee-480c-48d0-8f39-05f3cbf8c97c', N'Proc/trtmt not crd out bec pt decision for oth/unsp reason')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7dafc817-9341-47cd-a1b3-f6fa15daaace', N'eeef70da-0de2-4c89-abe0-047eaa28d9c2', N'Toxic effect of venom of other snake, assault, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'08030533-1be8-4f0f-8e4e-fb061ec12a84', N'8d018b2b-b426-42c4-8640-b42a97ce91d1', N'Hemarthrosis, left foot')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f466111f-cd13-4844-907f-fb8bb482f926', N'4c17c5ed-acf1-4a00-b145-e41decc1cadb', N'Australian encephalitis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'e69adcce-674c-403d-9944-fd2fc69344f7', N'b3443c7a-4ed0-4536-99ec-7f6581485a73', N'Displ spiral fx shaft of ulna, l arm, 7thE')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'48a6a6d5-617c-48ec-a49a-fe23ed17f798', N'ad2368ad-082f-462f-8183-f7c6547593ab', N'Fracture oth prt scapula, l shoulder, subs for fx w nonunion')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'907cf102-5bcd-4e5a-98f8-fe831739dc1b', N'8dfd1a3b-83cd-4cd0-9883-9f5acaaf4e7c', N'Car pasngr injured in nonclsn trnsp acc in traf, sequela')
GO
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'99a16f4c-8d66-44bf-8bd7-fe9e71666b8d', N'fa6ce0ff-3726-43b9-af2a-b70c109f756f', N'Disorders of pyruvate metabolism and gluconeogenesis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'12b25cd2-ceab-4292-9601-ff09e173e42e', N'd6d4cc4d-2409-4af2-ad6b-6bc44edd202d', N'Snow-skier colliding with stationary object, subs encntr')
INSERT [dbo].[Prescription_Product] ([ID_Prescription_Product], [ID_Prescription], [ID_Product]) VALUES (1, N'6b7f6743-5c7d-40d1-852f-00b50a9e4478', N'1         ')
INSERT [dbo].[Prescription_Product] ([ID_Prescription_Product], [ID_Prescription], [ID_Product]) VALUES (2, N'3db958b7-1c79-4b22-af3f-04204d887c06', N'2         ')
INSERT [dbo].[Prescription_Product] ([ID_Prescription_Product], [ID_Prescription], [ID_Product]) VALUES (3, N'a3e04902-6ee9-44eb-8ef0-04d7f8eab3de', N'3         ')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (1, N'Chai', 1, 1, N'10 boxes x 20 bags', 18.0000, 39, 0, 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (2, N'Spascupreel', 24, 1, N'12 oz bottle', 1117.6100, 46, 18, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (3, N'RINGING IN EARS', 17, 2, N'550 ml bottle', 2135.7500, 36, 17, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (4, N'Liver Drainage', 15, 3, N'box x 12 pills', 168.9600, 41, 20, 3, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (5, N'Metoprolol Tartrate', 21, 3, N'550 ml bottle', 2384.9500, 26, 47, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (6, N'Diclofenac Sodium', 29, 4, N'box x 24 pills', 315.0200, 89, 6, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (7, N'Benzonatate', 24, 5, N'750 ml bottle', 1800.3100, 77, 90, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (8, N'Nabumetone', 27, 6, N'16 oz bottle ', 1571.5900, 54, 16, 1, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (9, N'Prozac', 17, 7, N'box x 12 pills', 1110.8900, 41, 43, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (10, N'Childrens Pain and Fever', 12, 42, N' 750 ml bottle', 402.2100, 10, 78, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (11, N'XtraCare Dry Fresh Invisible Solid', 15, 2, N'box x 32 pills ', 167.9900, 47, 53, 1, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (12, N'nifedipine', 23, 3, N'24 oz bottle', 1746.2100, 51, 29, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (13, N'Hydrocodone Bitartrate And Acetaminophen', 15, 9, N'box x 32 pills ', 799.8700, 85, 38, 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (14, N'Gowoonsesang Medi UV Block Suncream', 27, 6, N'755 ml bottle ', 1020.3500, 16, 93, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (15, N'RYTHMOL', 20, 63, N'box x 12 pills ', 703.9200, 23, 75, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (16, N'Pavlova', 7, 3, N'32 - 500 g boxes', 17.4500, 29, 0, 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (17, N'Red Mulberry', 12, 5, N'box x 24 pills', 1608.8000, 84, 11, 3, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (18, N'Nicardipine Hydrochloride', 13, 45, N'box x 12 pills ', 1621.7800, 61, 25, 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (19, N'Baclofen', 18, 4, N'24 oz bottle', 994.3800, 71, 61, 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (20, N'TPN Electrolytes', 27, 4, N'box x 12 pills', 1622.2500, 56, 55, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (21, N'Clinpro 5000', 19, 3, N'750 ml bottle', 146.0900, 24, 38, 2, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (22, N'Warfarin Sodium', 19, 27, N'500 ml bottle ', 1555.9500, 89, 77, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (23, N'FRAXINUS AMERICANA POLLEN', 29, 3, N'box x 32 pills', 157.3100, 12, 67, 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (24, N'Cymbalta', 20, 43, N'24 oz bottle', 549.9700, 9, 42, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 11, 3, N'20 - 450 g glasses', 14.0000, 76, 0, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (26, N'Gumbär Gummibärchen', 11, 3, N'100 - 250 g bags', 31.2300, 15, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (27, N'Schoggi Schokolade', 11, 3, N'100 - 100 g pieces', 43.9000, 49, 0, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (28, N'Rössle Sauerkraut', 12, 7, N'25 - 825 g cans', 45.6000, 26, 0, 0, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (29, N'Thüringer Rostbratwurst', 12, 6, N'50 bags x 30 sausgs.', 123.7900, 0, 0, 0, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (30, N'Nord-Ost Matjeshering', 13, 8, N'10 - 200 g glasses', 25.8900, 10, 0, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (31, N'Gorgonzola Telino', 14, 4, N'12 - 100 g pkgs', 12.5000, 0, 70, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (32, N'Mascarpone Fabioli', 14, 4, N'24 - 200 g pkgs.', 32.0000, 9, 40, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (33, N'Geitost', 15, 4, N'500 g', 2.5000, 112, 0, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (34, N'Sasquatch Ale', 16, 1, N'24 - 12 oz bottles', 14.0000, 111, 0, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (35, N'Steeleye Stout', 16, 1, N'24 - 12 oz bottles', 18.0000, 20, 0, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (36, N'Inlagd Sill', 17, 8, N'24 - 250 g  jars', 19.0000, 112, 0, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (37, N'Gravad lax', 17, 8, N'12 - 500 g pkgs.', 26.0000, 11, 50, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (38, N'Côte de Blaye', 18, 1, N'12 - 75 cl bottles', 263.5000, 17, 0, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (39, N'Chartreuse verte', 18, 1, N'750 cc per bottle', 18.0000, 69, 0, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (40, N'Boston Crab Meat', 19, 8, N'24 - 4 oz tins', 18.4000, 123, 0, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (41, N'Jack''s New England Clam Chowder', 19, 8, N'12 - 12 oz cans', 9.6500, 85, 0, 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (42, N'Singaporean Hokkien Fried Mee', 20, 5, N'32 - 1 kg pkgs.', 14.0000, 26, 0, 0, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (43, N'Ipoh Coffee', 20, 1, N'16 - 500 g tins', 46.0000, 17, 10, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (44, N'Gula Malacca', 20, 2, N'20 - 2 kg bags', 19.4500, 27, 0, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (45, N'Rogede sild', 21, 8, N'1k pkg.', 9.5000, 5, 70, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (46, N'Spegesild', 21, 8, N'4 - 450 g glasses', 12.0000, 95, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (47, N'Zaanse koeken', 22, 3, N'10 - 4 oz boxes', 9.5000, 36, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (48, N'Chocolade', 22, 3, N'10 pkgs.', 12.7500, 15, 70, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (49, N'Maxilaku', 23, 3, N'24 - 50 g pkgs.', 20.0000, 10, 60, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (50, N'Valkoinen suklaa', 23, 3, N'12 - 100 g bars', 16.2500, 65, 0, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (51, N'Manjimup Dried Apples', 24, 7, N'50 - 300 g pkgs.', 53.0000, 20, 0, 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (52, N'Filo Mix', 24, 5, N'16 - 2 kg boxes', 7.0000, 38, 0, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (53, N'Perth Pasties', 24, 6, N'48 pieces', 32.8000, 0, 0, 0, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (54, N'Tourtière', 25, 6, N'16 pies', 7.4500, 21, 0, 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (55, N'Pâté chinois', 25, 6, N'24 boxes x 2 pies', 24.0000, 115, 0, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (56, N'Gnocchi di nonna Alice', 26, 5, N'24 - 250 g pkgs.', 38.0000, 21, 10, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (57, N'Ravioli Angelo', 26, 5, N'24 - 250 g pkgs.', 19.5000, 36, 0, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (58, N'Escargots de Bourgogne', 27, 8, N'24 pieces', 13.2500, 62, 0, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (59, N'Raclette Courdavault', 28, 4, N'5 kg pkg.', 55.0000, 79, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (60, N'Camembert Pierrot', 28, 4, N'15 - 300 g rounds', 34.0000, 19, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (61, N'Sirop d''érable', 29, 2, N'24 - 500 ml bottles', 28.5000, 113, 0, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (62, N'Tarte au sucre', 29, 3, N'48 pies', 49.3000, 17, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (63, N'Vegie-spread', 7, 2, N'15 - 625 g jars', 43.9000, 24, 0, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (64, N'Wimmers gute Semmelknödel', 12, 5, N'20 bags x 4 pieces', 33.2500, 22, 80, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, 2, N'32 - 8 oz bottles', 21.0500, 76, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, 2, N'24 - 8 oz jars', 17.0000, 4, 100, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (67, N'Laughing Lumberjack Lager', 16, 1, N'24 - 12 oz bottles', 14.0000, 52, 0, 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (68, N'Scottish Longbreads', 8, 3, N'10 boxes x 8 pieces', 12.5000, 6, 10, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (69, N'Gudbrandsdalsost', 15, 4, N'10 kg pkg.', 36.0000, 26, 0, 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (70, N'Outback Lager', 7, 1, N'24 - 355 ml bottles', 15.0000, 15, 10, 30, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (71, N'Flotemysost', 15, 4, N'10 - 500 g pkgs.', 21.5000, 26, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (72, N'Mozzarella di Giovanni', 14, 4, N'24 - 200 g pkgs.', 34.8000, 14, 0, 0, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (73, N'Röd Kaviar', 17, 8, N'24 - 150 g jars', 15.0000, 101, 0, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (74, N'Longlife Tofu', 4, 7, N'5 kg pkg.', 10.0000, 4, 20, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (75, N'Rhönbräu Klosterbier', 12, 1, N'24 - 0.5 l bottles', 7.7500, 125, 0, 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (76, N'Lakkalikööri', 23, 1, N'500 ml', 18.0000, 57, 0, 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (77, N'Original Frankfurter grüne Soße', 12, 2, N'12 boxes', 13.0000, 32, 0, 15, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (1, N'Eastern                                           ')
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (2, N'Western                                           ')
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (3, N'Northern                                          ')
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (4, N'Southern                                          ')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (1, N' Farmaceutico')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (2, N' Doctor ')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (3, N' Recepcionista ')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (1, N' 1:00 a.m - 9:00 a.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (2, N' 9:00 a.m - 5:00 p.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (3, N' 5:00 p.m - 1:00 a.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (4, N' 5:00 a.m - 1:00 p.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (5, N' 1:00 p.m - 9:00 p.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (6, N' 9:00 p.m - 5:00 a.m')
SET IDENTITY_INSERT [dbo].[Shippers] ON 

INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (1, N'Speedy Express', N'(503) 555-9831')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (2, N'United Package', N'(503) 555-3199')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (3, N'Federal Shipping', N'(503) 555-9931')
SET IDENTITY_INSERT [dbo].[Shippers] OFF
INSERT [dbo].[Specialty] ([ID_Specialty], [Specialty]) VALUES (1, N'Cardiologia')
INSERT [dbo].[Specialty] ([ID_Specialty], [Specialty]) VALUES (2, N'Dermatologia')
INSERT [dbo].[Specialty] ([ID_Specialty], [Specialty]) VALUES (3, N'Farmacologia')
INSERT [dbo].[Specialty] ([ID_Specialty], [Specialty]) VALUES (4, N'Oftalmologia')
INSERT [dbo].[Specialty] ([ID_Specialty], [Specialty]) VALUES (5, N'Pediatria')
INSERT [dbo].[Specialty] ([ID_Specialty], [Specialty]) VALUES (6, N'Urgencias')
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (1, N'Exotic Liquids', N'Charlotte Cooper', N'Purchasing Manager', N'49 Gilbert St.', N'London', NULL, N'EC1 4SD', N'UK', N'(171) 555-2222', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (2, N'New Orleans Cajun Delights', N'Shelley Burke', N'Order Administrator', N'P.O. Box 78934', N'New Orleans', N'LA', N'70117', N'USA', N'(100) 555-4822', NULL, N'#CAJUN.HTM#')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (3, N'Grandma Kelly''s Homestead', N'Regina Murphy', N'Sales Representative', N'707 Oxford Rd.', N'Ann Arbor', N'MI', N'48104', N'USA', N'(313) 555-5735', N'(313) 555-3349', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (4, N'Tokyo Traders', N'Yoshi Nagase', N'Marketing Manager', N'9-8 Sekimai Musashino-shi', N'Tokyo', NULL, N'100', N'Japan', N'(03) 3555-5011', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (5, N'Cooperativa de Quesos ''Las Cabras''', N'Antonio del Valle Saavedra', N'Export Administrator', N'Calle del Rosal 4', N'Oviedo', N'Asturias', N'33007', N'Spain', N'(98) 598 76 54', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (6, N'Mayumi''s', N'Mayumi Ohno', N'Marketing Representative', N'92 Setsuko Chuo-ku', N'Osaka', NULL, N'545', N'Japan', N'(06) 431-7877', NULL, N'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (7, N'Pavlova, Ltd.', N'Ian Devling', N'Marketing Manager', N'74 Rose St. Moonie Ponds', N'Melbourne', N'Victoria', N'3058', N'Australia', N'(03) 444-2343', N'(03) 444-6588', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (8, N'Specialty Biscuits, Ltd.', N'Peter Wilson', N'Sales Representative', N'29 King''s Way', N'Manchester', NULL, N'M14 GSD', N'UK', N'(161) 555-4448', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (9, N'PB Knäckebröd AB', N'Lars Peterson', N'Sales Agent', N'Kaloadagatan 13', N'Göteborg', NULL, N'S-345 67', N'Sweden', N'031-987 65 43', N'031-987 65 91', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (10, N'Refrescos Americanas LTDA', N'Carlos Diaz', N'Marketing Manager', N'Av. das Americanas 12.890', N'Sao Paulo', NULL, N'5442', N'Brazil', N'(11) 555 4640', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (11, N'Heli Süßwaren GmbH & Co. KG', N'Petra Winkler', N'Sales Manager', N'Tiergartenstraße 5', N'Berlin', NULL, N'10785', N'Germany', N'(010) 9984510', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (12, N'Plutzer Lebensmittelgroßmärkte AG', N'Martin Bein', N'International Marketing Mgr.', N'Bogenallee 51', N'Frankfurt', NULL, N'60439', N'Germany', N'(069) 992755', NULL, N'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (13, N'Nord-Ost-Fisch Handelsgesellschaft mbH', N'Sven Petersen', N'Coordinator Foreign Markets', N'Frahmredder 112a', N'Cuxhaven', NULL, N'27478', N'Germany', N'(04721) 8713', N'(04721) 8714', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (14, N'Formaggi Fortini s.r.l.', N'Elio Rossi', N'Sales Representative', N'Viale Dante, 75', N'Ravenna', NULL, N'48100', N'Italy', N'(0544) 60323', N'(0544) 60603', N'#FORMAGGI.HTM#')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (15, N'Norske Meierier', N'Beate Vileid', N'Marketing Manager', N'Hatlevegen 5', N'Sandvika', NULL, N'1320', N'Norway', N'(0)2-953010', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (16, N'Bigfoot Breweries', N'Cheryl Saylor', N'Regional Account Rep.', N'3400 - 8th Avenue Suite 210', N'Bend', N'OR', N'97101', N'USA', N'(503) 555-9931', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (17, N'Svensk Sjöföda AB', N'Michael Björn', N'Sales Representative', N'Brovallavägen 231', N'Stockholm', NULL, N'S-123 45', N'Sweden', N'08-123 45 67', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (18, N'Aux joyeux ecclésiastiques', N'Guylène Nodier', N'Sales Manager', N'203, Rue des Francs-Bourgeois', N'Paris', NULL, N'75004', N'France', N'(1) 03.83.00.68', N'(1) 03.83.00.62', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (19, N'New England Seafood Cannery', N'Robb Merchant', N'Wholesale Account Agent', N'Order Processing Dept. 2100 Paul Revere Blvd.', N'Boston', N'MA', N'02134', N'USA', N'(617) 555-3267', N'(617) 555-3389', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (20, N'Leka Trading', N'Chandra Leka', N'Owner', N'471 Serangoon Loop, Suite #402', N'Singapore', NULL, N'0512', N'Singapore', N'555-8787', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (21, N'Lyngbysild', N'Niels Petersen', N'Sales Manager', N'Lyngbysild Fiskebakken 10', N'Lyngby', NULL, N'2800', N'Denmark', N'43844108', N'43844115', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (22, N'Zaanse Snoepfabriek', N'Dirk Luchte', N'Accounting Manager', N'Verkoop Rijnweg 22', N'Zaandam', NULL, N'9999 ZZ', N'Netherlands', N'(12345) 1212', N'(12345) 1210', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (23, N'Karkki Oy', N'Anne Heikkonen', N'Product Manager', N'Valtakatu 12', N'Lappeenranta', NULL, N'53120', N'Finland', N'(953) 10956', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (24, N'G''day, Mate', N'Wendy Mackenzie', N'Sales Representative', N'170 Prince Edward Parade Hunter''s Hill', N'Sydney', N'NSW', N'2042', N'Australia', N'(02) 555-5914', N'(02) 555-4873', N'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (25, N'Ma Maison', N'Jean-Guy Lauzon', N'Marketing Manager', N'2960 Rue St. Laurent', N'Montréal', N'Québec', N'H1J 1C3', N'Canada', N'(514) 555-9022', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (26, N'Pasta Buttini s.r.l.', N'Giovanni Giudici', N'Order Administrator', N'Via dei Gelsomini, 153', N'Salerno', NULL, N'84100', N'Italy', N'(089) 6547665', N'(089) 6547667', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (27, N'Escargots Nouveaux', N'Marie Delamare', N'Sales Manager', N'22, rue H. Voiron', N'Montceau', NULL, N'71300', N'France', N'85.57.00.07', NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (28, N'Gai pâturage', N'Eliane Noz', N'Sales Representative', N'Bat. B 3, rue des Alpes', N'Annecy', NULL, N'74000', N'France', N'38.76.98.06', N'38.76.98.58', NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage]) VALUES (29, N'Forêts d''érables', N'Chantal Goulet', N'Accounting Manager', N'148 rue Chasseur', N'Ste-Hyacinthe', N'Québec', N'J2S 7S8', N'Canada', N'(514) 555-2955', N'(514) 555-2921', NULL)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'01581', N'Westboro                                          ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'01730', N'Bedford                                           ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'01833', N'Georgetow                                         ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'02116', N'Boston                                            ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'02139', N'Cambridge                                         ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'02184', N'Braintree                                         ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'02903', N'Providence                                        ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'03049', N'Hollis                                            ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'03801', N'Portsmouth                                        ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'06897', N'Wilton                                            ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'07960', N'Morristown                                        ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'08837', N'Edison                                            ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'10019', N'New York                                          ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'10038', N'New York                                          ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'11747', N'Mellvile                                          ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'14450', N'Fairport                                          ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'19428', N'Philadelphia                                      ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'19713', N'Neward                                            ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'20852', N'Rockville                                         ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'27403', N'Greensboro                                        ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'27511', N'Cary                                              ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'29202', N'Columbia                                          ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'30346', N'Atlanta                                           ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'31406', N'Savannah                                          ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'32859', N'Orlando                                           ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'33607', N'Tampa                                             ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'40222', N'Louisville                                        ', 1)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'44122', N'Beachwood                                         ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'45839', N'Findlay                                           ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'48075', N'Southfield                                        ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'48084', N'Troy                                              ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'48304', N'Bloomfield Hills                                  ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'53404', N'Racine                                            ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'55113', N'Roseville                                         ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'55439', N'Minneapolis                                       ', 3)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'60179', N'Hoffman Estates                                   ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'60601', N'Chicago                                           ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'72716', N'Bentonville                                       ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'75234', N'Dallas                                            ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'78759', N'Austin                                            ', 4)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'80202', N'Denver                                            ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'80909', N'Colorado Springs                                  ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'85014', N'Phoenix                                           ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'85251', N'Scottsdale                                        ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'90405', N'Santa Monica                                      ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'94025', N'Menlo Park                                        ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'94105', N'San Francisco                                     ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'95008', N'Campbell                                          ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'95054', N'Santa Clara                                       ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'95060', N'Santa Cruz                                        ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'98004', N'Bellevue                                          ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'98052', N'Redmond                                           ', 2)
INSERT [dbo].[Territories] ([TerritoryID], [TerritoryDescription], [RegionID]) VALUES (N'98104', N'Seattle                                           ', 2)
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EmployeeTerritories]    Script Date: 27/10/2018 08:54:33 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]') AND name = N'PK_EmployeeTerritories')
ALTER TABLE [dbo].[EmployeeTerritories] ADD  CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED 
(
	[ID_Employee] ASC,
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Region]    Script Date: 27/10/2018 08:54:33 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND name = N'PK_Region')
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [PK_Region] PRIMARY KEY NONCLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_Territories]    Script Date: 27/10/2018 08:54:33 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Territories]') AND name = N'PK_Territories')
ALTER TABLE [dbo].[Territories] ADD  CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Order_Details_UnitPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Order_Details_Quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Order_Details_Discount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Orders_Freight]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Address] FOREIGN KEY([ID_Address])
REFERENCES [dbo].[Address] ([ID_Address])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Address]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Certificate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Certificate] FOREIGN KEY([ID_Certificate])
REFERENCES [dbo].[Certificate] ([ID_Certificate])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Certificate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Certificate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID_Role])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Schedule] FOREIGN KEY([ID_Schedule])
REFERENCES [dbo].[Schedule] ([ID_Schedule])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Schedule]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTerritories_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]'))
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Employee] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employee] ([ID_Employee])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTerritories_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]'))
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Employee]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTerritories_Territories]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]'))
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[Territories] ([TerritoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTerritories_Territories]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]'))
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Territories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Orders]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Orders]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Employee] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employee] ([ID_Employee])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employee]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Shippers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([ShipVia])
REFERENCES [dbo].[Shippers] ([ShipperID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Shippers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Address] FOREIGN KEY([ID_Address])
REFERENCES [dbo].[Address] ([ID_Address])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Address]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Expedient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Expedient] FOREIGN KEY([ID_Expedient])
REFERENCES [dbo].[Expedient] ([ID_Expedient])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Expedient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Expedient]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Prescription_Product_Prescription]') AND parent_object_id = OBJECT_ID(N'[dbo].[Prescription_Product]'))
ALTER TABLE [dbo].[Prescription_Product]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Product_Prescription] FOREIGN KEY([ID_Prescription])
REFERENCES [dbo].[Prescription] ([ID_Prescription])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Prescription_Product_Prescription]') AND parent_object_id = OBJECT_ID(N'[dbo].[Prescription_Product]'))
ALTER TABLE [dbo].[Prescription_Product] CHECK CONSTRAINT [FK_Prescription_Product_Prescription]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Suppliers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Suppliers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Territories_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Territories]'))
ALTER TABLE [dbo].[Territories]  WITH CHECK ADD  CONSTRAINT [FK_Territories_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Territories_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Territories]'))
ALTER TABLE [dbo].[Territories] CHECK CONSTRAINT [FK_Territories_Region]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Discount]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Quantity]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]'))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_UnitPrice]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Products_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Products_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ReorderLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_ReorderLevel] CHECK  (([ReorderLevel]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ReorderLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ReorderLevel]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitsInStock]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitsInStock]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitsOnOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitsOnOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
GO
