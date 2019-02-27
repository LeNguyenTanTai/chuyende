USE [BookShop]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Author](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameAuthor] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Detail] [nvarchar](max) NULL,
	[PhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameBook] [nvarchar](200) NOT NULL,
	[Title] [ntext] NULL,
	[Detail] [ntext] NULL,
	[PriceOld] [float] NOT NULL,
	[PriceNew] [float] NULL,
	[Image] [nvarchar](500) NULL,
	[DateUpdate] [datetime] NULL,
	[Quanity] [int] NULL,
	[Url] [nvarchar](200) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Id_Publisher] [int] NULL,
	[Id_Subject] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DayOfBirth] [date] NULL,
	[Sex] [bit] NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Position] [tinyint] NULL,
	[Image] [nvarchar](200) NULL,
	[PhoneNumber] [varchar](20) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetailOrder]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailOrder](
	[Id_Order] [int] NOT NULL,
	[Id_Book] [int] NOT NULL,
	[Quanity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_DetailtOrder] PRIMARY KEY CLUSTERED 
(
	[Id_Order] ASC,
	[Id_Book] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImageBook]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageBook](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [nvarchar](200) NULL,
	[Image2] [nvarchar](200) NULL,
	[Image3] [nvarchar](200) NULL,
	[Image4] [nvarchar](200) NULL,
	[Id_Book] [int] NULL,
 CONSTRAINT [PK_ImageBook] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Summary] [nvarchar](max) NULL,
	[Detail1] [ntext] NULL,
	[Detail2] [ntext] NULL,
	[DateCreate] [date] NULL,
	[PeopleCreate] [nvarchar](100) NULL,
	[Image] [nvarchar](200) NULL,
	[Url] [nvarchar](200) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[DateOrder] [date] NULL,
	[DateDelivery] [date] NULL,
	[Pay] [int] NULL,
	[Id_Customer] [int] NULL,
	[NameCustomer] [nvarchar](200) NULL,
	[AddressCustomer] [nvarchar](200) NULL,
	[PhoneCustomer] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publisher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NamePublisher] [nvarchar](100) NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameSubject] [nvarchar](100) NULL,
	[Url] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TakePart]    Script Date: 11/6/2018 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakePart](
	[Id_Book] [int] NOT NULL,
	[Id_Author] [int] NOT NULL,
	[Role] [nvarchar](100) NULL,
	[Position] [nvarchar](100) NULL,
 CONSTRAINT [PK_TakePart] PRIMARY KEY CLUSTERED 
(
	[Id_Book] ASC,
	[Id_Author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([Id], [NameAuthor], [Address], [Detail], [PhoneNumber]) VALUES (1, N'Nguyễn Văn A', N'Đồng Nai', NULL, N'0985623154')
INSERT [dbo].[Author] ([Id], [NameAuthor], [Address], [Detail], [PhoneNumber]) VALUES (2, N'Nguyễn Văn B', N'Bình Dương', NULL, N'0569865656')
INSERT [dbo].[Author] ([Id], [NameAuthor], [Address], [Detail], [PhoneNumber]) VALUES (3, N'Nguyễn Thị C', N'Hồ Chí Minh', NULL, N'0123456756')
INSERT [dbo].[Author] ([Id], [NameAuthor], [Address], [Detail], [PhoneNumber]) VALUES (4, N'Trần Văn Mẹt', N'Hà Nội', NULL, N'0235655659')
INSERT [dbo].[Author] ([Id], [NameAuthor], [Address], [Detail], [PhoneNumber]) VALUES (5, N'Mai Thanh Toán', N'Hải Phòng', NULL, N'02364566558')
SET IDENTITY_INSERT [dbo].[Author] OFF
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (1, N'Giáo trình tin học cơ bản', N'abc', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 26000, 30000, N'thcb.jpg', CAST(0x0000952700000000 AS DateTime), 25, N'tin-hoc-1', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (2, N'Giáo trình tin học văn phòng', N'abcccc', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 12000, 20000, N'tin-hoc-van-phong.jpg', CAST(0x0000946C00000000 AS DateTime), 24, N'tin-hoc-2', 1, 7, 10)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (5, N'Lập trình cơ sở dữ liệu', N'abc', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 25000, 0, N'co-so-du-lieu.jpg', CAST(0x000099C700000000 AS DateTime), 0, N'tin-hoc-3', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (6, N'Visual basic 2005', N'abc', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 15000, 22000, N'visual-2005.jpg', CAST(0x00008D0200000000 AS DateTime), 0, N'tin-hoc-4', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (8, N'Giáo trình tin học quản lý 1', N'Giáo trình tin học quản lý 1', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 29000, 0, N'tinhocquanly.jpg', CAST(0x000092E900000000 AS DateTime), 0, N'tin-hoc-5', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (9, N'Giáo trình tin học quản lý 2', NULL, N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 30000, NULL, NULL, CAST(0x0000953900000000 AS DateTime), NULL, N'tin-hoc-6', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (10, N'Giáo trình SQL server', NULL, N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 24000, NULL, NULL, CAST(0x0000912A00000000 AS DateTime), NULL, N'tin-hoc-7', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (11, N'Giáo trình phân tích hệ thống', NULL, N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 25000, NULL, NULL, CAST(0x00009A6B00000000 AS DateTime), NULL, N'tin-hoc-8', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (12, N'Giáo trình VB.Net 1', NULL, N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 35000, NULL, NULL, CAST(0x0000A05200000000 AS DateTime), NULL, N'tin-hoc-9', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (13, N'Giáo trình VB.Net 2 ', NULL, N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 45000, NULL, NULL, CAST(0x00009BBE00000000 AS DateTime), NULL, N'tin-hoc-10', 1, 7, 11)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (22, N'Truyện Doremon ', N'Chú mèo máy từ tương lai', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 15000, 0, N'doremon.jpg', CAST(0x00009B9F00000000 AS DateTime), 9, N'van-hoa-1', 1, 5, 2)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (25, N'Truyện Pokemon', N'pokemon tập 9999', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 20000, 0, N'pokemon.jpg', CAST(0x00009B7800000000 AS DateTime), 12, N'po-ke-mon', 1, 5, 2)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (28, N'Giáo trình hội nhập kinh tế', N'Hội nhập kinh tế ', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 15000, 0, N'hoinhapkt.jpg', CAST(0x0000A29600000000 AS DateTime), 16, N'hoi-nhap-kinh-te', 1, 8, 3)
INSERT [dbo].[Book] ([Id], [NameBook], [Title], [Detail], [PriceOld], [PriceNew], [Image], [DateUpdate], [Quanity], [Url], [Status], [Id_Publisher], [Id_Subject]) VALUES (29, N'Giáo trình thị trường chứng khoán', N'Giáo trình thị trường chứng khoán', N'Nội dung của  cuốn tin học cơ bản Window XP gồm có 7 chương: Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong MyComputer và Window Explorer. Chương 3: Các thao tác trong window XP. Chương 4: Các thiết lập trong Window XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt chương. Chương 7: Hỏi và đáp các thắc mắc. Xin trân trọng giới thiệu cuốn sách cùng bạn.', 25000, 0, N'thitruongchungkhoan.jpg', CAST(0x0000A13900000000 AS DateTime), 52, N'thi-truong-kinh-te', 1, 8, 3)
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Username], [Pass], [Name], [DayOfBirth], [Sex], [Email], [Address], [Position], [Image], [PhoneNumber]) VALUES (24, N'hongduc', N'123', N'Hồng Đức', CAST(0xD1200B00 AS Date), 1, N'hongduc@gmail.com', N'Quận Thủ Đức', 1, N'', N'096137028')
INSERT [dbo].[Customer] ([Id], [Username], [Pass], [Name], [DayOfBirth], [Sex], [Email], [Address], [Position], [Image], [PhoneNumber]) VALUES (25, N'chidau', N'1234', N'Chị Dậu', CAST(0xDD300B00 AS Date), 0, N'chidau@gmail.com', N'Quận 10', 1, N'', N'02029392')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [Summary], [Detail1], [Detail2], [DateCreate], [PeopleCreate], [Image], [Url]) VALUES (1, N'Em có muốn có một cuộc tình già với anh', N'Em có muốn một cuộc tình với anh là quyển sách thú vị và ý nghĩa được viết bởi tác giả  Hoàng Anh Tú,Là một trong những tác giả được yêu thích với nhiều tác phẩm quen thuộc như Mắc Kẹt Ở Thiên Đường, Thành Phố Của Những Linh Hồn Lạc,... Và gần đây nhất là Yêu...', N'Em Muốn Có Một Cuộc Tình Già Với Anh là quyển sách thú vị và ý nghĩa được viết bởi tác giả Hoàng Anh Tú, là một trong những tác giả được yêu thích với nhiều tác phẩm quen thuộc như Mắc Kẹt Ở Thiên Đường, Thành Phố Của Những Linh Hồn Lạc,… và gần đây nhất là Yêu Là Yêu Thế Thôi và Ngã Tư Mưa, Ngã Vào Đâu Cũng Nhớ. Vẫn là những câu chuyện lãng mạn, nhẹ nhàng xen lẫn chút hài hước nhưng cũng không kém phần sâu sắc, Em Muốn Có Một Cuộc Tình Già Với Anh đúng như lời tác giả bày tỏ: “Đây là cuốn Nhật ký học yêu vợ của một anh chồng vô tâm” khi ẩn chứa rất nhiều những cung bậc cảm xúc cũng như những trải nghiệm của chính tác giả về tình yêu, hôn nhân cũng như cuộc sống hàng ngày.', N'Khác với những tác phẩm trước, độc giả sẽ không tìm thấy trong Em Muốn Có Một Cuộc Tình Già Với Anh những xúc cảm ngọt ngào, lãng mạn của thuở mới yêu, cũng không bắt gặp những tiếc nuối về những mối tình đã qua hay những cơn “say nắng” dễ thương của tuổi học trò. Thay vào đó, xuyên suốt quyển sách là những cung bậc cảm xúc khác nhau của hai người đã cùng nhau nắm tay để vượt qua một chặng đường đủ dài, là những nồng nàn mà càng qua thời gian càng thêm thắm đượm, là cái khát khao to lớn để gìn giữ hôn nhân cũng như tình cảm vợ chồng luôn vững bền theo năm tháng.

Đọc EEm Muốn Có Một Cuộc Tình Già Với Anh, người đọc có thể dễ dàng bắt gặp những câu chuyện quen thuộc trong đời sống hôn nhân mà bạn đã, đang và sẽ có thể trải qua qua hình ảnh nhân vật “tôi” và “vợ”. Từ những việc nhỏ như chuyện người vợ gửi tin nhắn “tỏ tình” với chồng mình để xem phản ứng của chồng như thế nào, cho đến những luận bàn sâu sắc về đức hy sinh của người phụ nữ, cách riêng là người vợ, người mẹ trong gia đình hay thậm chí cả việc ngoại tình – vấn đề muôn thuở trong việc gìn giữ và bảo vệ hạnh phúc gia đình, đều được Hoàng Anh Tú đề cập trong quyển sách này. Qua đó, tác giả mang đến cho người đọc những chiêm nghiệm, suy nghĩ về cuộc sống, tình yêu và cuộc sống gia đình của bản thân để rồi từ đó có thể tự điều chỉnh cách ứng xử của mình để gìn giữ tình yêu của mình như ngọn lửa cháy mãi với thời gian.

Em Muốn Có Một Cuộc Tình Già Với Anh viết về tình yêu và cuộc sống sau hôn nhân, tuy nhiên quyển sách này không chỉ dành cho những người đã là chồng, là vợ, mà còn dành cho những ai đã, đang và sẽ bước vào tình yêu. Đọc để biết, để hiểu, để chuẩn bị và sẵn sàng và đón nhận hạnh phúc. Vì như Hoàng Anh Tú đã nói: “Nếu bạn tin thì hãy mở bất cứ trang nào trong cuốn sách này để đọc. Bởi đây là một cuốn sách có thể đọc từ bất cứ trang nào. Nó giống như Hạnh Phúc, khi bạn tin, thì bất kỳ lúc nào, khi nào, ở đâu bạn cũng sẽ nhận được Hạnh Phúc!”.', CAST(0xB43E0B00 AS Date), N'Admin', N'cuoc-tinh.jpg', N'em-co-muon-co-mot')
INSERT [dbo].[News] ([Id], [Title], [Summary], [Detail1], [Detail2], [DateCreate], [PeopleCreate], [Image], [Url]) VALUES (2, N'Lý Gia Thành - "Ông Chủ Của Những Ông Chủ"', N'Lý Gia Thành - "Ông Chủ Của Những Ông Chủ" là những chuyện đầy thú vị về cuộc sống của một con người phi thường đi lên từ thân phận nhập cư nghèo khổ, nhưng bằng tư duy sắc bén và những nỗ lực không ngừng, đã trở thành một trong 10 người giàu nhất thế giới. Nhắc đến....', N'Lý Gia Thành – “Ông Chủ Của Những Ông Chủ” là câu chuyện đầy thú vị về cuộc đời của một con người phi thường đi lên từ thân phận nhập cư nghèo khổ, nhưng bằng tư duy sắc bén và những nỗ lực không ngừng, đã trở thành một trong 10 người giàu nhất thế giới. Nhắc đến Lý Gia Thành người ta không chỉ nhớ đến một ông vua kinh doanh tầm cỡ quốc tế – người đã đặt nền móng cho nền thương mại Hồng Kông, mà còn nghĩ ngay đến một người có lối sống cần cù, tràn đầy niềm tin, khát vọng và ý chí. Những trang sách trong Lý Gia Thành – “Ông Chủ Của Những Ông Chủ” sẽ đưa độc giả đến với những câu chuyện thú vị về ông, để rồi từ đó mỗi người sẽ rút ra được cho mình những bài học ý nghĩa về kinh doanh cũng như các mối quan hệ trong cuộc sống.', N'Lý Gia Thành sinh ra trong một gia đình nghèo, với người cha là thầy giáo Lý Vân Kinh. Tuổi thơ của ông có thể nói là khá bất hạnh khi sinh vào “giờ xấu” theo lịch của người Trung Hoa, và ra đời ngay trong giai đoạn đất nước đang bị Nhật Bản thống trị. Và qua rất nhiều những biến cố, gia đình ông đã chuyển tới Hồng Kông để bắt đầu xây dựng một cuộc sống mới. Tuy nhiên, cuộc đời vốn không bao giờ suôn sẻ như những gì người ta vẫn nghĩ, khi gia đình chuyển đến vùng đất mới, cha của ông mắc bệnh lao và qua đời, từ đó một mình Lý Gia Thành phải bươn chải kiếm sống và gánh vác trách nhiệm với mẹ và các em. Nhờ những lời dặn dò của cha trước lúc qua đời: “Con phải có nghị lực quyết tâm. Lúc đó, con có thể với cao tới tận trời. Và hãy nhớ, bất cứ khi nào mọi việc không được như ý mình, đừng bao giờ nản chí. Đừng quên con là ai. Đừng quên nguồn gốc của con.”, từ một cậu bé nghèo khổ và có phần bất hạnh, Lý Gia Thành, nhờ sự bản lĩnh cũng như nỗ lực không ngừng của mình, đã từng bước vươn lên để trở thành một “siêu nhân kiếm tiền” nổi tiếng của mảnh đất giao thoa giữa Đông và Tây – Hồng Kông và hiện diện trong danh sách 10 nhân vật giàu nhất thế giới.

Lý Gia Thành – “Ông Chủ Của Những Ông Chủ” không chỉ là một quyển sách chi tiết về tiểu sử và hoạt động kinh doanh của Lý Gia Thành – kể cả những giao dịch ngầm của ông, mà còn chứa rất nhiều những ý kiến, thông tin bên ngoài từ các chuyên gia kinh tế, giúp người đọc có một cái nhìn vừa tổng quát vừa cụ thể về cuộc đời của nhân vật tầm cỡ này. Những thông tin đó giúp chúng ta hiểu được vì sao một con người chỉ tập trung kinh doanh ở một thị trường bé nhỏ như Hồng Kông, lại có thể đạt được những thành công sánh ngang với các doanh nhân Mỹ và Châu Âu để bước chân vào danh sách 10 người giàu nhất thế giới. Bên cạnh những bài học quý báu về kinh doanh, khát khao thành công và những nỗ lực không ngừng, Lý Gia Thành – “Ông Chủ Của Những Ông Chủ” còn giúp người đọc hiểu ra những “chân lý” đầy giá trị trong cách sống và cách đối nhân xử thế.

Lý Gia Thành – “Ông Chủ Của Những Ông Chủ” thật sự là một quyển sách cực kỳ thành công trong việc truyền cảm hứng đến những ai mang trong mình ngọn lửa của khát khao cháy bỏng về một thành công rực rỡ trong việc kinh doanh và cũng là một động lực mạnh mẽ cho cả những bạn trẻ mới bắt đầu khởi nghiệp. Đọc và ngấm những thông tin trong quyển sách, để hiểu được rằng cánh cửa thành công luôn rộng mở và đủ chỗ cho tất cả mọi người – những ai đủ lửa, đủ nhiệt huyết và đam mê.', CAST(0xB43E0B00 AS Date), N'Tan', N'ong-chu.jpg', N'ly-gia-thanh-ong-chu-cua-nhung-ong-chu')
INSERT [dbo].[News] ([Id], [Title], [Summary], [Detail1], [Detail2], [DateCreate], [PeopleCreate], [Image], [Url]) VALUES (3, N'Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận', N' Thế giới của phụ nữ ẩn chứa những câu chuyện mà nói mãi cũng không bao giờ hết, nhất là những phụ nữ đã, đang và sắp bước qua tuổi 30 – độ tuổi chênh vênh giữa tuổi trẻ và sự trưởng thành. Có lẽ đó cũng chính là lý do mà Phan Ý Yên đã bày tỏ rằng:...', N'Thế giới của phụ nữ ẩn chứa những câu chuyện mà nói mãi cũng không bao giờ hết, nhất là những phụ nữ đã, đang và sắp bước qua tuổi 30 – độ tuổi chênh vênh giữa tuổi trẻ và sự trưởng thành. Có lẽ đó cũng chính là lý do mà Phan Ý Yên đã bày tỏ rằng: “Phụ nữ trước ngưỡng 30 là một giỏ hoa nhiều sắc mà sắc nào cũng đượm một chút tiếc nuối”. Vậy thì, phải làm gì để khi chạm vào ranh giới này mà không cảm thấy tiếc nuối, chênh vênh mà có thể đón nhận ba mươi mùa xuân của mình một cách an nhiên nhất? Mời bạn cùng lắng lòng mình lại, pha một tách trà nóng với hương vị yêu thích và lần giở những trang của quyển sách Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận.', N'Điều ấn tượng đầu tiên không thể không nhắc đến đó là tựa đề của quyển sách – Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận – như một lời tuyên bố, thậm chí là một lời “cảnh báo” dễ thương nhưng cũng gợi sự tò mò không nhỏ. Để rồi khi cầm quyển sách trên, độc giả sẽ như được nhìn lại mình, nhìn thấy hình ảnh của những người phụ nữ mình yêu thương trong những câu chuyện về cuộc sống, sự nghiệp, tình yêu qua lăng kính của một người phụ nữ hiện đại, bản lĩnh. Vốn được biết đến là một nhà văn với những xúc cảm mỏng manh, nữ tính nhưng ở Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận, người đọc chắc chắn sẽ bắt gặp một Phan Ý Yên rất khác, táo bạo hơn, mạnh mẽ hơn nhưng cũng rất đỗi tinh tế và dịu dàng.

Xuyên suốt gần 200 trang sách, Phan Ý Yên đã mang đến cho độc giả, đặc biệt là những độc giả nữ rất nhiều những cung bậc cảm xúc khác nhau. Khi là những rung cảm của một cô gái trẻ tha thiết yêu thương và tràn đầy hy vọng, khi lại là những suy nghĩ của một phụ nữ chín chắn, quyến rũ, mạnh mẽ và dám buông bỏ những gì không thuộc về mình, khi lại như một tấm bản đồ kho báu dẫn dắt người đọc đi tìm màu sắc cho “ngưỡng 30” của mình với “Ba mươi của bạn có màu gì?”, hoặc như một ngọn lửa thắp lên niềm tin và hy vọng trong “365 ngày may mắn”. Đọc và cảm Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận, bạn chắc chắn sẽ nhận ra rằng tuổi trẻ của chúng ta không kết thúc ở lứa tuổi 30, mà vẫn sẽ tiếp tục đến khi nào chúng ta còn biết mỉm cười vào mỗi sáng, tin rằng mình luôn còn cơ hội để bắt đầu những tháng ngày tươi đẹp ở phía trước và biết giữ trọn vẹn thanh xuân ngay trong chính tim mình. Không những thế, đâu đó trong quyển sách này, bạn cũng sẽ tìm được cho mình thêm động lực để “dám” chấp nhận, can đảm từ bỏ và nhận ra hạnh phúc từ chính những cú ngã, những nỗi đau.

Bằng giọng văn gần gũi, nhẹ nhàng như lời tâm tình của những người phụ nữ trong những cuộc trà, Phan Ý Yên đã sẻ chia với phụ nữ 30 những điều họ lo lắng nhất, trăn trở nhất về tình yêu, về trưởng thành, về được – mất trong cuộc sống thường nhật. Nhưng khác với những nỗi buồn da diết thường thấy trong các tác phẩm trước của cô, bất cứ ai khi đọc xong Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận, chắc chắn cũng sẽ tìm thấy cho mình thêm sự lạc quan và niềm tin vào cuộc sống, vào tình yêu cũng như tin vào chính bản thân mình khi đối diện với bất cứ vấn đề nào của cuộc sống.

Khi Phụ Nữ Uống Trà, Đàn Ông Nên Cẩn Thận không chỉ là món quà dành riêng cho những ai chuẩn bị đón tuổi 30 của mình, vì dù bạn đang bao nhiêu tuổi thì đây vẫn sẽ là một quyển cẩm nang nhỏ xinh mang đến cho bạn những thông tin cũng như phần nào đó kiến thức để bạn thêm tự tin và an nhiên đón tuổi mới. Hãy mở lòng ra và cảm nhận, bạn sẽ thấy mình chưa bao giờ đơn độc trên con đường trưởng thành và yêu thương.

Phải sống đủ lâu, trải nghiệm đủ dài mới có đủ bản lĩnh để đối diện với tất cả sự thật lẫn không thật trong cuộc sống này. Xét cho cùng, không phải những gì trần trụi khiến bạn đau lòng hay mất mát mà chính là cách chúng ta chọn đối diện và giải quyết chúng. Không có niềm đau vĩnh viễn hay tổn thất không thể đắp bù. Chỉ có trái tim con người chịu tha thứ, buông bỏ hay hàn gắn hay không mà thôi. Vì vậy, đôi lúc, một nửa của sự thật cũng đủ là sự thật rồi. Bạn có nghĩ vậy không?', CAST(0xB43E0B00 AS Date), N'Admin', N'phu-nu.jpg', N'khi-phu-nu-uong-tra-dan-ong-nen-can-than')
INSERT [dbo].[News] ([Id], [Title], [Summary], [Detail1], [Detail2], [DateCreate], [PeopleCreate], [Image], [Url]) VALUES (4, N'Chuyện con ốc sên muốn biết tại sao nó chậm chạp', N'Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp ra đời từ một gợi ý rất ngộ nghĩnh khi tác giả nhận được câu hỏi của cậu cháu trai: “Ông ơi, vì sao con ốc sên lại chậm chạp như vậy?”. Được viết bởi Luis Sepulveda, tác giả đã từng rất thành công qua quyển sách Chuyện Con Mèo Dạy Hải Âu Bay – quyển sách với câu chuyện giản dị và ngộ nghĩnh nhưng ẩn chứa nhiều bài học và triết lý sâu sắc đã được hàng triệu độc giả trên thế giới đọc và cảm nhận. Ở quyển sách mới này, ông vẫn vận dụng lối viết theo kiểu ngụ ngôn, với nhân vật chính là chú ốc sên nhỏ bé và câu chuyện đi tìm khao khát và ý nghĩa cuộc sống. Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp chắn chắn sẽ mang đến cho độc giả những trải nghiệm thú vị nhưng cũng đầy ý nghĩa.', N'Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp ra đời từ một gợi ý rất ngộ nghĩnh khi tác giả nhận được câu hỏi của cậu cháu trai: “Ông ơi, vì sao con ốc sên lại chậm chạp như vậy?”. Được viết bởi Luis Sepulveda, tác giả đã từng rất thành công qua quyển sách Chuyện Con Mèo Dạy Hải Âu Bay – quyển sách với câu chuyện giản dị và ngộ nghĩnh nhưng ẩn chứa nhiều bài học và triết lý sâu sắc đã được hàng triệu độc giả trên thế giới đọc và cảm nhận. Ở quyển sách mới này, ông vẫn vận dụng lối viết theo kiểu ngụ ngôn, với nhân vật chính là chú ốc sên nhỏ bé và câu chuyện đi tìm khao khát và ý nghĩa cuộc sống. Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp chắn chắn sẽ mang đến cho độc giả những trải nghiệm thú vị nhưng cũng đầy ý nghĩa.', N'Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp kể về một chú ốc sên đã dũng cảm chấp nhận hy sinh, “tự làm khổ mình” để có thể trưởng thành hơn. Chú ốc sên này thuở nhỏ sống cùng bầy ốc sên của mình ở một nơi có tên là Quê hương Bồ Công Anh. Bọn chúng sống một cuộc đời chậm chạp, lặng lẽ, cam chịu và gọi nhau đơn giản là “sên”, cho đến khi chú ốc sên này dũng cảm nêu lên ý kiến của mình rằng cuộc đời này thật bất công khi dành sự ưu ái quá nhiều cho các loài vật khác, trong khi bọn chúng lại được “ban” cho sự chậm chạp và thậm chí không có nổi một cái tên riêng. Sau khi nêu rõ quan điểm của mình, chú đã bị đồng loại của mình chế giễu và cho rằng giống loài của chúng đã quá quen với cuộc sống chậm chạp. Để rồi từ đó, kẻ nổi loạn quyết tâm rời xa chốn thân thuộc của mình để đi tìm câu trả lời cho những thắc mắc bấy lâu.

Trên chuyến hành trình ấy, chú ốc sên may mắn gặp được một bác rùa già – cũng chính là người đã đặt cho chú cái tên Dũng Khí – và chỉ dạy cho chú nhiều bài học quý giá. Và cũng nhờ cuộc hành trình đó mà chú ốc sên Dũng Khí biết được một tai họa lớn sắp ập xuống đồng cỏ – nơi các loài sinh vật và đồng loại của chú đang sống yên bình. Để rồi bằng tấm lòng yêu thương của mình, chú ốc sên nhỏ quyết định quay trở về báo tin cho đồng loại cùng như các loài vật khác như họ nhà kiến, bọ hung, chuột chũi,…

Với giọng văn giản dị, dễ hiểu, có đôi chút hóm hỉnh kể về câu chuyện chú ốc sên Dũng Khí và những loài vật, Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp phù hợp cho mọi lứa tuổi chứ không chỉ các em thiếu nhi. Bằng sự tài tình trong ngòi bút, Luis Sepulveda cũng đã vẽ ra trước mắt độc giả những hình ảnh thiên nhiên sống động với các loài vật đang sinh sống và có những suy nghĩ, tính cách khác nhau hệt như con người, qua đó mang đến cho độc giả những cảm nhận rất riêng tùy vào từng lứa tuổi hay quan niệm sống, nhưng hơn hết, sau khi đọc và ngấm những gì mà tác giả gửi gắm, mỗi người chắc chắn cũng sẽ rút ra được cho mình những bài học sâu sắc về cuộc sống, về lòng dũng cảm, khát vọng vươn lên và khẳng định cái tôi. Qua Chuyện Con Ốc Sên Muốn Biết Tại Sao Nó Chậm Chạp, mỗi người trong chúng ta thấy mình cũng giống như chú ốc sên nhỏ, hồn nhiên, nhiệt thành và như được tiếp thêm sức mạnh để sống hết mình trên chuyến hành trình tìm kiếm những điều lớn lao.', CAST(0xB43E0B00 AS Date), N'Admin', N'oc-sen.jpg', N'chuyen-con-oc-sen-muon-biet-tai-sao-no-cham-chap')
INSERT [dbo].[News] ([Id], [Title], [Summary], [Detail1], [Detail2], [DateCreate], [PeopleCreate], [Image], [Url]) VALUES (5, N'Lũ trẻ nhà Penderwicks', N'Quyển sách là câu chuyện xoay quanh những thành viên trong gia đình Penderwicks với người bố “gà trống nuôi con” luôn biết lắng nghe, với chị cả Rosalind 12 tuổi – người đảm đang nhất nhà, với chị hai Skye 11 tuổi, tóc vàng mắt xanh giống mẹ – là một tài năng về các môn khoa học tự nhiên, chị ba Jane ham viết lách với giấc mơ trở thành nhà văn, bé út Batty rụt rè, nhút nhát và chú cún trung thành, đáng yêu. Tuy chỉ là những câu chuyện gần gũi và giản dị về những niềm vui, nỗi buồn trong cuộc sống cũng như những chuyến phiêu lưu mạo hiểm nhưng Lũ Trẻ Nhà Penderwicks đã hút hồn hàng triệu độc giả ở các độ tuổi khác nhau trên khắp thế giới bởi nó diễn tả được tình cảm nồng ấm giữa các thành viên trong một gia đình không còn mẹ.', N'Quyển sách là câu chuyện xoay quanh những thành viên trong gia đình Penderwicks với người bố “gà trống nuôi con” luôn biết lắng nghe, với chị cả Rosalind 12 tuổi – người đảm đang nhất nhà, với chị hai Skye 11 tuổi, tóc vàng mắt xanh giống mẹ – là một tài năng về các môn khoa học tự nhiên, chị ba Jane ham viết lách với giấc mơ trở thành nhà văn, bé út Batty rụt rè, nhút nhát và chú cún trung thành, đáng yêu. Tuy chỉ là những câu chuyện gần gũi và giản dị về những niềm vui, nỗi buồn trong cuộc sống cũng như những chuyến phiêu lưu mạo hiểm nhưng Lũ Trẻ Nhà Penderwicks đã hút hồn hàng triệu độc giả ở các độ tuổi khác nhau trên khắp thế giới bởi nó diễn tả được tình cảm nồng ấm giữa các thành viên trong một gia đình không còn mẹ.', N'“Nếu không có chuyến đi đến một nơi nào khác biệt thì còn gọi gì là nghỉ hè nữa?”. Bắt đầu từ chân lý rất trẻ con ấy, cái tên Anrundel được chọn và cả gia đình họ gói ghém hành trang lên đường. Để rồi cuối cùng sự tình cờ thú vị ấy lại đưa họ đến với vô vàn những điều khó quên. Với lời văn giản dị và súc tích cũng như sử dụng các từ ngữ miêu tả cảm xúc thật đắc, tác giả đã như đưa người đọc vào một thế giới khác hẳn với sự xô bồ náo nhiệt hiện tại, để được đắm mình vào thiên nhiên, được trở về tuổi thơ thêm một lần nữa qua câu chuyện của nhà Penderwicks.

Kỳ nghỉ của Lũ Trẻ Nhà Penderwicks đưa người đọc đến với dinh thự Anrundel với khu vườn mênh mông yên bình, với phòng khách lộng lẫy như một viện bảo tàng thu nhỏ, với kho báu bí mật trên căn gác cũ, những buổi vũ hội và các nàng công chúa bất đắc dĩ, hiệp sĩ đấu bò và cuộc giải vây gay cấn… Kỳ nghỉ ấy, bọn trẻ còn được gặp gỡ và kết thân với những con người đáng mến như cậu chủ nhỏ Jeffrey thân thiện, anh Cagney điểm trai, bác Harry cà chua, bác Churchie bánh gừng, và đối đầu với cả những kẻ đáng ghét như bà Tifton kênh kiệu, gã Dexter đỏm dáng nhưng xấu tính. Tuy nhiên, điểm nhấn của truyện có lẽ vẫn nằm ở những giọt nước mắt đã rơi xuống trong chuyến hành trình, khi họ đã giúp mẹ con Jeffrey hiểu nhau hơn và cậu bạn Jeffrey thoát khỏi ngôi trường quân sự quái quỷ. Có vẻ như, tất cả những cung bậc của cảm xúc đều được tác giả Jeanne Birdsall gói ghém trong câu chuyện này.

Lũ Trẻ Nhà Penderwicks kết thúc với sự trưởng thành hơn của 4 cô bé trong truyện sau kỳ nghỉ hè, khi mà chị cả Rosalind đã bắt đầu biết lắng nghe những rung động đầu đời, Skye đã bớt nóng nảy hơn, Jane hoàn thành xuất sắc tác phẩm của mình để tiến gần hơn đến với ước mơ, và Batty không còn sợ sệt, ngơ ngác trước những người lớn chẳng mấy thân thiện.

Lũ Trẻ Nhà Penderwicks có lẽ không phải là một câu chuyện quá cầu kỳ, nhưng nó ấn tượng bởi sự giản dị, dễ thương và gần gũi rất đời thường mà ai cũng có thể nhận ra mình giống một phần trong đó. Câu chuyện còn thu hút người đọc bởi cảnh sắc thiên nhiên thơ mộng, với nắng hè và ánh trăng đêm đêm dát bạc xuống vùng quê yên tĩnh, như giúp lòng người lắng đọng lại giữa cuộc sống bộn bề. Và hơn hết, Lũ Trẻ Nhà Penderwicks ấn tượng bởi nó mang đậm dấu ấn của một gia đình mỗi người một tính cách, một sở thích nhưng lúc nào đầy ắp tình yêu thương.

“Đây quả là một sự trở lại những năm 1950, kỷ nguyên của những mùa hè khi bọn trẻ được du ngoạn và đọc sách. Truyền hình ư? Trò chơi điện tử ư? Hãy quên chúng đi! Lũ trẻ nhà Penderwicks mang lại niềm vui cho những độc giả trẻ tuổi, khiến họ nhớ ra một thể loại văn học của quá khứ nhưng chưa bao giờ bị quên lãng.” – Nhận định của Children Literature về tác phẩm Lũ Trẻ Nhà Penderwicks.', CAST(0xB43E0B00 AS Date), N'Admin', N'lu-tre.jpg', N'lu-tre-nha-penderwicks')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (2, N'Kim Đồng', N'19001570', N'tp HCM')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (3, N'Đại học quốc gia', N'0908419891', N'tp HCM')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (4, N'Văn hóa nghệ thuật', N'090311874', N'Đà Nẵng')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (5, N'Văn hóa', N'097812887', N'Bình Dương')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (6, N'Lao Động - Xã Hội', N'098988888', N'tp HCM')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (7, N'Khoa hoc - kỹ thuật', N'08126408', N'Hà Nội')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (8, N'NXB tài chính', N'76732123', N'Huế')
INSERT [dbo].[Publisher] ([Id], [NamePublisher], [PhoneNumber], [Address]) VALUES (9, N'NXB Phụ nữ', N'090235168', N'tp HCM')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (1, N'Tạp Chí', N'tap-chi-1')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (2, N'Truyện Tranh', N'truyen-tranh')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (3, N'Sách Kinh Tế', N'sach-kinh-te')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (4, N'Sách Văn Học', N'sach-van-hoc')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (5, N'Sách Kỹ Năng', N'sach-ky-nang')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (6, N'Sách Tuổi Teen', N'sach-tuoi-teen')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (7, N'Sách Thiếu Nhi', N'sach-thieu-nhi')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (8, N'Sách Thường Thức', N'sach-thuong-thuc')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (9, N'Sản Phẩm Nổi Bật', N'san-pham-noi-bat')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (10, N'Sản Phẩm Khuyến Mãi', N'san-pham-khuyen-mai')
INSERT [dbo].[Subject] ([Id], [NameSubject], [Url]) VALUES (11, N'Sách tin học', N'sach-tin-hoc')
SET IDENTITY_INSERT [dbo].[Subject] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Customer__536C85E407320E2C]    Script Date: 11/6/2018 12:07:08 AM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Position]  DEFAULT ((1)) FOR [Position]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([Id_Publisher])
REFERENCES [dbo].[Publisher] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Subject] FOREIGN KEY([Id_Subject])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Subject]
GO
ALTER TABLE [dbo].[DetailOrder]  WITH CHECK ADD  CONSTRAINT [FK_DetailOrder_Book] FOREIGN KEY([Id_Book])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[DetailOrder] CHECK CONSTRAINT [FK_DetailOrder_Book]
GO
ALTER TABLE [dbo].[DetailOrder]  WITH CHECK ADD  CONSTRAINT [FK_DetailOrder_Order] FOREIGN KEY([Id_Order])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[DetailOrder] CHECK CONSTRAINT [FK_DetailOrder_Order]
GO
ALTER TABLE [dbo].[ImageBook]  WITH CHECK ADD  CONSTRAINT [FK_ImageBook_Book] FOREIGN KEY([Id_Book])
REFERENCES [dbo].[Book] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageBook] CHECK CONSTRAINT [FK_ImageBook_Book]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([Id_Customer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[TakePart]  WITH CHECK ADD  CONSTRAINT [FK_TakePart_Author] FOREIGN KEY([Id_Author])
REFERENCES [dbo].[Author] ([Id])
GO
ALTER TABLE [dbo].[TakePart] CHECK CONSTRAINT [FK_TakePart_Author]
GO
ALTER TABLE [dbo].[TakePart]  WITH CHECK ADD  CONSTRAINT [FK_TakePart_Book] FOREIGN KEY([Id_Book])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[TakePart] CHECK CONSTRAINT [FK_TakePart_Book]
GO
