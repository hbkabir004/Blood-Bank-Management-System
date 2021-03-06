USE [master]
GO
/****** Object:  Database [BloodBankManagementSystem]    Script Date: 28-Feb-20 9:30:24 AM ******/
CREATE DATABASE [BloodBankManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BloodBankManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.AUNGSTROMESQL\MSSQL\DATA\BloodBankManagementSystem.mdf' , SIZE = 11264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BloodBankManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.AUNGSTROMESQL\MSSQL\DATA\BloodBankManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BloodBankManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BloodBankManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BloodBankManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BloodBankManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BloodBankManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BloodBankManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BloodBankManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BloodBankManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [BloodBankManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [BloodBankManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BloodBankManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BloodBankManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BloodBankManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BloodBankManagementSystem', N'ON'
GO
USE [BloodBankManagementSystem]
GO
/****** Object:  Table [dbo].[donor]    Script Date: 28-Feb-20 9:30:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donor](
	[donor_id] [int] NOT NULL,
	[donor_name] [nvarchar](255) NULL,
	[blood_group] [nvarchar](255) NULL,
	[last_donation_date] [nvarchar](255) NULL,
	[contact] [int] NULL,
	[gender] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[added_date] [nvarchar](255) NULL,
	[added_by] [nvarchar](255) NULL,
 CONSTRAINT [PK_donor] PRIMARY KEY CLUSTERED 
(
	[donor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_donors]    Script Date: 28-Feb-20 9:30:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_donors](
	[donor_id] [int] IDENTITY(1,1) NOT NULL,
	[donor_name] [nvarchar](50) NULL,
	[email] [nvarchar](150) NULL,
	[contact] [nvarchar](20) NULL,
	[gender] [nvarchar](10) NULL,
	[address] [nvarchar](250) NULL,
	[blood_group] [nvarchar](10) NULL,
	[added_date] [datetime] NULL,
	[added_by] [int] NULL,
 CONSTRAINT [PK_tbl_donor] PRIMARY KEY CLUSTERED 
(
	[donor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 28-Feb-20 9:30:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](150) NULL,
	[password] [nvarchar](150) NULL,
	[full_name] [nvarchar](150) NULL,
	[contact] [nvarchar](20) NULL,
	[address] [nvarchar](250) NULL,
	[added_date] [datetime] NULL,
	[image_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (1, N'Muslamul Haq Siam', N'A+', N'2 month ago', 1300234533, N'Male', N'103, Hazi Ismail Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (2, N'Sukanto', N'AB+', N'3 month ago', 1400234544, N'Male', N'11/b, Hazi Mohasheen Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (3, N'Md Sakib Hossain', N'A+', N'4 month ago', 1987625255, N'Male', N'112, KDA Avenue, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (4, N'Md Abdul', N'AB-', N'2 month ago', 1725652662, N'Male', N'26/a, Bashupara Road, khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (5, N'Rahim shaikh', N'O+', N'3 month ago', 1772354151, N'Male', N'273, Hazi Ismail Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (6, N'Arifull Islam', N'O-', N'3 month ago', 1774545342, N'Male', N'32/c, Boira Cross Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (7, N'Saima Siddika', N'A+', N'1 month ago', 1772334555, N'Female', N'45, Ikbal Nagor Moshjid Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (8, N'Mostafa Asif', N'A+', N'6 month ago', 1772345123, N'Male', N'31/4, Bashupara lane, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (9, N'Imran Hossain', N'AB+', N'3 month ago', 1332345673, N'Male', N'14, Hazi Ismail Road, khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (10, N'Sadia Islam', N'A+', N'1 month ago', 1448978364, N'Female', N'19/1, SS College Road, Banorgati, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (11, N'Naim Islam', N'AB-', N'1 month ago', 1881233443, N'Male', N'245, Hazi Ismail Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (12, N'Nazmul Hossain', N'A+', N'3 month ago', 1312323335, N'Male', N'12, Farazi Para Lane, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (13, N'Nasim Islam', N'AB+', N'7 month ago', 1998123445, N'Male', N'32, Bashupara More, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (14, N'Rofikul Islam', N'A+', N'3 month ago', 1998727733, N'Male', N'110/a, Hazi Meher Ali Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (15, N'Ripon Mollick', N'O+', N'3 month ago', 1882345233, N'Male', N'16/b, Hazi Mohasheen Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (16, N'Salim Hosain', N'O-', N'6 month ago', 1887623453, N'Male', N'48/6, Ahsn Ahmed Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (17, N'Nasif ali', N'AB-', N'4 month ago', 1443523445, N'Male', N'69,cometery Road,Dak Bangla,Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (18, N'Riyaj Shaikh', N'A+', N'3 month ago', 1323432987, N'Male', N'Moulvi Para RD,Khulna 1100.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (19, N'Md Masum Sk', N'O+', N'5 month ago', 1923339499, N'Male', N'Shere-Bangla-Road, Power House Mor, Khulna 9100.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (20, N'Youbair Islam', N'A-', N'1 month ago', 1987234645, N'Male', N'81, Boyra Bazar Road, Khulna.', N'2020-02-21 15:20:00.000', N'tarek023')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (21, N'Karim islam', N'AB+', N'6 month ago', 1771263553, N'Male', N'11/b, Hazi Mohasheen Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (22, N'Rokib Hassain', N'A+', N'1 month ago', 1342525454, N'Male', N'112, KDA Avenue, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (23, N'Babul Khan', N'AB+', N' 4 month ago', 1909875646, N'Male', N'26/a, Bashupara Road, khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (24, N'Sumaiya Hassain', N'B+', N'8 month ago', 1323143332, N'Female', N'273, Hazi Ismail Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (25, N'Rani Islam', N'O+', N'2 month ago', 1775434344, N'Female', N'32/c, Boira Cross Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (26, N'Md Nadim', N'A+', N'1 month ago', 1978654363, N'Male', N'45, Ikbal Nagor Moshjid Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (27, N'Md Miraz', N'O+', N'7 month ago', 1887654673, N'Male', N'31/4, Bashupara lane, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (28, N'Marufa katun', N'B+', N'4 month ago', 1342356743, N'Male', N'14, Hazi Ismail Road, khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (29, N'Kona Halder', N'AB+', N'2 month ago', 1967543762, N'Female', N'19/1, SS College Road, Banorgati, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (30, N'Abdullah', N'O-', N'5 month ago', 1453765286, N'Male', N'245, Hazi Ismail Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (31, N'Md Billah', N'A+', N'1 month ago', 1876766760, N'Male', N'12, Farazi Para Lane, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (32, N'Md Rubel', N'O+', N'7 month ago', 1765435876, N'Male', N'32, Bashupara More, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (33, N'Ali Akbar', N'A-', N'5 month ago', 1776545448, N'Male', N'110/a, Hazi Meher Ali Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (34, N'Mostafa', N'A-', N'3 month ago', 1776545449, N'Male', N'16/b, Hazi Mohasheen Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (35, N'Md Rahim', N'AB+', N'4 month ago', 1654554455, N'Male', N'48/6, Ahsn Ahmed Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (36, N'saddam hossain', N'O+', N'3 month ago', 1923876647, N'Male', N'69,cometery Road,Dak Bangla,Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (37, N'Aslam Shaikh', N'A+', N'2 month ago', 1887656255, N'Male', N'Moulvi Para RD,Khulna 1100.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (38, N'Billal Hossain', N'AB+', N'1 month ago', 1776355378, N'Male', N'Shere-Bangla-Road, Power House Mor, Khulna 9100.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (39, N'Ariful Islam', N'A+', N'2 month ago', 1712339848, N'Male', N'81, Boyra Bazar Road, Khulna.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (40, N'Billal Hossain', N'AB+', N'1 month ago', 1880928782, N'Male', N'Moulvi Para RD,Khulna 1100.', N'2020-02-21 15:20:00.000', N'erina054')
INSERT [dbo].[donor] ([donor_id], [donor_name], [blood_group], [last_donation_date], [contact], [gender], [address], [added_date], [added_by]) VALUES (41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([user_id], [username], [email], [password], [full_name], [contact], [address], [added_date], [image_name]) VALUES (1, N'abir004', N'abir69832@gmail.com', N'021478', N'Md. Hasanul Banna Khan Abir', N'01984772121', N'25/2, Hazi Mohshin Road, Khulna.', CAST(0x0000AB6800FCAF80 AS DateTime), N'Blood_Bank_MS_001.jpg')
INSERT [dbo].[tbl_users] ([user_id], [username], [email], [password], [full_name], [contact], [address], [added_date], [image_name]) VALUES (2, N'tarek023', N'tarekahmednwu@gmail.com', N'023', N'Tarek Ahmed', N'01400652322', N'Farazaipara Road, Khulna.', CAST(0x0000AB6B0125E260 AS DateTime), N'Blood_Bank_MS_002.jpg')
INSERT [dbo].[tbl_users] ([user_id], [username], [email], [password], [full_name], [contact], [address], [added_date], [image_name]) VALUES (3, N'erina054', N'erinarothy100@gmail.com', N'054', N'Erina Momtaz', N'01309188935', N'Ghop, Jessore, Khulna.', CAST(0x0000AB6E013BDB60 AS DateTime), N'Blood_Bank_MS_003.jpg')
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
USE [master]
GO
ALTER DATABASE [BloodBankManagementSystem] SET  READ_WRITE 
GO
