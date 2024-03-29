USE [master]
GO
/****** Object:  Database [LibreriaDB]    Script Date: 7/22/2019 10:06:12 PM ******/
CREATE DATABASE [LibreriaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibreriaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BP_TRAINING\MSSQL\DATA\LibreriaDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LibreriaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BP_TRAINING\MSSQL\DATA\LibreriaDB_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LibreriaDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibreriaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibreriaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibreriaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibreriaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibreriaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibreriaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibreriaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibreriaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibreriaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibreriaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibreriaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibreriaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibreriaDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibreriaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibreriaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibreriaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibreriaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibreriaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibreriaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibreriaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibreriaDB] SET  MULTI_USER 
GO
ALTER DATABASE [LibreriaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibreriaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibreriaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibreriaDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LibreriaDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LibreriaDB]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 7/22/2019 10:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Authors](
	[IDauthor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[IDauthor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Books]    Script Date: 7/22/2019 10:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [int] NOT NULL,
	[Titulo] [varchar](200) NOT NULL,
	[IDautor] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Books_and_InspirationProfiles]    Script Date: 7/22/2019 10:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books_and_InspirationProfiles](
	[IDLibro] [int] NOT NULL,
	[IDPerfil_Inspirador] [int] NOT NULL,
 CONSTRAINT [PK_Books_and_InspirationProfiles] PRIMARY KEY CLUSTERED 
(
	[IDLibro] ASC,
	[IDPerfil_Inspirador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inspiration_Profiles]    Script Date: 7/22/2019 10:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inspiration_Profiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Inspiration_Profiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (2, N'Moises Naim')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (3, N'Sudhir Venkatesh')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (4, N'Eula Biss')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (5, N'Ed Catmull')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (6, N'Thomas S. Kuhn')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (7, N'Michelle Alexander')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (8, N'Michael-Suk Young Chwe')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (9, N'Henry Paulson')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (10, N'Yuval Noah Harari')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (11, N'Peter Huber')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (12, N'Kazuo Ishiguro')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (13, N'Peter F. Durker')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (14, N'Steve Grand')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (15, N'Clayton M. Christensen')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (16, N'Nassim Nicholas Taleb')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (17, N'Sam Walton')
SET IDENTITY_INSERT [dbo].[Authors] OFF
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (0, N'El ejecutivo eficaz', 13)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (1, N'Los restos del dia', 12)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (9, N'The innovator’s dilema', 15)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (19, N'El color de la justicia', 7)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (23, N'El fin del poder: como el poder no es mas lo que era', 2)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (24, N'Gang leader for a day', 3)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (30, N'Inmunidad', 4)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (31, N'Sam Walton: hecho en America', 17)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (45, N'Rational ritual: culture, coordination and common Knowledge', 8)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (49, N'Dealing with China', 9)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (55, N'Creation, life and how to make it', 14)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (56, N'Creatividad S.A. Como llevar la inspiración hasta el infinito y mas allá', 5)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (68, N'Orwell’s revenge', 11)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (78, N'De animales a dioses', 10)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (98, N'El cisne negro', 16)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (0, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (1, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (19, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (23, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (24, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (30, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (31, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (45, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (49, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (55, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (56, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (68, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (98, 2)
SET IDENTITY_INSERT [dbo].[Inspiration_Profiles] ON 

INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (1, N'Mark Zuckerberg', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (2, N'Jeff Bezos', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (3, N'Bill Gates', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (4, N'Steve Jobs', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (5, N'Ellon Musk', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (6, N'Jack Ma', NULL)
SET IDENTITY_INSERT [dbo].[Inspiration_Profiles] OFF
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([IDautor])
REFERENCES [dbo].[Authors] ([IDauthor])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles]  WITH CHECK ADD  CONSTRAINT [FK_Books_and_InspirationProfiles_Books] FOREIGN KEY([IDLibro])
REFERENCES [dbo].[Books] ([ID])
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles] CHECK CONSTRAINT [FK_Books_and_InspirationProfiles_Books]
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles]  WITH CHECK ADD  CONSTRAINT [FK_Books_and_InspirationProfiles_Inspiration_Profiles] FOREIGN KEY([IDPerfil_Inspirador])
REFERENCES [dbo].[Inspiration_Profiles] ([ID])
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles] CHECK CONSTRAINT [FK_Books_and_InspirationProfiles_Inspiration_Profiles]
GO
USE [master]
GO
ALTER DATABASE [LibreriaDB] SET  READ_WRITE 
GO
