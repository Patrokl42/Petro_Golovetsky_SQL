USE [master]
GO
/****** Object:  Database [deanery]    Script Date: 20.12.2018 14:54:55 ******/
CREATE DATABASE [deanery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deanery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\deanery.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deanery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\deanery_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deanery] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deanery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deanery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deanery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deanery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deanery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deanery] SET ARITHABORT OFF 
GO
ALTER DATABASE [deanery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deanery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deanery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deanery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deanery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deanery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deanery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deanery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deanery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deanery] SET  DISABLE_BROKER 
GO
ALTER DATABASE [deanery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deanery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deanery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deanery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deanery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deanery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deanery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deanery] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [deanery] SET  MULTI_USER 
GO
ALTER DATABASE [deanery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deanery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deanery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deanery] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deanery] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [deanery] SET QUERY_STORE = OFF
GO
USE [deanery]
GO
/****** Object:  Table [dbo].[CSUBJECT]    Script Date: 20.12.2018 14:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSUBJECT](
	[subjectID] [int] IDENTITY(1,1) NOT NULL,
	[subjectName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CSUBJECT] PRIMARY KEY CLUSTERED 
(
	[subjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JACADEMIC_PERFORMANCE]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JACADEMIC_PERFORMANCE](
	[studentID] [int] NOT NULL,
	[subjectID] [int] NOT NULL,
	[employeersID] [int] NOT NULL,
	[academic_perfomanceRating] [int] NOT NULL,
	[groupID] [int] NOT NULL,
	[academic_perfomanceID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_JACADEMIC_PERFORMANCE_1] PRIMARY KEY CLUSTERED 
(
	[academic_perfomanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JNOTE]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JNOTE](
	[noteID] [int] IDENTITY(1,1) NOT NULL,
	[deaneryID] [int] NOT NULL,
	[studentID] [int] NOT NULL,
	[noteDate] [date] NOT NULL,
	[noteName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_JCERTIFICATE_1] PRIMARY KEY CLUSTERED 
(
	[noteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JPAYMENT]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JPAYMENT](
	[paymentID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NOT NULL,
	[paymentDate] [date] NOT NULL,
	[paymentSum] [int] NOT NULL,
 CONSTRAINT [PK_JPAYMENT_1] PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JRATING]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JRATING](
	[ratingID] [int] IDENTITY(1,1) NOT NULL,
	[retingName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_JRATING] PRIMARY KEY CLUSTERED 
(
	[ratingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JRESULT]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JRESULT](
	[resultDate] [date] NOT NULL,
	[resultID] [int] IDENTITY(1,1) NOT NULL,
	[subjectID] [int] NOT NULL,
	[groupID] [int] NOT NULL,
	[employeesID] [int] NOT NULL,
	[resulteNumberCertified] [int] NOT NULL,
	[resultExcellentRating] [int] NOT NULL,
	[resultGoodRating] [int] NOT NULL,
	[resultSatisfactoryRating] [int] NOT NULL,
	[resultNumberNotCertified] [int] NOT NULL,
	[resultNumberNotAppear] [int] NOT NULL,
	[scheduleType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_JRESULT_1] PRIMARY KEY CLUSTERED 
(
	[resultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JSCHEDULE]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JSCHEDULE](
	[scheduleType] [nvarchar](50) NOT NULL,
	[scheduleDate] [date] NOT NULL,
	[groupID] [int] NOT NULL,
	[employeesID] [int] NOT NULL,
	[subjectID] [int] NOT NULL,
	[scheduleGroupSize] [int] NOT NULL,
	[scheduleLectureHall] [int] NOT NULL,
	[scheduleTime] [time](7) NOT NULL,
 CONSTRAINT [PK_JSCHEDULE] PRIMARY KEY CLUSTERED 
(
	[scheduleType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDEANERY]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDEANERY](
	[deaneryID] [int] IDENTITY(1,1) NOT NULL,
	[deaneryName] [nvarchar](50) NOT NULL,
	[deaneryHeadDepartment] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RDEANERY] PRIMARY KEY CLUSTERED 
(
	[deaneryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDEBTOR]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDEBTOR](
	[academic_perfomanceID] [int] NOT NULL,
	[debtorID] [int] IDENTITY(1,1) NOT NULL,
	[debtorState] [nvarchar](50) NOT NULL,
	[debtorDate] [date] NOT NULL,
 CONSTRAINT [PK_RDEBTOR] PRIMARY KEY CLUSTERED 
(
	[debtorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REMPLOYEERS]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REMPLOYEERS](
	[employeesID] [int] IDENTITY(1,1) NOT NULL,
	[deaneryID] [int] NOT NULL,
	[employeesName] [nvarchar](50) NOT NULL,
	[employeesSurname] [nvarchar](50) NOT NULL,
	[employeesMiddleName] [nvarchar](50) NOT NULL,
	[employeesScientificDegree] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_REMPLOYEERS] PRIMARY KEY CLUSTERED 
(
	[employeesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RGROUP]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RGROUP](
	[groupID] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [nvarchar](50) NOT NULL,
	[deaneryID] [int] NOT NULL,
 CONSTRAINT [PK_RGROUP] PRIMARY KEY CLUSTERED 
(
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSTUDENT]    Script Date: 20.12.2018 14:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSTUDENT](
	[studentID] [int] IDENTITY(1,1) NOT NULL,
	[studentName] [nvarchar](50) NOT NULL,
	[studentSurname] [nvarchar](50) NOT NULL,
	[studentMiddleName] [nvarchar](50) NOT NULL,
	[studentGender] [nvarchar](50) NOT NULL,
	[studentTypeTraining] [nvarchar](50) NOT NULL,
	[studentDateOfBirth] [date] NOT NULL,
	[groupID] [int] NOT NULL,
 CONSTRAINT [PK_RSTUDENT] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CSUBJECT] ON 

INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (1, N'History')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (2, N'Programming')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (3, N'Geometry')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (4, N'Geography')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (5, N'Sports')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (6, N'English')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (7, N'Music')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (8, N'Art')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (9, N'Philosophy')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (10, N'Sociology')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (11, N'Architecture')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (12, N'Archaeology')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (13, N'Computer Science')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (14, N'Psychology')
INSERT [dbo].[CSUBJECT] ([subjectID], [subjectName]) VALUES (15, N'Economics')
SET IDENTITY_INSERT [dbo].[CSUBJECT] OFF
SET IDENTITY_INSERT [dbo].[JACADEMIC_PERFORMANCE] ON 

INSERT [dbo].[JACADEMIC_PERFORMANCE] ([studentID], [subjectID], [employeersID], [academic_perfomanceRating], [groupID], [academic_perfomanceID]) VALUES (61, 4, 5, 5, 7, 1082)
INSERT [dbo].[JACADEMIC_PERFORMANCE] ([studentID], [subjectID], [employeersID], [academic_perfomanceRating], [groupID], [academic_perfomanceID]) VALUES (63, 6, 6, 2, 3, 1086)
INSERT [dbo].[JACADEMIC_PERFORMANCE] ([studentID], [subjectID], [employeersID], [academic_perfomanceRating], [groupID], [academic_perfomanceID]) VALUES (66, 3, 4, 3, 2, 2085)
SET IDENTITY_INSERT [dbo].[JACADEMIC_PERFORMANCE] OFF
SET IDENTITY_INSERT [dbo].[JNOTE] ON 

INSERT [dbo].[JNOTE] ([noteID], [deaneryID], [studentID], [noteDate], [noteName]) VALUES (40, 2, 61, CAST(N'2018-11-12' AS Date), N'Note of income')
INSERT [dbo].[JNOTE] ([noteID], [deaneryID], [studentID], [noteDate], [noteName]) VALUES (41, 5, 62, CAST(N'2018-04-12' AS Date), N'Registration of the place of residence')
INSERT [dbo].[JNOTE] ([noteID], [deaneryID], [studentID], [noteDate], [noteName]) VALUES (45, 6, 64, CAST(N'2018-05-11' AS Date), N'Help from a doctor')
INSERT [dbo].[JNOTE] ([noteID], [deaneryID], [studentID], [noteDate], [noteName]) VALUES (46, 7, 66, CAST(N'2018-02-07' AS Date), N'Certificate of income')
SET IDENTITY_INSERT [dbo].[JNOTE] OFF
SET IDENTITY_INSERT [dbo].[JPAYMENT] ON 

INSERT [dbo].[JPAYMENT] ([paymentID], [studentID], [paymentDate], [paymentSum]) VALUES (10, 61, CAST(N'2018-11-11' AS Date), 2000)
INSERT [dbo].[JPAYMENT] ([paymentID], [studentID], [paymentDate], [paymentSum]) VALUES (11, 64, CAST(N'2018-07-04' AS Date), 300)
INSERT [dbo].[JPAYMENT] ([paymentID], [studentID], [paymentDate], [paymentSum]) VALUES (12, 67, CAST(N'2018-05-01' AS Date), 3000)
SET IDENTITY_INSERT [dbo].[JPAYMENT] OFF
SET IDENTITY_INSERT [dbo].[RDEANERY] ON 

INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (1, N'Department of Computer Engineering and Electronics', N'LAVRYNOVYCH IVAN ')
INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (2, N'Department of Algebra and Geometry', N'BOICHUK OLEKSANDR')
INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (4, N'Department of English Philology', N'SLOBODIAN TARAS')
INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (5, N'Department of Geography and Natural Sciences', N'FASTRYHA OKSANA')
INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (6, N'Department of World History', N'PAVLIUK RUSLANA')
INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (7, N'Department of Forestry', N'NYKONOV BOHDAN')
INSERT [dbo].[RDEANERY] ([deaneryID], [deaneryName], [deaneryHeadDepartment]) VALUES (8, N'Department of Performing Arts', N'BRYSHTANIUK VASYL')
SET IDENTITY_INSERT [dbo].[RDEANERY] OFF
SET IDENTITY_INSERT [dbo].[RDEBTOR] ON 

INSERT [dbo].[RDEBTOR] ([academic_perfomanceID], [debtorID], [debtorState], [debtorDate]) VALUES (1082, 1, N'Debtor', CAST(N'2018-02-05' AS Date))
INSERT [dbo].[RDEBTOR] ([academic_perfomanceID], [debtorID], [debtorState], [debtorDate]) VALUES (1086, 6, N'Debtor', CAST(N'2018-10-12' AS Date))
SET IDENTITY_INSERT [dbo].[RDEBTOR] OFF
SET IDENTITY_INSERT [dbo].[REMPLOYEERS] ON 

INSERT [dbo].[REMPLOYEERS] ([employeesID], [deaneryID], [employeesName], [employeesSurname], [employeesMiddleName], [employeesScientificDegree]) VALUES (2, 1, N'Volodymyr', N'Kurchak', N'Ivanovich', N'Doctor of Philosophy')
INSERT [dbo].[REMPLOYEERS] ([employeesID], [deaneryID], [employeesName], [employeesSurname], [employeesMiddleName], [employeesScientificDegree]) VALUES (4, 5, N'Yura', N'Tomyn', N'Romanovich', N'Professor')
INSERT [dbo].[REMPLOYEERS] ([employeesID], [deaneryID], [employeesName], [employeesSurname], [employeesMiddleName], [employeesScientificDegree]) VALUES (5, 6, N'Oleg', N'Drahomatsa', N'Yuriyovych', N'Professor')
INSERT [dbo].[REMPLOYEERS] ([employeesID], [deaneryID], [employeesName], [employeesSurname], [employeesMiddleName], [employeesScientificDegree]) VALUES (6, 8, N'Mykhailo', N'Kuziv', N'Vasylʹovych', N'Docent')
INSERT [dbo].[REMPLOYEERS] ([employeesID], [deaneryID], [employeesName], [employeesSurname], [employeesMiddleName], [employeesScientificDegree]) VALUES (11, 7, N'Ihor', N'Boretskyi', N'Mykolayovych', N'Doctor of Philosophy')
SET IDENTITY_INSERT [dbo].[REMPLOYEERS] OFF
SET IDENTITY_INSERT [dbo].[RGROUP] ON 

INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (1, N'Applied Mathematics', 2)
INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (2, N'Software engineering', 1)
INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (3, N'English Philology', 4)
INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (6, N'Geography and Natural Sciences', 5)
INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (7, N'World History', 6)
INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (9, N'Forestry', 7)
INSERT [dbo].[RGROUP] ([groupID], [groupName], [deaneryID]) VALUES (10, N'Performing Arts', 8)
SET IDENTITY_INSERT [dbo].[RGROUP] OFF
SET IDENTITY_INSERT [dbo].[RSTUDENT] ON 

INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (61, N'Vasyl', N'Kozhushnyi', N'Ivanovich ', N'male', N'Full-time education', CAST(N'1992-12-12' AS Date), 3)
INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (62, N'Roman', N'Pankiv', N'Romanovich', N'male', N'Full-time education', CAST(N'1988-11-04' AS Date), 6)
INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (63, N'Roman', N'Zhydak', N'Yuriyovych', N'male', N'Part-time education', CAST(N'1993-05-01' AS Date), 7)
INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (64, N'Andrii', N'Luzhnyi', N'Ivanovich ', N'male', N'Full-time education', CAST(N'1996-05-02' AS Date), 9)
INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (66, N'Ihor', N'Nadachkovskyi', N'Mykolayovych', N'male', N'Part-time education', CAST(N'1999-05-02' AS Date), 6)
INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (67, N'Ivan', N'Opar', N'Romanovich', N'male', N'Part-time education', CAST(N'1992-05-12' AS Date), 10)
INSERT [dbo].[RSTUDENT] ([studentID], [studentName], [studentSurname], [studentMiddleName], [studentGender], [studentTypeTraining], [studentDateOfBirth], [groupID]) VALUES (69, N'Ivanka', N'Hrushetska', N'Ivanovich ', N'mate', N'Full-time education', CAST(N'2000-11-11' AS Date), 2)
SET IDENTITY_INSERT [dbo].[RSTUDENT] OFF
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE]  WITH CHECK ADD  CONSTRAINT [FK_JACADEMIC_PERFORMANCE_CSUBJECT] FOREIGN KEY([subjectID])
REFERENCES [dbo].[CSUBJECT] ([subjectID])
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE] CHECK CONSTRAINT [FK_JACADEMIC_PERFORMANCE_CSUBJECT]
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE]  WITH CHECK ADD  CONSTRAINT [FK_JACADEMIC_PERFORMANCE_REMPLOYEERS] FOREIGN KEY([employeersID])
REFERENCES [dbo].[REMPLOYEERS] ([employeesID])
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE] CHECK CONSTRAINT [FK_JACADEMIC_PERFORMANCE_REMPLOYEERS]
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE]  WITH CHECK ADD  CONSTRAINT [FK_JACADEMIC_PERFORMANCE_RGROUP] FOREIGN KEY([groupID])
REFERENCES [dbo].[RGROUP] ([groupID])
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE] CHECK CONSTRAINT [FK_JACADEMIC_PERFORMANCE_RGROUP]
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE]  WITH CHECK ADD  CONSTRAINT [FK_JACADEMIC_PERFORMANCE_RSTUDENT1] FOREIGN KEY([studentID])
REFERENCES [dbo].[RSTUDENT] ([studentID])
GO
ALTER TABLE [dbo].[JACADEMIC_PERFORMANCE] CHECK CONSTRAINT [FK_JACADEMIC_PERFORMANCE_RSTUDENT1]
GO
ALTER TABLE [dbo].[JNOTE]  WITH CHECK ADD  CONSTRAINT [FK_JCERTIFICATE_RDEANERY] FOREIGN KEY([deaneryID])
REFERENCES [dbo].[RDEANERY] ([deaneryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JNOTE] CHECK CONSTRAINT [FK_JCERTIFICATE_RDEANERY]
GO
ALTER TABLE [dbo].[JNOTE]  WITH CHECK ADD  CONSTRAINT [FK_JCERTIFICATE_RSTUDENT] FOREIGN KEY([studentID])
REFERENCES [dbo].[RSTUDENT] ([studentID])
GO
ALTER TABLE [dbo].[JNOTE] CHECK CONSTRAINT [FK_JCERTIFICATE_RSTUDENT]
GO
ALTER TABLE [dbo].[JPAYMENT]  WITH CHECK ADD  CONSTRAINT [FK_JPAYMENT_RSTUDENT] FOREIGN KEY([studentID])
REFERENCES [dbo].[RSTUDENT] ([studentID])
GO
ALTER TABLE [dbo].[JPAYMENT] CHECK CONSTRAINT [FK_JPAYMENT_RSTUDENT]
GO
ALTER TABLE [dbo].[JRESULT]  WITH CHECK ADD  CONSTRAINT [FK_JRESULT_JSCHEDULE] FOREIGN KEY([scheduleType])
REFERENCES [dbo].[JSCHEDULE] ([scheduleType])
GO
ALTER TABLE [dbo].[JRESULT] CHECK CONSTRAINT [FK_JRESULT_JSCHEDULE]
GO
ALTER TABLE [dbo].[JSCHEDULE]  WITH CHECK ADD  CONSTRAINT [FK_JSCHEDULE_CSUBJECT] FOREIGN KEY([subjectID])
REFERENCES [dbo].[CSUBJECT] ([subjectID])
GO
ALTER TABLE [dbo].[JSCHEDULE] CHECK CONSTRAINT [FK_JSCHEDULE_CSUBJECT]
GO
ALTER TABLE [dbo].[JSCHEDULE]  WITH CHECK ADD  CONSTRAINT [FK_JSCHEDULE_RGROUP] FOREIGN KEY([groupID])
REFERENCES [dbo].[RGROUP] ([groupID])
GO
ALTER TABLE [dbo].[JSCHEDULE] CHECK CONSTRAINT [FK_JSCHEDULE_RGROUP]
GO
ALTER TABLE [dbo].[RDEBTOR]  WITH CHECK ADD  CONSTRAINT [FK_RDEBTOR_JACADEMIC_PERFORMANCE] FOREIGN KEY([academic_perfomanceID])
REFERENCES [dbo].[JACADEMIC_PERFORMANCE] ([academic_perfomanceID])
GO
ALTER TABLE [dbo].[RDEBTOR] CHECK CONSTRAINT [FK_RDEBTOR_JACADEMIC_PERFORMANCE]
GO
ALTER TABLE [dbo].[REMPLOYEERS]  WITH CHECK ADD  CONSTRAINT [FK_REMPLOYEERS_RDEANERY1] FOREIGN KEY([deaneryID])
REFERENCES [dbo].[RDEANERY] ([deaneryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REMPLOYEERS] CHECK CONSTRAINT [FK_REMPLOYEERS_RDEANERY1]
GO
ALTER TABLE [dbo].[RGROUP]  WITH CHECK ADD  CONSTRAINT [FK_RGROUP_RDEANERY1] FOREIGN KEY([deaneryID])
REFERENCES [dbo].[RDEANERY] ([deaneryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RGROUP] CHECK CONSTRAINT [FK_RGROUP_RDEANERY1]
GO
ALTER TABLE [dbo].[RSTUDENT]  WITH CHECK ADD  CONSTRAINT [FK_RSTUDENT_RGROUP] FOREIGN KEY([groupID])
REFERENCES [dbo].[RGROUP] ([groupID])
GO
ALTER TABLE [dbo].[RSTUDENT] CHECK CONSTRAINT [FK_RSTUDENT_RGROUP]
GO
USE [master]
GO
ALTER DATABASE [deanery] SET  READ_WRITE 
GO
