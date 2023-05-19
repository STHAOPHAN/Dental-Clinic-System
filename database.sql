USE [master]
GO
/****** Object:  Database [DentalClinicSystem]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblAdvisory]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblAppointment]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblDentist]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblFeedBackDentist]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblFeedBackService]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblRole]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblService]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblTreatmentCourseDetail]    Script Date: 5/19/2023 7:00:51 PM ******/
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
/****** Object:  Table [dbo].[tblUser]    Script Date: 5/19/2023 7:00:51 PM ******/
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
	[Roll] [int] NULL,
 CONSTRAINT [PK__tblUser__3213E83FA12E2F99] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentCourse]    Script Date: 5/19/2023 7:00:51 PM ******/
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
INSERT [dbo].[tblDentist] ([dentistID], [experience], [degree], [image]) VALUES (2, N'5 năm', N'Tốt nghiệp trường đại học răng hàm mặt', NULL)
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

INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (1, N'Trần Hồng Hưng', N'12345', 374312384, 1, 1, N'bintran7121@gmail.com', NULL)
INSERT [dbo].[tblUser] ([id], [fullName], [password], [phoneNumber], [idRole], [status], [email], [Roll]) VALUES (2, N'Lê Hòa Bình', N'12345', 123456789, 2, 1, N'lehoabinh123@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
/****** Object:  Index [UQ__tblDenti__BA394DCBEDC7E35F]    Script Date: 5/19/2023 7:00:52 PM ******/
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
