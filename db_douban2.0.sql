USE [master]
GO
/****** Object:  Database [db_douban]    Script Date: 2018/12/20 14:18:28 ******/
CREATE DATABASE [db_douban]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_douban', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_douban.ndf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_douban_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_douban_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10240KB )
GO
ALTER DATABASE [db_douban] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_douban].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_douban] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_douban] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_douban] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_douban] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_douban] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_douban] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_douban] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [db_douban] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_douban] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_douban] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_douban] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_douban] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_douban] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_douban] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_douban] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_douban] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_douban] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_douban] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_douban] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_douban] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_douban] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_douban] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_douban] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_douban] SET RECOVERY FULL 
GO
ALTER DATABASE [db_douban] SET  MULTI_USER 
GO
ALTER DATABASE [db_douban] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_douban] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_douban] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_douban] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_douban', N'ON'
GO
USE [db_douban]
GO
/****** Object:  Table [dbo].[area]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area](
	[areaId] [int] NOT NULL,
	[areaName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_area] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[award]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[award](
	[awdId] [int] NOT NULL,
	[chname] [nvarchar](50) NOT NULL,
	[enname] [varchar](50) NULL,
	[awddate] [date] NOT NULL,
	[awdcountry] [nvarchar](50) NOT NULL,
	[website] [varchar](50) NULL,
 CONSTRAINT [PK_awardtable] PRIMARY KEY CLUSTERED 
(
	[awdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[awardInfo]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awardInfo](
	[awdInfoId] [int] NOT NULL,
	[awdId] [int] NOT NULL,
	[awdInfoName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_awardinfo] PRIMARY KEY CLUSTERED 
(
	[awdInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[character]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[character](
	[chartId] [int] IDENTITY(1,1) NOT NULL,
	[chName] [nvarchar](50) NOT NULL,
	[enName] [nvarchar](50) NULL,
	[otherChName] [nvarchar](50) NULL,
	[otherEnName] [nvarchar](50) NULL,
	[avatar] [text] NULL,
	[sex] [nchar](1) NOT NULL,
	[constellation] [nvarchar](50) NULL,
	[birthplace] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[deathday] [date] NULL,
	[familymember] [nvarchar](200) NULL,
	[IMDB] [varchar](20) NULL,
	[intro] [text] NULL,
 CONSTRAINT [PK_character] PRIMARY KEY CLUSTERED 
(
	[chartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chartAwardInfo]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chartAwardInfo](
	[awdInfoId] [int] NOT NULL,
	[chartId] [int] NOT NULL,
	[state] [nchar](2) NOT NULL,
 CONSTRAINT [PK_characterawardinfo] PRIMARY KEY CLUSTERED 
(
	[awdInfoId] ASC,
	[chartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[comment]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[uId] [int] NOT NULL,
	[mId] [int] NOT NULL,
	[state] [nchar](1) NULL,
	[score] [float] NULL,
	[cmtTime] [datetime] NULL,
	[cmtContent] [text] NOT NULL,
	[likeNum] [int] NULL,
	[isVisible] [nchar](1) NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[uId] ASC,
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[language]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language](
	[languageId] [int] NOT NULL,
	[languageName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movie](
	[mId] [int] IDENTITY(1,1) NOT NULL,
	[chName] [nvarchar](50) NOT NULL,
	[originName] [nvarchar](50) NULL,
	[otherName] [nvarchar](50) NULL,
	[poster] [text] NOT NULL,
	[releaseDate] [date] NOT NULL,
	[length] [varchar](5) NOT NULL,
	[plot] [text] NOT NULL,
	[IMDB] [varchar](20) NULL,
	[website] [varchar](100) NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[movieArea]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieArea](
	[mId] [int] NOT NULL,
	[areaId] [int] NOT NULL,
 CONSTRAINT [PK_marea] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC,
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movieAwardInfo]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieAwardInfo](
	[awdInfoId] [int] NOT NULL,
	[mId] [int] NOT NULL,
	[state] [nchar](2) NULL,
 CONSTRAINT [PK_movawardinfo] PRIMARY KEY CLUSTERED 
(
	[awdInfoId] ASC,
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movieLanguage]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieLanguage](
	[mId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
 CONSTRAINT [PK_mlanguage_1] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC,
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movieTag]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieTag](
	[mId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[weight] [int] NULL,
 CONSTRAINT [PK_movtag] PRIMARY KEY CLUSTERED 
(
	[mId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movieType]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieType](
	[mId] [int] NOT NULL,
	[typeId] [int] NOT NULL,
 CONSTRAINT [PK_mtype_1] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC,
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[score]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[mId] [int] NOT NULL,
	[totalScore] [float] NOT NULL,
	[totalNumber] [int] NOT NULL,
	[fiveStar] [int] NOT NULL,
	[fourStar] [int] NOT NULL,
	[threeStar] [int] NOT NULL,
	[twoStar] [int] NOT NULL,
	[oneStar] [int] NOT NULL,
 CONSTRAINT [PK_score] PRIMARY KEY CLUSTERED 
(
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staff]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[chartId] [int] NOT NULL,
	[mId] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[chartId] ASC,
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tag]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[tagId] [int] NOT NULL,
	[tagName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tagtable] PRIMARY KEY CLUSTERED 
(
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[type]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeId] [int] NOT NULL,
	[typeName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[uId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[phoneNumber] [char](11) NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[uId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userinfo]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userinfo](
	[uId] [int] NOT NULL,
	[avatar] [text] NULL,
	[intro] [nvarchar](200) NULL,
	[registDate] [date] NULL,
	[city] [nvarchar](50) NULL,
 CONSTRAINT [PK_userinfo] PRIMARY KEY CLUSTERED 
(
	[uId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userTag]    Script Date: 2018/12/20 14:18:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTag](
	[uId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
 CONSTRAINT [PK_persontag] PRIMARY KEY CLUSTERED 
(
	[uId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_committime]  DEFAULT (getdate()) FOR [cmtTime]
GO
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_likes]  DEFAULT ((0)) FOR [likeNum]
GO
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_visible]  DEFAULT ('Y') FOR [isVisible]
GO
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_releaseDate]  DEFAULT (NULL) FOR [releaseDate]
GO
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_plot]  DEFAULT ('暂无简介') FOR [plot]
GO
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_website]  DEFAULT ('暂无') FOR [website]
GO
ALTER TABLE [dbo].[movieTag] ADD  CONSTRAINT [DF_movtag_weight]  DEFAULT ((0)) FOR [weight]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_totalscore]  DEFAULT ((0)) FOR [totalScore]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_totalnumber]  DEFAULT ((0)) FOR [totalNumber]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_fivestars]  DEFAULT ((0)) FOR [fiveStar]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_fourstars]  DEFAULT ((0)) FOR [fourStar]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_threestars]  DEFAULT ((0)) FOR [threeStar]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_twostars]  DEFAULT ((0)) FOR [twoStar]
GO
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_onestar]  DEFAULT ((0)) FOR [oneStar]
GO
ALTER TABLE [dbo].[staff] ADD  CONSTRAINT [DF_staff_status]  DEFAULT ('演员') FOR [status]
GO
ALTER TABLE [dbo].[userinfo] ADD  CONSTRAINT [DF_userinfo_registdate]  DEFAULT (getdate()) FOR [registDate]
GO
ALTER TABLE [dbo].[awardInfo]  WITH CHECK ADD  CONSTRAINT [FK_awardinfo_award] FOREIGN KEY([awdId])
REFERENCES [dbo].[award] ([awdId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[awardInfo] CHECK CONSTRAINT [FK_awardinfo_award]
GO
ALTER TABLE [dbo].[chartAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_characterawardinfo_awardinfo] FOREIGN KEY([awdInfoId])
REFERENCES [dbo].[awardInfo] ([awdInfoId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chartAwardInfo] CHECK CONSTRAINT [FK_characterawardinfo_awardinfo]
GO
ALTER TABLE [dbo].[chartAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_characterawardinfo_character] FOREIGN KEY([chartId])
REFERENCES [dbo].[character] ([chartId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chartAwardInfo] CHECK CONSTRAINT [FK_characterawardinfo_character]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_movie]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_user] FOREIGN KEY([uId])
REFERENCES [dbo].[user] ([uId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_user]
GO
ALTER TABLE [dbo].[movieArea]  WITH CHECK ADD  CONSTRAINT [FK_movarea_areatable] FOREIGN KEY([areaId])
REFERENCES [dbo].[area] ([areaId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieArea] CHECK CONSTRAINT [FK_movarea_areatable]
GO
ALTER TABLE [dbo].[movieArea]  WITH CHECK ADD  CONSTRAINT [FK_movarea_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieArea] CHECK CONSTRAINT [FK_movarea_movie]
GO
ALTER TABLE [dbo].[movieAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_movawardinfo_awardinfo] FOREIGN KEY([awdInfoId])
REFERENCES [dbo].[awardInfo] ([awdInfoId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieAwardInfo] CHECK CONSTRAINT [FK_movawardinfo_awardinfo]
GO
ALTER TABLE [dbo].[movieAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_movawardinfo_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieAwardInfo] CHECK CONSTRAINT [FK_movawardinfo_movie]
GO
ALTER TABLE [dbo].[movieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_movlanguage_languagetable] FOREIGN KEY([languageId])
REFERENCES [dbo].[language] ([languageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieLanguage] CHECK CONSTRAINT [FK_movlanguage_languagetable]
GO
ALTER TABLE [dbo].[movieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_movlanguage_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieLanguage] CHECK CONSTRAINT [FK_movlanguage_movie]
GO
ALTER TABLE [dbo].[movieTag]  WITH CHECK ADD  CONSTRAINT [FK_movtag_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieTag] CHECK CONSTRAINT [FK_movtag_movie]
GO
ALTER TABLE [dbo].[movieTag]  WITH CHECK ADD  CONSTRAINT [FK_movtag_tagtable] FOREIGN KEY([tagId])
REFERENCES [dbo].[tag] ([tagId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieTag] CHECK CONSTRAINT [FK_movtag_tagtable]
GO
ALTER TABLE [dbo].[movieType]  WITH CHECK ADD  CONSTRAINT [FK_movtype_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieType] CHECK CONSTRAINT [FK_movtype_movie]
GO
ALTER TABLE [dbo].[movieType]  WITH CHECK ADD  CONSTRAINT [FK_movtype_typetable] FOREIGN KEY([typeId])
REFERENCES [dbo].[type] ([typeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieType] CHECK CONSTRAINT [FK_movtype_typetable]
GO
ALTER TABLE [dbo].[score]  WITH CHECK ADD  CONSTRAINT [FK_score_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[score] CHECK CONSTRAINT [FK_score_movie]
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_character] FOREIGN KEY([chartId])
REFERENCES [dbo].[character] ([chartId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_character]
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_movie]
GO
ALTER TABLE [dbo].[userinfo]  WITH CHECK ADD  CONSTRAINT [FK_userinfo_user] FOREIGN KEY([uId])
REFERENCES [dbo].[user] ([uId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userinfo] CHECK CONSTRAINT [FK_userinfo_user]
GO
ALTER TABLE [dbo].[userTag]  WITH CHECK ADD  CONSTRAINT [FK_usertag_tagtable] FOREIGN KEY([tagId])
REFERENCES [dbo].[tag] ([tagId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userTag] CHECK CONSTRAINT [FK_usertag_tagtable]
GO
ALTER TABLE [dbo].[userTag]  WITH CHECK ADD  CONSTRAINT [FK_usertag_user] FOREIGN KEY([uId])
REFERENCES [dbo].[user] ([uId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userTag] CHECK CONSTRAINT [FK_usertag_user]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星座' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'character', @level2type=N'COLUMN',@level2name=N'constellation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（提名 / 获奖）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'chartAwardInfo', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（想看/看过）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点赞数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'likeNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简体中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'chName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'originName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'otherName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'海报' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'poster'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上映日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'releaseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电影时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介（情节）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'plot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IMDb链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'IMDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'官方网站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movieTag', @level2type=N'COLUMN',@level2name=N'weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'score', @level2type=N'COLUMN',@level2name=N'totalNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'staff', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'staff', @level2type=N'COLUMN',@level2name=N'roleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像（直接以二进制形式存在avator中，还是存到本地再将路径存到avator中？）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名 / 个人简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'registDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居住地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'city'
GO
USE [master]
GO
ALTER DATABASE [db_douban] SET  READ_WRITE 
GO
