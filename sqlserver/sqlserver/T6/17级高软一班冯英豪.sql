USE [master]
GO
/****** Object:  Database [wwww]    Script Date: 2017/12/20 17:31:35 ******/
CREATE DATABASE [wwww]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wwww', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wwww.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wwww_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wwww_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wwww] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wwww].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wwww] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wwww] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wwww] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wwww] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wwww] SET ARITHABORT OFF 
GO
ALTER DATABASE [wwww] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wwww] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wwww] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wwww] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wwww] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wwww] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wwww] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wwww] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wwww] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wwww] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wwww] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wwww] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wwww] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wwww] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wwww] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wwww] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wwww] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wwww] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wwww] SET  MULTI_USER 
GO
ALTER DATABASE [wwww] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wwww] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wwww] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wwww] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wwww] SET DELAYED_DURABILITY = DISABLED 
GO
USE [wwww]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2017/12/20 17:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](20) NOT NULL,
	[Cpno] [char](4) NOT NULL,
	[Ccredit] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sc]    Script Date: 2017/12/20 17:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sc](
	[Sid] [int] NOT NULL,
	[Cid] [int] NOT NULL,
	[Grade] [decimal](12, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2017/12/20 17:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](8) NOT NULL,
	[Ssex] [char](2) NOT NULL,
	[Sage] [smallint] NOT NULL,
	[Sdept] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Cid], [Cname], [Cpno], [Ccredit]) VALUES (1, N'java', N'英语', 100)
INSERT [dbo].[Course] ([Cid], [Cname], [Cpno], [Ccredit]) VALUES (2, N'3g4g', N'数学', 100)
INSERT [dbo].[Course] ([Cid], [Cname], [Cpno], [Ccredit]) VALUES (3, N'色彩', N'素描', 100)
SET IDENTITY_INSERT [dbo].[Course] OFF
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (1, 1, CAST(98.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (1, 2, CAST(77.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (1, 3, CAST(99.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (2, 1, CAST(77.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (2, 2, CAST(99.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (2, 3, CAST(89.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (3, 1, CAST(89.00 AS Decimal(12, 2)))
INSERT [dbo].[Sc] ([Sid], [Cid], [Grade]) VALUES (3, 2, CAST(77.00 AS Decimal(12, 2)))
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (1, N'张三', N'男', 19, N'-信工系')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (2, N'李四', N'女', 18, N'信工系')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (3, N'王二', N'女', 18, N'音乐系')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (4, N'郭盖', N'男', 18, N'音乐系')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (6, N'李二', N'女', 19, N'艺术系')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (7, N'李三', N'男', 19, N'艺术系')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (8, N'张三', N'男', 20, N'SX')
INSERT [dbo].[Student] ([Sid], [Sname], [Ssex], [Sage], [Sdept]) VALUES (9, N'李四', N'女', 21, N'JSJ')
SET IDENTITY_INSERT [dbo].[Student] OFF
ALTER TABLE [dbo].[Sc]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
GO
ALTER TABLE [dbo].[Sc]  WITH CHECK ADD FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
GO
USE [master]
GO
ALTER DATABASE [wwww] SET  READ_WRITE 
GO
