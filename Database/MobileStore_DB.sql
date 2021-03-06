USE [master]
GO

CREATE DATABASE [MOBILESTORE] 
GO

USE [MOBILESTORE]
GO
/****** Object:  Table [dbo].[AccountInRoles]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountInRoles](
	[AccountInRolesID] [int] NULL,
	[AccountID] [int] NULL,
	[RolesID] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AccountInRoles] ([AccountInRolesID], [AccountID], [RolesID]) VALUES (1, 1, 1)
INSERT [dbo].[AccountInRoles] ([AccountInRolesID], [AccountID], [RolesID]) VALUES (2, 2, 2)
INSERT [dbo].[AccountInRoles] ([AccountInRolesID], [AccountID], [RolesID]) VALUES (3, 3, 2)
INSERT [dbo].[AccountInRoles] ([AccountInRolesID], [AccountID], [RolesID]) VALUES (4, 4, 1)
/****** Object:  Table [dbo].[Category]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[ImageSource] [nvarchar](200) NULL,
	[CategoryType] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (1, N'Nokia', N'Nokia', NULL, N'Brand')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (2, N'Apple', N'Apple', NULL, N'Brand')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (3, N'Samsung', N'Samsung', NULL, N'Brand')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (4, N'Lenovo', N'Lenovo', NULL, N'Brand')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (5, N'Sony', N'Sony', NULL, N'Brand')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (6, N'Tai nghe', N'Tai nghe', NULL, N'Accessories')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (7, N'Ốp lưng', N'Ốp lưng', NULL, N'Accessories')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (8, N'Miếng dán màn hình', N'Miếng dán màn hình', NULL, N'Accessories')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (9, N'Bao da', N'Bao gia', NULL, N'Accessories')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (10, N'Phụ kiện Apple', N'Phụ kiện Apple', NULL, N'Accessories')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description], [ImageSource], [CategoryType]) VALUES (11, N'LG', N'Life''s Good', NULL, N'Brand')
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] NULL,
	[OrdersID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[Note] [nvarchar](500) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (1, 1, 10, 1, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (2, 1, 9, 2, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (3, 2, 12, 1, 150, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (4, 2, 13, 1, 350, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (5, 2, 11, 1, 430, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (6, 3, 13, 1, 350, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (7, 3, 12, 1, 150, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (8, 4, 13, 1, 350, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (9, 4, 12, 1, 150, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (10, 5, 13, 1, 350, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (11, 5, 12, 1, 150, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (12, 6, 13, 1, 350, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (13, 6, 12, 1, 150, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (14, 7, 10, 2, 7990, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrdersID], [ProductID], [Quantity], [Price], [Note]) VALUES (15, 7, 11, 1, 430, NULL)
/****** Object:  Table [dbo].[Account]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](150) NULL,
	[Status] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](15) NULL,
	[CMND] [nvarchar](10) NULL,
	[Address] [nvarchar](200) NULL,
	[Birthday] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Status], [FirstName], [LastName], [Email], [Phone], [CMND], [Address], [Birthday]) VALUES (1, N'phamxuanlu', N'3BmcIOhB35MaKDY05tj6Ge9+9JiKzVW3ywuTi44zTIsHO24qWX1JMPdbAolgZV31hStrFgH1a/5esxvszwZ4jQ==', 1, N'Lu', N'Pham Xuan', N'phamxuanlu@outlook.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Status], [FirstName], [LastName], [Email], [Phone], [CMND], [Address], [Birthday]) VALUES (2, N'abc', N'3BmcIOhB35MaKDY05tj6Ge9+9JiKzVW3ywuTi44zTIsHO24qWX1JMPdbAolgZV31hStrFgH1a/5esxvszwZ4jQ==', 1, NULL, NULL, N'phamxuanlu', NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Status], [FirstName], [LastName], [Email], [Phone], [CMND], [Address], [Birthday]) VALUES (3, N'a', N'XCyj1Q9G7OYGbFO9GkkMvl9y0nOK6UFzMukeXD91IFxjnXGppB1n2WX6E33d9Dngq5RDpupEkV6Q2LW1ZtHAdg==', 1, NULL, NULL, N'a', NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Status], [FirstName], [LastName], [Email], [Phone], [CMND], [Address], [Birthday]) VALUES (4, N'taquangtam', N'3BmcIOhB35MaKDY05tj6Ge9+9JiKzVW3ywuTi44zTIsHO24qWX1JMPdbAolgZV31hStrFgH1a/5esxvszwZ4jQ==', 1, NULL, NULL, N'tam@th9a.vn', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Orders]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrdersID] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[TotalAmount] [int] NULL,
	[Adress] [nvarchar](500) NULL,
	[Note] [nvarchar](500) NULL,
	[AccountID] [int] NOT NULL,
	[Status] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[ReceiveAddress] [nvarchar](500) NULL,
	[CMND] [nvarchar](15) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrdersID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (1, CAST(0x0000A29E00E0B6E8 AS DateTime), 13968, N'Hải Dương', N'Ngon', 1, 2, N'Lữ', N'Phạm', N'phamxuanlu@outlook.com', N'01667747394', N'HÀ Nội', N'142632990')
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (2, CAST(0x0000A2A0012A1B27 AS DateTime), 930, N'Hà nội', N'Giao hàng tận nơi', 1, 3, N'Xuân Lữ', N'Phạm', N'phamxuanlu@outlook.com', N'01667747394', N'Hà nội', N'142632990')
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (3, CAST(0x0000A29E00E0B6E8 AS DateTime), 500, N'Thanh Hà, Hải dương', N'Hà nội', 1, 2, N'Ngọc Sơn', N'Lê', N'lengocson020892@gmail.com', N'01673483092', N'Hà nội', N'123141424')
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (4, CAST(0x0000A2A0013594AA AS DateTime), 500, N'Thanh Hà, Hải dương', N'Hà nội', 1, 1, N'Ngọc Sơn', N'Lê', N'lengocson020892@gmail.com', N'01673483092', N'Hà nội', N'123141424')
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (5, CAST(0x0000A2A001359A93 AS DateTime), 500, N'Thanh Hà, Hải dương', N'Hà nội', 1, 2, N'Ngọc Sơn', N'Lê', N'lengocson020892@gmail.com', N'01673483092', N'Hà nội', N'123141424')
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (6, CAST(0x0000A2A001378AD6 AS DateTime), 500, N'Thanh Hà, Hải dương', N'Hà nội', 1, 3, N'Ngọc Sơn', N'Lê', N'lengocson020892@gmail.com', N'01673483092', N'Hà nội', N'123141424')
INSERT [dbo].[Orders] ([OrdersID], [OrderDate], [TotalAmount], [Adress], [Note], [AccountID], [Status], [FirstName], [LastName], [Email], [PhoneNumber], [ReceiveAddress], [CMND]) VALUES (7, CAST(0x0000A2A200FA09A0 AS DateTime), 16410, N'HN', N'đâs', 1, 2, N'Xuân', N'Phạm', N'phamxuanlu@outlook.com', N'011111', N'HN', N'112321')
/****** Object:  Table [dbo].[Picture]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[PictureID] [int] NULL,
	[ProductID] [int] NULL,
	[Title] [nvarchar](200) NULL,
	[Location] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NULL,
	[CategoryID] [int] NULL,
	[Name] [nvarchar](150) NULL,
	[Description] [nvarchar](500) NULL,
	[Price] [int] NULL,
	[OldPrice] [int] NULL,
	[ListedPrice] [int] NULL,
	[Discount] [int] NULL,
	[ImportDate] [datetime] NULL,
	[Quantity] [int] NULL,
	[ImageSource] [nvarchar](200) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (1, 2, N'iPhone 5s 32GB', N'Thiết kế nguyên khối với màu vàng ánh kim sang trọng', 0, 0, 19800, 0, CAST(0x0000A29C013F2B82 AS DateTime), 10, N'/Images/Upload/images/iphone-5s-gold-1.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (2, 5, N'Sony Xperia Z1 (Honami)', N' Sony Xperia Z1 - tất cả sức mạnh và trí tuệ của Sony trong một chiếc điện thoại thông minh cao cấp', 0, 0, 16490, 0, CAST(0x0000A29C013FE631 AS DateTime), 20, N'/Images/Upload/images/xperia-z1-silder1.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (7, 1, N'NOKIA LUMIA 1520', N'Nokia Lumia 1520 là chiếc phablet cao cấp của Nokia vừa được ra mắt trong thời gian gần đây được tích hợp những công nghệ tiên tiến nhất hiện nay về cả phần cứng lẫn việc tương thích hệ điều hành Windows Phone 8', 0, 0, 15990, 0, CAST(0x0000A29C0144C561 AS DateTime), 20, N'/Images/Upload/images/0025701_nokia-lumia-1520_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (12, 6, N'Tai nghe Sony X-301', N'Tai nghe dành cho điện thoại Sony X-301  có thiết kế độc đáo, chất lượng âm thanh trung thực mô phỏng lại âm thanh một cách chi tiết nhất, mang lại cho bạn trải nghiệm tuyệt vời .', 0, 0, 150, 0, CAST(0x0000A29F011F12D6 AS DateTime), 995, N'/Images/Upload/images/Tai-nghe-EP-Super-Bass-Awei-ES900i-750-org-1.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (13, 7, N'Ốp lưng nhựa mỏng Iphone 5 Ozaki', N'Ozaki được thành lập vào năm 1993 có trụ sở chính đặt tại Taipei (Đài Bắc) chuyên sản xuất phụ kiện dành riêng cho các sản phẩm của Apple.', 0, 0, 350, 0, CAST(0x0000A29F011FC0E3 AS DateTime), 995, N'/Images/Upload/images/OC530WH-01.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (14, 1, N'HTC 8S', N'HTC Windows Phone 8S là điện thoại thông minh chạy hệ điều hành Windows Phone 8 mới nhất của Microsoft với cấu hình mạnh mẽ, âm thanh Beats Audio, chụp ảnh đẹp, và nhiều tiện ích khác', 0, 0, 3290, 0, CAST(0x0000A2AA010A4DD5 AS DateTime), 100, N'/Images/Upload/images/0011901_htc-windows-phone-8s_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (15, 1, N'Nokia 515', N'Nokia 515 là điện thoại phổ thông dạng thanh với thiết kế thanh thoát, được trang bị máy ảnh 5 megapixels, có 3G, hỗ trợ nhiều tính năng giải trí, pin dùng lâu, giá hấp dẫn.', 0, 0, 3490, 0, CAST(0x0000A2AA010C60E7 AS DateTime), 50, N'/Images/Upload/images/0022143_nokia-515.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (16, 8, N'Miếng dán màn hình iphone 4', N'Miếng dán màn hình   là một phụ kiện nhỏ nhưng có một giá trị vô cùng lớn đối với chiếc điện thoại con cưng của các bạn. Đó là bảo vệ màn hình, chống xước, chống bám bụi, cho màn hình laptop của bạn luôn tươi mới. Sau một thời gian sử dụng, chiếc điện thoại của bạn vẫn không hề cũ đi. Tăng giá trị sử dụng cho sản phẩm của bạn.', 0, 0, 100, 0, CAST(0x0000A2AA010E8BA5 AS DateTime), 500, N'/Images/Upload/images/mieng-dan-man-hinh-iphone-4-300-nowatermark-300x300.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (17, 6, N'Tai nghe chụp KM890', N'KM 890 cho người dùng cảm giác thoải mái với hai miếng đệm tai được thiết kế giả da rất mềmmại, miếng đệm này khá dày nhưng độ đàn hồi tốt, ôm chọn tai người dùng. Bề mặt được đục lỗ nhỏ li ti khá đẹp mắt, đồng bộ với chiếc quai phía trên.', 0, 0, 290, 0, CAST(0x0000A2AA010F9758 AS DateTime), 800, N'/Images/Upload/images/Tai-nghe-Kanen-KM-890-300-nowatermark-300x300.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (18, 1, N'NOKIA LUMIA 1020', N'Nokia Lumia 1020 là điện thoại chụp ảnh đẹp nhất thế giới tính đến thời điểm hiện tại với cảm biến 41MP, ống kính Carl Zeiss và hệ thống tinh chỉnh tuyệt vời không thua các máy ảnh chuyên nghiệp bên cạnh cấu hình và kết nối mạnh mẽ.', 0, 0, 14790, 0, CAST(0x0000A2AA0110C2FC AS DateTime), 1000, N'/Images/Upload/images/0021652_nokia-lumia-1020.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (19, 1, N'Nokia Lumia 620', N'Nokia Lumia 620 là điện thoại chạy Windows Phone 8 cấu hình mạnh mẽ với giá cả cạnh tranh nhất, được trang bị nhiều công nghệ tiên tiến, kiểu dáng hiện đại, bền bỉ và sang trọng.', 0, 0, 6690, 0, CAST(0x0000A2AA0111E148 AS DateTime), 500, N'/Images/Upload/images/mau-sac-lumia-620.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (21, 5, N'SONY XPERIA C', N'Sony Xperia C là điện thoại thông minh mới ra mắt vào quý 3.2013 với chip quad-core cực mạnh, camera 8MP tuyệt đẹp, màn hình to 5-inch, chạy Android 4.2.2 mới nhất, kết nối mạnh mẽ, hỗ trợ 2 sim 2 sóng.
', 0, 0, 6690, 0, CAST(0x0000A2AA01142284 AS DateTime), 450, N'/Images/Upload/images/0021085_sony-xperia-c_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (3, 1, N'HTC One Max', N' Sony Xperia Z1 - tất cả sức mạnh và trí tuệ của Sony trong một chiếc điện thoại thông minh cao cấp', 0, 0, 17590, 0, CAST(0x0000A29C0140E78A AS DateTime), 20, N'/Images/Upload/images/htc-one-max-300-nowatermark.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (4, 2, N'iPhone 5S 16GB', N'iPhone 5S là bản nâng cấp vô cùng đáng giá từ Apple với cấu hình mạnh gấp đôi iPhone 5, chip xử lý 64 bit đầu tiên trên điện thoại, vòng Touch ID nhận dạng vân tay cực đỉnh', 0, 0, 17590, 0, CAST(0x0000A29C0141CB4C AS DateTime), 20, N'/Images/Upload/images/iphone-5s-16gb-300-nowatermark.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (5, 5, N'Sony Xperia Z1 Honami', N'Sony Xperia Z1 hay còn được gọi là siêu phẩm Honami', 0, 0, 16490, 0, CAST(0x0000A29C0142C1BA AS DateTime), 20, N'/Images/Upload/images/sony-xperia-z1-300-nowatermark.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (6, 2, N'IPHONE 5 16GB', N'iPhone 5 là một nâng cấp đáng giá của thế hệ iPhone trước với cấu hình mạnh mẽ hơn, màn hình rộng hơn, trải nghiệm hoàn chỉnh hơn.', 0, 0, 16490, 0, CAST(0x0000A29C01436DA9 AS DateTime), 20, N'/Images/Upload/images/iPhone-5-16GB-l.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (8, 1, N'Nokia Lumia 1020', N'Nokia Lumia 1020 là điện thoại chụp ảnh đẹp nhất thế giới tính đến thời điểm hiện tại với cảm biến 41MP, ống kính Carl Zeiss và hệ thống tinh chỉnh tuyệt vời không thua các máy ảnh chuyên nghiệp bên cạnh cấu hình và kết nối mạnh mẽ.', 0, 0, 14990, 0, CAST(0x0000A29C014575B9 AS DateTime), 20, N'/Images/Upload/images/0021648_nokia-lumia-1020_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (9, 1, N'Nokia Lumia 520', N'Nokia Lumia 520 là điện thoại Windows Phone 8 giá rẻ được mong đợi nhiều nhất, có đầy đủ tất cả những chức năng cao cấp phục vụ công việc và giải trí, cảm ứng siêu mượt, hệ điều hành tuyệt vời, thiết kế siêu thời trang', 0, 0, 2989, 0, CAST(0x0000A29C0146322B AS DateTime), 20, N'/Images/Upload/images/0015740_nokia-lumia-520_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (10, 1, N'Nokia Lumia 820', N'Nokia Lumia 820 với ống kính Carl Zeiss, màn hình ClearBlack 4.3 inch và hàng loạt các vỏ sạc không dây đầy màu sắc, đây là điện thoại cao cấp khẳng định thương hiệu Nokia', 0, 0, 7990, 0, CAST(0x0000A29C0148D179 AS DateTime), 18, N'/Images/Upload/images/0010214_nokia-lumia-820_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (11, 1, N'NOKIA 1280', N'Nokia 1280 điện thoại siêu rẻ màn hình đen trắng với các phím bấm nổi của Nokia. Máy đáp ứng các nhu cầu nghe gọi, nhắn tin cơ bản với thời lượng Pin và độ bền siêu khủng.', 0, 0, 430, 0, CAST(0x0000A29C014960BC AS DateTime), 18, N'/Images/Upload/images/0016557_nokia-1280.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (20, 7, N'Ốp lưng nhựa Nokia Lumia 620', N'Với bất kỳ ai đang sở hữu một chiếc Nokia Lumia thì rõ ràng bạn luôn gặp phải vấn đề là làm sao để chiếc điện thoại mình luôn mới và thời trang. Một giải pháp khá an toàn và tối ưu cho bạn chính là chiếc ốp lưng Temei mang phong cách thời trang với nhiều màu sắc cá tính, đặc biệt là độ an toàn và sự gọn gàng của nó sẽ giúp bạn luôn an tâm với chú “dế cưng” Lumia 620 của mình.', 0, 0, 290, 0, CAST(0x0000A2AA01129A48 AS DateTime), 450, N'/Images/Upload/images/Op-Lung-Nokia-Lumia-620-xanhnavi-nowatermark-300x300.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (22, 5, N'SONY XPERIA TX ', N'Xperia TX hay còn có tên gọi khác là Sony LT29i, là điện thoại Android cao cấp, thiết kế tuyệt đẹp, cấu hình cực mạnh, camera khủng 13MP quay phim full HD, màn hình BRAVIA, kết nối tiên tiến, hệ điều hành hỗ trợ nâng cấp lên Android mới nhất 4.1', 0, 0, 7990, 0, CAST(0x0000A2AA0114BF50 AS DateTime), 900, N'/Images/Upload/images/Sony-Xperia-TX-l.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (23, 2, N'IPHONE 4S 16GB', N'iPhone 4S phiên bản nâng cấp của iPhone 4, được đánh giá là “điện thoại tốt nhất thế giới” ngay từ khi ra mắt, đến nay iPhone 4S vẫn là thiết kế mẫu mực trong các dòng điện thoại thông minh.
', 0, 0, 14490, 0, CAST(0x0000A2AA0115730B AS DateTime), 400, N'/Images/Upload/images/0025600_iphone-4s-16gb_300.jpeg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (24, 6, N'Tai nghe EP iPhone Awei', N'Tai nghe thời trang TE200vi của Awei được thiết kế chuyên dùng cho iPhone, mang đến chất lượng âm thanh sống động, chân thực, là phụ kiện giúp chiếc iPhone của bạn phát huy tối đa sức hấp dẫn của âm nhạc. Với kiểu dáng đẹp, thời trang sản phẩm giúp bạn tự tin hơn khi sử dụng.', 0, 0, 240, 0, CAST(0x0000A2AA0116D299 AS DateTime), 300, N'/Images/Upload/images/tainghe-aweii-nowatermark-300x300.jpg')
INSERT [dbo].[Product] ([ProductID], [CategoryID], [Name], [Description], [Price], [OldPrice], [ListedPrice], [Discount], [ImportDate], [Quantity], [ImageSource]) VALUES (25, 7, N'Ốp lưng Iphone 5', N'Ốp lưng Iphone 5 Colorant với 6 màu sắc hấp dẫn như trắng đen, trắng xanh, trắng cam hoặc trắng hồng,..., chắc chắn bạn sẽ chọn cho mình được màu sắc ưng ý nhất.', 0, 0, 350, 0, CAST(0x0000A2AA0118C8E2 AS DateTime), 100, N'/Images/Upload/images/Op-lung-Iphone-Colorant-trang-den-300.jpg')
/****** Object:  Table [dbo].[Roles]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RolesID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Roles] ([RolesID], [Name], [Description]) VALUES (1, N'Admin', N'Administrator')
INSERT [dbo].[Roles] ([RolesID], [Name], [Description]) VALUES (2, N'User', N'User')
/****** Object:  Table [dbo].[Slide]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[SlideID] [int] NULL,
	[SlideType] [int] NULL,
	[ImageSource] [nvarchar](200) NULL,
	[Title] [nvarchar](100) NULL,
	[TextContent] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Slide] ([SlideID], [SlideType], [ImageSource], [Title], [TextContent]) VALUES (1, 1, N'~/images/lm_banner_2.jpg', N'TRẢI NGHIỆM CÔNG NGHỆ', N'TRẢI NGHIỆM CÔNG NGHỆ')
INSERT [dbo].[Slide] ([SlideID], [SlideType], [ImageSource], [Title], [TextContent]) VALUES (2, 1, N'~/images/lm_banner_3.jpg', N'KHÁM PHÁ WINDOWS PHONE 8', N'KHÁM PHÁ WINDOWS PHONE 8')
INSERT [dbo].[Slide] ([SlideID], [SlideType], [ImageSource], [Title], [TextContent]) VALUES (3, 1, N'~/images/lm_banner_1.jpg', N'THIẾT BỊ DI ĐỘNG', N'THIẾT BỊ DI ĐỘNG')
INSERT [dbo].[Slide] ([SlideID], [SlideType], [ImageSource], [Title], [TextContent]) VALUES (4, 2, N'~/images/promo_hb_2.jpg', N'PHỤ KIỆN', N'http://localhost:6223/')
INSERT [dbo].[Slide] ([SlideID], [SlideType], [ImageSource], [Title], [TextContent]) VALUES (5, 2, N'~/images/promo_hb_1.jpg', N'ĐIỆN THOẠI', N'http://localhost:6223/Product/ListProducts')
INSERT [dbo].[Slide] ([SlideID], [SlideType], [ImageSource], [Title], [TextContent]) VALUES (6, 2, N'~/images/promo_hb_3.jpg', N'KHUYẾN MẠI', N'#')
/****** Object:  Table [dbo].[Specification]    Script Date: 01/05/2014 21:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specification](
	[SpecificationID] [int] NULL,
	[ProductID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Value] [nvarchar](300) NULL,
	[ImageSource] [nvarchar](200) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (1, 1, N'Màn hình', N'DVGA, 4.0", 640 x 1136 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (2, 1, N'CPU', N'Apple A7, 2 nhân, 1.3 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (3, 1, N'RAM', N'1 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (4, 1, N'Hệ điều hành', N'iOS 7.0', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (5, 1, N'Camera chính', N'8.0 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (6, 1, N'Camera phụ', N'1.2 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (7, 1, N'Bộ nhớ trong', N'32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (8, 1, N'Thẻ nhớ ngoài đến', N'Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (9, 1, N'Dung lượng pin', N'	1560 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (10, 2, N'Màn hình', N'Full HD, 5.0", 1080 x 1920 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (11, 2, N'CPU', N'Qualcomm MSM8974, 4 nhân, 2.2 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (12, 2, N'RAM', N'2 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (13, 2, N'Hệ điều hành', N'Android 4.2.2 (Jelly Bean)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (14, 2, N'Camera chính', N'20.7 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (15, 2, N'Camera phụ', N'2.0 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (16, 2, N'Bộ nhớ trong', N'16 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (17, 2, N'Thẻ nhớ ngoài đến', N'64 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (18, 2, N'Dung lượng pin', N'	3000 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (55, 7, N'Màn hình', N' Full HD, 6.0", 1080 x 1920 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (56, 7, N'CPU', N' Qualcomm Snapdragon 800, 4 nhân, 2.2 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (57, 7, N'RAM', N' 2 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (58, 7, N'Hệ điều hành', N' Windows Phone 8', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (59, 7, N'Camera chính', N' 20 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (60, 7, N'Camera phụ', N' 1.2 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (61, 7, N'Bộ nhớ trong', N' 32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (62, 7, N'Thẻ nhớ ngoài đến', N' 64 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (63, 7, N'Dung lượng pin', N' 3400 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (98, 12, N' ', N'Thiết kế thời trang.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (99, 12, N' ', N'Bền bỉ, chống xoắn.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (100, 12, N' ', N'Tương thích với nhiều thiết bị.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (101, 12, N' ', N'Âm thanh sống động, khử nhiễu hoàn hảo.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (102, 12, N' ', N'Nghe FM', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (103, 12, N' ', N'Nghe và nhận cuộc gọi', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (104, 12, N' ', N'Micro khử nhiễu', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (105, 13, N' ', N'Siêu mỏng (0.3mm) và siêu nhẹ (3g).', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (106, 13, N' ', N'Cao su phủ mang lại độ bám cao và cảm giác thoải mái.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (107, 13, N' ', N'Thiết kế vừa vặn với iPhone 5.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (108, 13, N' ', N'Dễ dàng sử dụng các cổng, nút bấm của iPhone.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (109, 14, N'Màn hình', N' WVGA, 4.0", 480 x 800 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (110, 14, N'CPU', N'Qualcomm Snapdragon S4, 2 nhân, 1 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (111, 14, N'RAM', N'512 MB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (112, 14, N'OS', N' Windows Phone 8', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (113, 14, N'Camera chính', N'	5.0 MP, Quay phim HD 720p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (114, 14, N'Camera phụ', N'	Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (115, 14, N'Bộ nhớ trong', N'	4 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (116, 14, N'Thẻ nhớ tối đa', N'	32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (117, 14, N'Pin', N'	1700 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (118, 15, N'Màn hình', N'QVGA, 2.4", 240 x 320 Pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (119, 15, N'SIM', N'	2 SIM 2 sóng', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (120, 15, N'Camera', N'	5.0 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (121, 15, N'Danh bạ', N'1000 số', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (122, 15, N'Thẻ nhớ ngoài đến', N'32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (123, 15, N'Kết nối Bluetooth', N'Có, V3.0', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (124, 15, N'Chức năng khác', N'	Mạng xã hội ảo', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (125, 15, N'Dung lượng pin', N'	1200 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (126, 16, N'Miếng dán gồm', N' 3 lớp, sau khi dán xong sử dụng lớp giữa, bỏ 2 lớp bìa Giúp bảo vệ màn hình một cách tốt nhất, chống trầy, chống xướt', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (127, 17, N'Tai nghe', N'chuyên để nghe nhạc.Hay hơn tai nghe theo máy', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (128, 18, N'Màn hình', N'	WXGA, 4.5", 768 x 1280 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (129, 18, N'CPU', N'	Qualcomm MSM8960, 2 nhân, 1.5 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (130, 18, N'RAM', N'2 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (131, 18, N'Hệ điều hành', N'	Windows Phone 8', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (132, 18, N'Camera chính', N'	41 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (133, 18, N'Camera phụ', N'	1.2 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (134, 18, N'Bộ nhớ trong', N'	32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (135, 18, N'Thẻ nhớ ngoài đến', N'	Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (136, 18, N'Dung lượng pin', N'	2000 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (167, 19, N'Dung lượng pin', N'1300 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (138, 20, N'thông số', N' Giữ điện thoại luôn đẹp và cá tính Mẫu mã đẹp - chất lượng cao Giá tốt nhất', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (140, 21, N'Màn hình', N'	qHD, 5.0", 540 x 960 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (141, 21, N'CPU', N'	MTK 6589, 4 nhân, 1.2 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (142, 21, N'RAM', N'1 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (143, 21, N'Hệ điều hành', N'	Android 4.2.2 (Jelly Bean)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (144, 21, N'Camera chính', N'	8.0 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (145, 21, N'Camera phụ', N'	VGA (0.3 Mpx)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (146, 21, N'Bộ nhớ trong', N'	4 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (147, 21, N'Thẻ nhớ ngoài đến', N'	32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (148, 21, N'Dung lượng pin', N'	2370 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (149, 22, N'Màn hình', N'	HD, 4.55", 720 x 1280 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (150, 22, N'CPU', N'	Qualcomm MSM8260A, 2 nhân, 1.5 GHz Krait', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (151, 22, N'RAM', N'	1 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (152, 22, N'Hệ điều hành', N'	Android 4.0.4 (ICS)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (153, 22, N'Camera chính', N'	13 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (154, 22, N'Camera phụ', N'	1.3 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (155, 22, N'Bộ nhớ trong', N'	16 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (156, 22, N'Thẻ nhớ ngoài đến', N'	32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (157, 22, N'Dung lượng pin', N'	1750 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (158, 23, N'Màn hình', N'	DVGA, 3.5", 640 x 960 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (159, 23, N'CPU', N'	Apple A5, 2 nhân, 1 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (160, 23, N'RAM', N'512 MB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (161, 23, N'Hệ điều hành', N'	iOS 5', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (162, 23, N'Camera chính', N'	8.0 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (163, 23, N'Camera phụ', N'	VGA (0.3 Mpx)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (164, 23, N'Bộ nhớ trong', N'	16 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (165, 23, N'Thẻ nhớ ngoài đến', N'	Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (166, 23, N'Dung lượng pin', N'	1420 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (168, 24, N'Thiết kế', N' tinh tế, sang trọng thể hiện cá tính và phong cách.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (19, 3, N'Màn hình', N' Full HD, 5.9", 1080 x 1920 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (20, 3, N'CPU', N' Qualcomm Snapdragon 600, 4 nhân, 1.7 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (21, 3, N'RAM ', N'2 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (22, 3, N'Hệ điều hành', N' Android 4.3 (Jelly Bean)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (23, 3, N'Camera chính', N' 4,0 UltraPixel, Quay phim FullHD 1080p@30fps', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (24, 3, N'Camera phụ', N' 2.1 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (25, 3, N'Bộ nhớ trong', N' 16 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (26, 3, N'Thẻ nhớ ngoài đến', N' 64 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (27, 3, N'Dung lượng pin', N' 3300 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (97, 4, N'Dung lượng pin', N'1560 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (169, 24, N'Jack cắm', N' 3.5mm thích hợp với hầu hết các smartphone và thiết bị nghe nhạc.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (170, 24, N'Thiết kế', N' tinh tế, sang trọng thể hiện cá tính và phong cách.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (171, 24, N'Jack cắm', N' 3.5mm thích hợp với hầu hết các smartphone và thiết bị nghe nhạc.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (172, 24, N'Thiết kế', N' tinh tế, sang trọng thể hiện cá tính và phong cách.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (173, 24, N'Jack cắm', N' 3.5mm thích hợp với hầu hết các smartphone và thiết bị nghe nhạc.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (174, 24, N'Thiết kế', N' tinh tế, sang trọng thể hiện cá tính và phong cách.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (175, 24, N'Thiết kế', N' tinh tế sang trọng thể hiện cá tính và phong cách.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (176, 24, N'Thiết kế', N' tinh tế sang trọng thể hiện cá tính và phong cách.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (37, 5, N'Màn hình', N'Full HD, 5.0", 1080 x 1920 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (38, 5, N'CPU', N'Qualcomm MSM8974, 4 nhân, 2.2 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (39, 5, N'RAM', N'2 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (40, 5, N'Hệ điều hành', N'Android 4.2.2 (Jelly Bean)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (41, 5, N'Camera chính', N'20.7 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (42, 5, N'Camera phụ', N'2.0 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (43, 5, N'Bộ nhớ trong', N'16 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (44, 5, N'Thẻ nhớ ngoài đến', N'64 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (45, 5, N'Dung lượng pin', N'	3000 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (46, 6, N'Màn hình', N'DVGA, 4.0", 640 x 1136 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (47, 6, N'CPU', N'Apple A6, 2 nhân, 1.3 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (48, 6, N'RAM', N'1 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (49, 6, N'Hệ điều hành', N'iOS 6', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (50, 6, N'Camera chính', N'8.0 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (51, 6, N'Camera phụ', N'1.2 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (52, 6, N'Bộ nhớ trong', N'32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (53, 6, N'Thẻ nhớ ngoài đến', N'Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (54, 6, N'Dung lượng pin', N'	1440 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (64, 8, N'Màn hình', N'WXGA, 4.5", 768 x 1280 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (65, 8, N'CPU', N'	Qualcomm MSM8960, 2 nhân, 1.5 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (66, 8, N'RAM', N'2 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (67, 8, N'Hệ điều hành', N'Windows Phone 8', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (68, 8, N'Camera chính', N'41 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (69, 8, N'Camera phụ', N'1.2 MP', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (70, 8, N'Bộ nhớ trong', N'32 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (71, 8, N'Thẻ nhớ ngoài đến', N'Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (72, 8, N'Dung lượng pin', N'	2000 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (73, 9, N'Màn hình', N'	WVGA, 4.0", 480 x 800 pixels', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (74, 9, N'CPU', N'	Qualcomm MSM8227, 2 nhân, 1 GHz', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (75, 9, N'RAM', N'	512 MB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (76, 9, N'Hệ điều hành', N'	Windows Phone 8', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (77, 9, N'SIM', N'	1 Sim', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (78, 9, N'Camera', N'	5.0 MP, Quay phim HD 720p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (79, 9, N'Bộ nhớ trong', N'	8 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (80, 9, N'Thẻ nhớ ngoài đến', N'	64 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (81, 9, N'Dung lượng pin', N'	1430 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (82, 10, N'CPU', N'	Qualcomm MSM8960, 2 nhân, 1.5 GHz Krait', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (83, 10, N'RAM', N'	1 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (84, 10, N'Hệ điều hành', N'	Windows Phone 8', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (85, 10, N'Camera chính', N'	8.0 MP, Quay phim FullHD 1080p@30fps', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (86, 10, N'Camera phụ', N'	VGA (0.3 Mpx)', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (87, 10, N'Bộ nhớ trong', N'	8 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (88, 10, N'Thẻ nhớ ngoài đến', N'	64 GB', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (89, 10, N'Dung lượng pin', N'	1650 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (90, 11, N'SIM', N'	1 Sim', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (91, 11, N'Camera', N'	Không có', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (92, 11, N'Danh bạ', N'	500 số', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (93, 11, N'Thẻ nhớ ngoài đến', N'	Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (94, 11, N'Kết nối Bluetooth', N'	Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (95, 11, N'Chức năng khác', N'	Không', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (96, 11, N'Dung lượng pin', N'	800 mAh', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (177, 24, N'Thiết kế', N' tinh tế ', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (178, 24, N'Thông số', N' không có', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (179, 25, N'Ưu điểm', N' Chống trầy xước, móp méo, bám mồ hôi, bụi bẩn.Nhiều màu sắc để lựa chọn.Được làm từ chất liệu nhựa cao cấp.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (180, 25, N'Ưu điểm ', N' Chống trầy xước, móp méo, bám mồ hôi, bụi bẩn.Nhiều màu sắc để lựa chọn.Được làm từ chất liệu nhựa cao cấp.', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (181, 25, N'Ưu điểm ', N' Chống trầy xước, móp méo, bám mồ hôi, bụi bẩn', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (182, 25, N'Ưu điểm ', N' Chống trầy xước móp méo bám mồ hôi bụi bẩn', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (183, 25, N'Ưu điểm ', N' Chống trầy xước móp méo bám mồ hôi bụi bẩn', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (184, 25, N'Ưu điểm', N' Chống trầy xước móp méo bám mồ hôi bụi bẩn', NULL)
INSERT [dbo].[Specification] ([SpecificationID], [ProductID], [Name], [Value], [ImageSource]) VALUES (185, 25, N'Thông số', N' không có', NULL)
/****** Object:  StoredProcedure [dbo].[Specification_ProcUpdate]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Specification_ProcUpdate]
	@SpecificationID int,
	@ProductID int,
	@Name nvarchar(100),
	@Value nvarchar(300),
	@ImageSource nvarchar(200)
AS
BEGIN
	UPDATE Specification
	SET
		[SpecificationID]=@SpecificationID,
		[ProductID]=@ProductID,
		[Name]=@Name,
		[Value]=@Value,
		[ImageSource]=@ImageSource
	WHERE SpecificationID=@SpecificationID
END
GO
/****** Object:  StoredProcedure [dbo].[Specification_ProcInsert]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Specification_ProcInsert]
	@SpecificationID int,
	@ProductID int,
	@Name nvarchar(100),
	@Value nvarchar(300),
	@ImageSource nvarchar(200)
AS
BEGIN
	INSERT INTO Specification
	VALUES(
		@SpecificationID,
		@ProductID,
		@Name,
		@Value,
		@ImageSource
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Specification_ProcDelete]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Specification_ProcDelete]
	@SpecificationID int
AS
BEGIN
	DELETE FROM Specification
	WHERE SpecificationID=@SpecificationID
END
GO
/****** Object:  StoredProcedure [dbo].[SlideAPI_GetSlides]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SlideAPI_GetSlides]
@SlideType INT
AS
BEGIN
	SELECT * FROM Slide
	WHERE SlideType=@SlideType
END
GO
/****** Object:  StoredProcedure [dbo].[Slide_ProcUpdate]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Slide_ProcUpdate]
	@SlideID int,
	@SlideType int,
	@ImageSource nvarchar(200),
	@Title nvarchar(100),
	@TextContent nvarchar(1000)
AS
BEGIN
	UPDATE Slide
	SET
		[SlideID]=@SlideID,
		[SlideType]=@SlideType,
		[ImageSource]=@ImageSource,
		[Title]=@Title,
		[TextContent]=@TextContent
	WHERE SlideID=@SlideID
END
GO
/****** Object:  StoredProcedure [dbo].[Slide_ProcInsert]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Slide_ProcInsert]
	@SlideID int,
	@SlideType int,
	@ImageSource nvarchar(200),
	@Title nvarchar(100),
	@TextContent nvarchar(1000)
AS
BEGIN
	INSERT INTO Slide
	VALUES(
		@SlideID,
		@SlideType,
		@ImageSource,
		@Title,
		@TextContent
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Slide_ProcDelete]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Slide_ProcDelete]
	@SlideID int
AS
BEGIN
	DELETE FROM Slide
	WHERE SlideID=@SlideID
END
GO
/****** Object:  StoredProcedure [dbo].[Roles_ProcUpdate]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Roles_ProcUpdate]
	@RolesID int,
	@Name nvarchar(100),
	@Description nvarchar(200)
AS
BEGIN
	UPDATE Roles
	SET
		[RolesID]=@RolesID,
		[Name]=@Name,
		[Description]=@Description
	WHERE RolesID=@RolesID
END
GO
/****** Object:  StoredProcedure [dbo].[Roles_ProcInsert]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Roles_ProcInsert]
	@RolesID int,
	@Name nvarchar(100),
	@Description nvarchar(200)
AS
BEGIN
	INSERT INTO Roles
	VALUES(
		@RolesID,
		@Name,
		@Description
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Roles_ProcDelete]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Roles_ProcDelete]
	@RolesID int
AS
BEGIN
	DELETE FROM Roles
	WHERE RolesID=@RolesID
END
GO
/****** Object:  StoredProcedure [dbo].[ProductAPI_TotalPages]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductAPI_TotalPages]
	@CategoryType NVARCHAR(50)
AS
BEGIN
		SELECT COUNT(*)
		FROM Product
		WHERE CategoryID IN (SELECT CategoryID FROM Category WHERE CategoryType=@CategoryType)
END
GO
/****** Object:  StoredProcedure [dbo].[ProductAPI_TopSales]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductAPI_TopSales]
@NumberOfProduct INT
AS
BEGIN
	SELECT * FROM Product
	WHERE Product.ProductID IN(
	SELECT A.ProductID
		FROM
		(
			SELECT TOP(@NumberOfProduct) WITH TIES Product.ProductID, SUM(OrderDetail.Quantity) AS Total
			FROM Product, OrderDetail
			WHERE Product.ProductID=OrderDetail.ProductID
			GROUP BY Product.ProductID
			ORDER BY Total
		) A
		)
END
GO
/****** Object:  StoredProcedure [dbo].[ProductAPI_ProductsOfCategory]    Script Date: 01/05/2014 21:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductAPI_ProductsOfCategory]
@CategoryID INT,
@NumberOfProduct INT
AS
BEGIN
	SELECT TOP (@NumberOfProduct) * 
	FROM Product
	WHERE CategoryID=@CategoryID
	ORDER BY ImportDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ProductAPI_GetProductsNew]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductAPI_GetProductsNew]
@NumberOfProduct INT
AS
BEGIN
	SELECT TOP(@NumberOfProduct) *
	FROM Product
	ORDER BY ImportDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ProductAPI_GetProductsByPage]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductAPI_GetProductsByPage]
@CategoryType NVARCHAR(50),
@PageNumber INT,
@PageSize INT
AS
BEGIN
	SET @PageNumber = @PageNumber-1;
	WITH RowTable
	AS
	(
		SELECT *,
				ROW_NUMBER() OVER(	ORDER BY ImportDate DESC) AS [Row]
		FROM Product
		WHERE CategoryID IN (SELECT CategoryID FROM Category WHERE CategoryType=@CategoryType)
	) 
	SELECT * FROM RowTable
	WHERE [Row] BETWEEN @PageNumber*@PageSize+1 AND (@PageNumber+1)*@PageSize
END
GO
/****** Object:  StoredProcedure [dbo].[Product_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product_ProcUpdate]
	@ProductID int,
	@CategoryID int,
	@Name nvarchar(150),
	@Description nvarchar(500),
	@Price int,
	@OldPrice int,
	@ListedPrice int,
	@Discount int,
	@ImportDate datetime,
	@Quantity int,
	@ImageSource nvarchar(200)
AS
BEGIN
	UPDATE Product
	SET
		[ProductID]=@ProductID,
		[CategoryID]=@CategoryID,
		[Name]=@Name,
		[Description]=@Description,
		[Price]=@Price,
		[OldPrice]=@OldPrice,
		[ListedPrice]=@ListedPrice,
		[Discount]=@Discount,
		[ImportDate]=@ImportDate,
		[Quantity]=@Quantity,
		[ImageSource]=@ImageSource
	WHERE ProductID=@ProductID
END
GO
/****** Object:  StoredProcedure [dbo].[Product_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product_ProcInsert]
	@ProductID int,
	@CategoryID int,
	@Name nvarchar(150),
	@Description nvarchar(500),
	@Price int,
	@OldPrice int,
	@ListedPrice int,
	@Discount int,
	@ImportDate datetime,
	@Quantity int,
	@ImageSource nvarchar(200)
AS
BEGIN
	INSERT INTO Product
	VALUES(
		@ProductID,
		@CategoryID,
		@Name,
		@Description,
		@Price,
		@OldPrice,
		@ListedPrice,
		@Discount,
		@ImportDate,
		@Quantity,
		@ImageSource
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Product_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product_ProcDelete]
	@ProductID int
AS
BEGIN
	--Delete All Specifications
	DELETE FROM Specification WHERE ProductID=@ProductID
	--Delete All Pictures
	DELETE FROM Picture WHERE ProductID=@ProductID
	--Delete Product
	DELETE FROM Product	WHERE ProductID=@ProductID
END
GO
/****** Object:  StoredProcedure [dbo].[Picture_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Picture_ProcUpdate]
	@PictureID int,
	@ProductID int,
	@Title nvarchar(200),
	@Location nvarchar(200)
AS
BEGIN
	UPDATE Picture
	SET
		[PictureID]=@PictureID,
		[ProductID]=@ProductID,
		[Title]=@Title,
		[Location]=@Location
	WHERE PictureID=@PictureID
END
GO
/****** Object:  StoredProcedure [dbo].[Picture_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Picture_ProcInsert]
	@PictureID int,
	@ProductID int,
	@Title nvarchar(200),
	@Location nvarchar(200)
AS
BEGIN
	INSERT INTO Picture
	VALUES(
		@PictureID,
		@ProductID,
		@Title,
		@Location
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Picture_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Picture_ProcDelete]
	@PictureID int
AS
BEGIN
	DELETE FROM Picture
	WHERE PictureID=@PictureID
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Orders_ProcUpdate]
	@OrdersID int,
	@OrderDate datetime,
	@TotalAmount int,
	@Adress nvarchar(500),
	@Note nvarchar(500),
	@AccountID int,
	@Status int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(100),
	@PhoneNumber nvarchar(15),
	@ReceiveAddress nvarchar(500),
	@CMND nvarchar(15)
AS
BEGIN
	UPDATE Orders
	SET
		[OrdersID]=@OrdersID,
		[OrderDate]=@OrderDate,
		[TotalAmount]=@TotalAmount,
		[Adress]=@Adress,
		[Note]=@Note,
		[AccountID]=@AccountID,
		[Status]=@Status,
		[FirstName]=@FirstName,
		[LastName]=@LastName,
		[Email]=@Email,
		[PhoneNumber]=@PhoneNumber,
		[ReceiveAddress]=@ReceiveAddress,
		[CMND]=@CMND
	WHERE OrdersID=@OrdersID
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Orders_ProcInsert]
	@OrdersID int,
	@OrderDate datetime,
	@TotalAmount int,
	@Adress nvarchar(500),
	@Note nvarchar(500),
	@AccountID int,
	@Status int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(100),
	@PhoneNumber nvarchar(15),
	@ReceiveAddress nvarchar(500),
	@CMND nvarchar(15)
AS
BEGIN
	INSERT INTO Orders
	VALUES(
		@OrdersID,
		@OrderDate,
		@TotalAmount,
		@Adress,
		@Note,
		@AccountID,
		@Status,
		@FirstName,
		@LastName,
		@Email,
		@PhoneNumber,
		@ReceiveAddress,
		@CMND
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Orders_ProcDelete]
	@OrdersID int
AS
BEGIN
	DELETE FROM Orders
	WHERE OrdersID=@OrdersID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderDetail_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[OrderDetail_ProcUpdate]
	@OrderDetailID int,
	@OrdersID int,
	@ProductID int,
	@Quantity int,
	@Price int,
	@Note nvarchar(500)
AS
BEGIN
	DECLARE @OldQuantity INT
	SELECT @OldQuantity=Quantity FROM OrderDetail WHERE OrderDetailID=@OrderDetailID
	UPDATE OrderDetail
	SET
		[OrderDetailID]=@OrderDetailID,
		[OrdersID]=@OrdersID,
		[ProductID]=@ProductID,
		[Quantity]=@Quantity,
		[Price]=@Price,
		[Note]=@Note
	WHERE OrderDetailID=@OrderDetailID
	UPDATE Product SET Quantity = Quantity - (@Quantity-@OldQuantity)
END
GO
/****** Object:  StoredProcedure [dbo].[OrderDetail_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[OrderDetail_ProcInsert]
	@OrderDetailID int,
	@OrdersID int,
	@ProductID int,
	@Quantity int,
	@Price int,
	@Note nvarchar(500)
AS
BEGIN
	INSERT INTO OrderDetail
	VALUES(
		@OrderDetailID,
		@OrdersID,
		@ProductID,
		@Quantity,
		@Price,
		@Note
	)
	UPDATE Product SET Quantity=Quantity-@Quantity WHERE ProductID=@ProductID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderDetail_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[OrderDetail_ProcDelete]
	@OrderDetailID int
AS
BEGIN
	DELETE FROM OrderDetail
	WHERE OrderDetailID=@OrderDetailID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderBUS_GetProducts]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[OrderBUS_GetProducts]
@OrderID INT
AS
BEGIN
	SELECT * FROM Product WHERE ProductID IN
	(
		SELECT ProductID
		FROM OrderDetail
		WHERE OrdersID=@OrderID
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Category_ProcUpdate]
	@CategoryID int,
	@Name nvarchar(50),
	@Description nvarchar(200),
	@ImageSource nvarchar(200),
	@CategoryType NVARCHAR(50)
AS
BEGIN
	UPDATE Category
	SET
		[CategoryID]=@CategoryID,
		[Name]=@Name,
		[Description]=@Description,
		[ImageSource]=@ImageSource,
		[CategoryType]=@CategoryType
	WHERE CategoryID=@CategoryID
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Category_ProcInsert]
	@CategoryID int,
	@Name nvarchar(50),
	@Description nvarchar(200),
	@ImageSource nvarchar(200),
	@CategoryType NVARCHAR(50)
AS
BEGIN
	INSERT INTO Category
	VALUES(
		@CategoryID,
		@Name,
		@Description,
		@ImageSource,
		@CategoryType
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Category_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Category_ProcDelete]
	@CategoryID int
AS
BEGIN
	DELETE FROM Category
	WHERE CategoryID=@CategoryID
END
GO
/****** Object:  StoredProcedure [dbo].[AccountInRoles_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AccountInRoles_ProcUpdate]
	@AccountInRolesID int,
	@AccountID int,
	@RolesID int
AS
BEGIN
	UPDATE AccountInRoles
	SET
		[AccountInRolesID]=@AccountInRolesID,
		[AccountID]=@AccountID,
		[RolesID]=@RolesID
	WHERE AccountInRolesID=@AccountInRolesID
END
GO
/****** Object:  StoredProcedure [dbo].[AccountInRoles_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AccountInRoles_ProcInsert]
	@AccountInRolesID int,
	@AccountID int,
	@RolesID int
AS
BEGIN
	INSERT INTO AccountInRoles
	VALUES(
		@AccountInRolesID,
		@AccountID,
		@RolesID
	)
END
GO
/****** Object:  StoredProcedure [dbo].[AccountInRoles_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AccountInRoles_ProcDelete]
	@AccountInRolesID int
AS
BEGIN
	DELETE FROM AccountInRoles
	WHERE AccountInRolesID=@AccountInRolesID
END
GO
/****** Object:  StoredProcedure [dbo].[Account_Register]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Account_Register]
@AccountID INT,
@Username NVARCHAR(100),
@Password NVARCHAR(100),
@Email NVARCHAR(100)
AS
BEGIN
	DECLARE @IsUsernameExist INT
	SELECT @IsUsernameExist = COUNT(*)
	FROM Account
	WHERE Username=@Username
	
	DECLARE @IsEmailExist INT
	SELECT @IsEmailExist = COUNT(*)
	FROM Account
	WHERE Email=@Email
	
	IF(@IsUsernameExist<>0)
	BEGIN
		SELECT 1
	END
	ELSE IF(@IsEmailExist<>0)
	BEGIN
		SELECT 2
	END
	ELSE
	BEGIN
		INSERT INTO Account(AccountID,Username,[Password],Email,[Status])
		VALUES(@AccountID,@Username,@Password,@Email,1)
		SELECT 3
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Account_ProcUpdate]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Account_ProcUpdate]
	@AccountID int,
	@Username nvarchar(100),
	@Password nvarchar(150),
	@Status int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(100),
	@Phone nvarchar(15),
	@CMND nvarchar(10),
	@Address nvarchar(200),
	@Birthday datetime
AS
BEGIN
	UPDATE Account
	SET
		[AccountID]=@AccountID,
		[Username]=@Username,
		[Password]=@Password,
		[Status]=@Status,
		[FirstName]=@FirstName,
		[LastName]=@LastName,
		[Email]=@Email,
		[Phone]=@Phone,
		[CMND]=@CMND,
		[Address]=@Address,
		[Birthday]=@Birthday
	WHERE AccountID=@AccountID
END
GO
/****** Object:  StoredProcedure [dbo].[Account_ProcInsert]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Account_ProcInsert]
	@AccountID int,
	@Username nvarchar(100),
	@Password nvarchar(150),
	@Status int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(100),
	@Phone nvarchar(15),
	@CMND nvarchar(10),
	@Address nvarchar(200),
	@Birthday datetime
AS
BEGIN
	INSERT INTO Account
	VALUES(
		@AccountID,
		@Username,
		@Password,
		@Status,
		@FirstName,
		@LastName,
		@Email,
		@Phone,
		@CMND,
		@Address,
		@Birthday
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Account_ProcDelete]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Account_ProcDelete]
	@AccountID int
AS
BEGIN
	DELETE FROM Account
	WHERE AccountID=@AccountID
END
GO
/****** Object:  StoredProcedure [dbo].[Account_Login]    Script Date: 01/05/2014 21:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Account_Login]
@Username NVARCHAR(100),
@Password NVARCHAR(100)
AS
BEGIN
	SELECT COUNT(*)
	FROM Account
	WHERE Username = @Username AND [Password] = @Password
END
GO
