USE [master]
GO
/****** Object:  Database [DentalClinicSystem]    Script Date: 19/05/2023 23:33:07 ******/
CREATE DATABASE [DentalClinicSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DentalClinicSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DentalClinicSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DentalClinicSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DentalClinicSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DentalClinicSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DentalClinicSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DentalClinicSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DentalClinicSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DentalClinicSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DentalClinicSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DentalClinicSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DentalClinicSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DentalClinicSystem] SET  MULTI_USER 
GO
ALTER DATABASE [DentalClinicSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DentalClinicSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DentalClinicSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DentalClinicSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DentalClinicSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DentalClinicSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DentalClinicSystem] SET QUERY_STORE = OFF
GO
USE [DentalClinicSystem]
GO
/****** Object:  Table [dbo].[tblAdvisory]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdvisory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[advisoryDate] [date] NULL,
	[fullName] [nvarchar](100) NULL,
	[phoneNumber] [int] NULL,
	[description] [nvarchar](300) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAppointment]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppointment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[appointmentDate] [datetime] NULL,
	[userID] [int] NULL,
	[dentistID] [int] NULL,
	[description] [nvarchar](300) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__tblAppoi__3213E83F95CE291E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDentist]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDentist](
	[dentistID] [int] NOT NULL,
	[experience] [nvarchar](100) NULL,
	[degree] [nvarchar](100) NULL,
	[image] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblDentist] PRIMARY KEY CLUSTERED 
(
	[dentistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFeedBackDentist]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedBackDentist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[dentistID] [int] NULL,
	[rate] [int] NULL,
	[cmt] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFeedBackService]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedBackService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[serviceID] [int] NULL,
	[rate] [int] NULL,
	[comment] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[serviceName] [nvarchar](100) NULL,
	[description] [nvarchar](380) NULL,
	[price] [float] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTreatmentCourseDetail]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTreatmentCourseDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[treatmentDate] [date] NULL,
	[treatmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[phoneNumber] [int] NULL,
	[idRole] [int] NULL,
	[status] [bit] NULL,
	[email] [nvarchar](100) NULL,
	[Roll] [nvarchar](10) NULL,
 CONSTRAINT [PK__tblUser__3213E83FA12E2F99] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentCourse]    Script Date: 19/05/2023 23:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatmentCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[dentistID] [int] NULL,
	[serviceID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (1, N'10', N'Tốt nghiệp Thạc sĩ Bác sĩ Chuyên khoa', N'image/bacsinga.jpg')
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (2, N'12', N'Tốt nghiệp xuất sắc chuyên ngành RHM tại Đại Học Y Dược TPHCM', N'image/bacsitung.jpg')
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (3, N'30', N'Chủ tịch Hội Răng Hàm Mặt TP.HCM, Phó Chủ tịch Hội Răng Hàm Mặt Việt Nam', N'image/bacsikhanh.jpg')
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (4, N'15', N'Tốt nghiệp Thạc sĩ chuyên ngành Răng Hàm Mặt, Tốt nghiệp Bác sĩ Đa khoa', N'image/bacsian.jpg')
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (5, N'14', N'Phó trưởng khoa Khám bệnh Răng Miệng, Bệnh viện Răng Hàm Mặt Trung ương TP.HCM', N'image/bacsihoa.jpg')
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (6, N'16', N'Bác sĩ Cộng tác viên Bộ môn phục Hình Răng - Trường Đại học Y Dược TP.HCM', N'image/bacsithao.jpg')
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (7, N'32', N'Tổng Thư ký Hội Phẫu thuật Tạo hình TP.HCM', N'image/bacsichon.jpg')
GO
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([id], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[tblRole] ([id], [roleName]) VALUES (2, N'Dentist')
INSERT [dbo].[tblRole] ([id], [roleName]) VALUES (3, N'Marketing')
INSERT [dbo].[tblRole] ([id], [roleName]) VALUES (4, N'Customer Consultant')
INSERT [dbo].[tblRole] ([id], [roleName]) VALUES (5, N'Customer')
SET IDENTITY_INSERT [dbo].[tblRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (1, N'Trần Thị Mỹ Nga', N'bacsinga', 979039761, 2, 1, N'ngamtt@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (2, N'Nguyễn Hiếu Tùng', N'bacsitung', 362475761, 2, 1, N'tunghn@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (3, N'Ngô Đồng Khanh', N'bacsikhanh', 909365412, 2, 1, N'khanhdn@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (4, N'Trương Thị Hoài An', N'bacsian', 223564741, 2, 1, N'anhtt@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (5, N'Vũ Quang Hòa', N'bacsihoa', 231589987, 2, 1, N'hoaqv@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (6, N'Nguyễn Thị Thảo', N'bacsithao', 235689252, 2, 1, N'thaotn@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (7, N'Hồ Nguyễn Thanh Chơn', N'bacsichon', 693456241, 2, 1, N'chontnh@gmail.com', N'')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (8, N'Trần Minh Sang', N'usersang', 352475894, 5, 1, N'sangmt@gmail.com', N'P001')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (9, N'Nguyễn Công Danh', N'userdanh', 111111111, 5, 1, N'danhcn@gmail.com', N'P002')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (10, N'Lưu Thành Đạt', N'userdat', 121212121, 5, 1, N'dattl@gmail.com', N'P003')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (11, N'Nguyễn Hoàng Anh', N'useranh', 131313131, 5, 1, N'anhhn@gmail.com', N'P004')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (12, N'Nguyễn Đăng Quang', N'userquang', 141414141, 5, 1, N'quangdn@gmail.com', N'P005')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (13, N'Chướng Thành Đông', N'userdong', 151515151, 5, 1, N'dongtc@gmail.com', N'P006')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (14, N'Đinh Quang Minh', N'userminh', 161616161, 5, 1, N'minhqd@gmail.com', N'P007')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (15, N'Kiều Quang Phúc', N'userphuc', 171717171, 5, 1, N'phucqk@gmail.com', N'P008')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (16, N'Nguyễn Trung Kiên', N'userkien', 181818181, 5, 1, N'kientn@gmail.com', N'P009')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (17, N'Nguyễn Thành Long', N'userlong', 191919191, 5, 1, N'longtn@gmail.com', N'P010')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (18, N'Trần Hữu Phước', N'userphuoc', 101010101, 5, 1, N'phuocht@gmail.com', N'P011')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (19, N'Nguyễn Minh Trí', N'usertri', 258974613, 5, 1, N'trimn@gmail.com', N'P012')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (20, N'Hoàng Thảo Nguyên', N'usernguyen', 596852456, 5, 1, N'nguyenth@gmail.com', N'P013')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (21, N'Trần Nguyên Hiền', N'userhien', 125252521, 5, 1, N'hiennt@gmail.com', N'P014')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (22, N'Hoàng Mỹ Ly', N'userly', 987787878, 5, 1, N'lymh@gmail.com', N'P015')
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (23, N'Trần Văn Hào', N'markhao', 578562482, 3, 1, N'haovh@gmail.com', NULL)
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (24, N'Đặng Bảo Nhi', N'marknhi', 362412253, 3, 1, N'nhibh@gmail.com', NULL)
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (25, N'Lê Văn Mỹ', N'tantmy', 857657655, 4, 1, N'myvl@gmail.com', NULL)
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (26, N'Trương Thoại Phương Thư', N'tantthu', 659459541, 4, 1, N'thuptt@gmail.com', NULL)
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (27, N'admin', N'admin', 222222222, 1, 1, N'admin@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
/****** Object:  Index [UQ__tblDenti__BA394DCBEDC7E35F]    Script Date: 19/05/2023 23:33:07 ******/
ALTER TABLE [dbo].[tblDentist] ADD  CONSTRAINT [UQ__tblDenti__BA394DCBEDC7E35F] UNIQUE NONCLUSTERED 
(
	[dentistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAdvisory] ADD  DEFAULT (getdate()) FOR [advisoryDate]
GO
ALTER TABLE [dbo].[tblAppointment]  WITH CHECK ADD  CONSTRAINT [FK__tblAppoin__userI__6EF57B66] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblAppointment] CHECK CONSTRAINT [FK__tblAppoin__userI__6EF57B66]
GO
ALTER TABLE [dbo].[tblAppointment]  WITH CHECK ADD  CONSTRAINT [FK_tblAppointment_tblDentist] FOREIGN KEY([dentistID])
REFERENCES [dbo].[tblDentist] ([dentistID])
GO
ALTER TABLE [dbo].[tblAppointment] CHECK CONSTRAINT [FK_tblAppointment_tblDentist]
GO
ALTER TABLE [dbo].[tblDentist]  WITH CHECK ADD  CONSTRAINT [FK_tblDentist_tblUser] FOREIGN KEY([dentistID])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblDentist] CHECK CONSTRAINT [FK_tblDentist_tblUser]
GO
ALTER TABLE [dbo].[tblFeedBackDentist]  WITH CHECK ADD FOREIGN KEY([dentistID])
REFERENCES [dbo].[tblDentist] ([dentistID])
GO
ALTER TABLE [dbo].[tblFeedBackDentist]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblFeedBackService]  WITH CHECK ADD FOREIGN KEY([serviceID])
REFERENCES [dbo].[tblService] ([id])
GO
ALTER TABLE [dbo].[tblFeedBackService]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblTreatmentCourseDetail]  WITH CHECK ADD FOREIGN KEY([treatmentID])
REFERENCES [dbo].[TreatmentCourse] ([id])
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK__tblUser__idRole__3A81B327] FOREIGN KEY([idRole])
REFERENCES [dbo].[tblRole] ([id])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK__tblUser__idRole__3A81B327]
GO
ALTER TABLE [dbo].[TreatmentCourse]  WITH CHECK ADD FOREIGN KEY([dentistID])
REFERENCES [dbo].[tblDentist] ([dentistID])
GO
ALTER TABLE [dbo].[TreatmentCourse]  WITH CHECK ADD FOREIGN KEY([serviceID])
REFERENCES [dbo].[tblService] ([id])
GO
ALTER TABLE [dbo].[TreatmentCourse]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([id])
GO
USE [master]
GO
ALTER DATABASE [DentalClinicSystem] SET  READ_WRITE 
GO
