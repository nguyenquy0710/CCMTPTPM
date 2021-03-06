USE [FaceShop]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 23/5/2017 8:33:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Priviledge] [int] NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Product_Id] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [ntext] NULL,
	[ChildCat] [int] NOT NULL CONSTRAINT [DF_Category_ChildCat]  DEFAULT ((0)),
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Province_Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Mobile] [nvarchar](20) NULL,
	[Address] [ntext] NULL,
	[DateTime] [nvarchar](20) NULL,
	[Total] [float] NULL CONSTRAINT [DF_Order_Total]  DEFAULT ((0.0)),
	[PaymentType] [int] NULL,
	[Status] [bit] NULL CONSTRAINT [DF_Order_Status]  DEFAULT ((0)),
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Quantity] [int] NULL CONSTRAINT [DF_Order_Detail_Quantity]  DEFAULT ((0)),
	[Price] [float] NULL CONSTRAINT [DF_Order_Detail_Price]  DEFAULT ((0.0)),
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](255) NULL,
	[Price] [float] NULL CONSTRAINT [DF_Product_Price]  DEFAULT ((0.0)),
	[Status] [bit] NOT NULL CONSTRAINT [DF_Product_Status]  DEFAULT ((0)),
	[Description] [ntext] NULL,
	[Detail] [ntext] NULL,
	[View] [int] NULL CONSTRAINT [DF_Product_View]  DEFAULT ((0)),
	[Sold] [int] NULL CONSTRAINT [DF_Product_Sold]  DEFAULT ((0)),
	[Category_Id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Province]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ward_Id] [int] NOT NULL,
	[Type] [ntext] NULL,
	[cost] [float] NULL CONSTRAINT [DF_Shipping_cost]  DEFAULT ((0.0)),
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](125) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [ntext] NULL,
	[Mobile] [nvarchar](20) NULL,
	[DOB] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ward]    Script Date: 23/5/2017 8:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[District_Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Administrator] ON 

INSERT [dbo].[Administrator] ([Id], [UserName], [PassWord], [Name], [Priviledge]) VALUES (1, N'admin', N'admin', N'Administrator', 1)
SET IDENTITY_INSERT [dbo].[Administrator] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (1, N'Tivi', N'Tivi', 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (2, N'Điện thoại', N'Điện thoại', 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (3, N'Laptop', N'Laptop', 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (4, N' Toshiba ', N' Toshiba ', 1)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (5, N' Samsung ', N' Samsung ', 1)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (6, N'Panasonic ', N'Panasonic ', 1)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (7, N' LG ', N' LG ', 1)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (8, N' HTC ', N' HTC ', 2)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (9, N' BlackBerry ', N' BlackBerry ', 2)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (10, N'Asus ', N'Asus ', 2)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (11, N'Apple ', N'Apple ', 2)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (12, N' HP ', N' HP ', 3)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (13, N'Dell ', N'Dell ', 3)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (14, N' Asus ', N' Asus ', 3)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (15, N' Apple ', N' Apple ', 3)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (16, N' Acer ', N' Acer ', 3)
INSERT [dbo].[Category] ([Id], [Name], [Description], [ChildCat]) VALUES (17, N'Lenovo', N'Lenovo', 3)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([Id], [Province_Id], [Name]) VALUES (1, 2, N'Quận 1')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [User_Id], [Mobile], [Address], [DateTime], [Total], [PaymentType], [Status]) VALUES (1, 1, N'01203456789', N'ZXC', N'3/2/2016', 10, 1, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([Id], [Order_ID], [Product_ID], [Quantity], [Price]) VALUES (1, 1, 1, 10, 54000000)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Code], [Name], [Image], [Price], [Status], [Description], [Detail], [View], [Sold], [Category_Id]) VALUES (1, N'TVLG520', N'Tivi LG 520', N'product13.jpg', 5400000, 1, NULL, NULL, 19, 1, 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([Id], [Name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[Province] ([Id], [Name]) VALUES (2, N'TP Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[Province] OFF
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([Id], [Ward_Id], [Type], [cost]) VALUES (1, 1, N'F1W1D1', 1000)
SET IDENTITY_INSERT [dbo].[Shipping] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Email], [Password], [Name], [Address], [Mobile], [DOB], [Gender]) VALUES (1, N'abc@qpcoders.com', N'zxc', N'ABC', N'abc', N'0976543210', N'12/3/1996', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Ward] ON 

INSERT [dbo].[Ward] ([Id], [District_Id], [Name]) VALUES (1, 1, N'Phường 1')
SET IDENTITY_INSERT [dbo].[Ward] OFF
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF_Cart_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Province] FOREIGN KEY([Province_Id])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Province]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipping] FOREIGN KEY([PaymentType])
REFERENCES [dbo].[Shipping] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipping]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Ward] FOREIGN KEY([Ward_Id])
REFERENCES [dbo].[Ward] ([Id])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_Ward]
GO
ALTER TABLE [dbo].[Ward]  WITH CHECK ADD  CONSTRAINT [FK_Ward_District] FOREIGN KEY([District_Id])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Ward] CHECK CONSTRAINT [FK_Ward_District]
GO
