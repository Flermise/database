USE [db_douban]
GO
/****** Object:  Table [dbo].[languagetable]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languagetable](
	[languageid] [int] NOT NULL,
	[language] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[languageid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[phonenumber] [char](11) NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[typetable]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typetable](
	[typeid] [int] NOT NULL,
	[type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagtable]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagtable](
	[tagid] [int] NOT NULL,
	[tag] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tagtable] PRIMARY KEY CLUSTERED 
(
	[tagid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movie](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[chname] [nvarchar](50) NOT NULL,
	[originname] [nvarchar](50) NULL,
	[othername] [nvarchar](50) NULL,
	[poster] [text] NOT NULL,
	[releasedate] [date] NOT NULL,
	[length] [varchar](5) NOT NULL,
	[plot] [text] NOT NULL,
	[IMDb] [varchar](20) NULL,
	[website] [varchar](100) NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简体中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'chname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'originname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'othername'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'海报' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'poster'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上映日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'releasedate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电影时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介（情节）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'plot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IMDb链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'IMDb'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'官方网站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'website'
GO
/****** Object:  Table [dbo].[award]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[award](
	[awdid] [int] NOT NULL,
	[chname] [nvarchar](50) NOT NULL,
	[enname] [varchar](50) NULL,
	[awddate] [date] NOT NULL,
	[awdcountry] [nvarchar](50) NOT NULL,
	[website] [varchar](50) NULL,
 CONSTRAINT [PK_awardtable] PRIMARY KEY CLUSTERED 
(
	[awdid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[areatable]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[areatable](
	[areaid] [int] NOT NULL,
	[area] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_area] PRIMARY KEY CLUSTERED 
(
	[areaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[character]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[character](
	[chid] [int] IDENTITY(1,1) NOT NULL,
	[chname] [nvarchar](50) NOT NULL,
	[enname] [nvarchar](50) NULL,
	[otherchname] [nvarchar](50) NULL,
	[otherenname] [nvarchar](50) NULL,
	[avatar] [text] NULL,
	[sex] [nchar](1) NOT NULL,
	[constellation] [nvarchar](50) NULL,
	[birthplace] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[deathday] [date] NULL,
	[familymember] [nvarchar](200) NULL,
	[IMDb] [varchar](20) NULL,
	[intro] [text] NULL,
 CONSTRAINT [PK_character] PRIMARY KEY CLUSTERED 
(
	[chid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星座' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'character', @level2type=N'COLUMN',@level2name=N'constellation'
GO
/****** Object:  Table [dbo].[awardinfo]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awardinfo](
	[awdinfoid] [int] NOT NULL,
	[awdid] [int] NOT NULL,
	[awdinfoname] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_awardinfo] PRIMARY KEY CLUSTERED 
(
	[awdinfoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[chid] [int] NOT NULL,
	[mid] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[rolename] [nvarchar](50) NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[chid] ASC,
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'staff', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'staff', @level2type=N'COLUMN',@level2name=N'rolename'
GO
/****** Object:  Table [dbo].[score]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[mid] [int] NOT NULL,
	[totalscore] [float] NOT NULL,
	[totalnumber] [int] NOT NULL,
	[fivestar] [int] NOT NULL,
	[fourstar] [int] NOT NULL,
	[threestar] [int] NOT NULL,
	[twostar] [int] NOT NULL,
	[onestar] [int] NOT NULL,
 CONSTRAINT [PK_score] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'score', @level2type=N'COLUMN',@level2name=N'totalnumber'
GO
/****** Object:  Table [dbo].[movtype]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movtype](
	[mid] [int] NOT NULL,
	[typeid] [int] NOT NULL,
 CONSTRAINT [PK_mtype_1] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC,
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movtag]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movtag](
	[mid] [int] NOT NULL,
	[tagid] [int] NOT NULL,
	[weight] [int] NULL,
 CONSTRAINT [PK_movtag] PRIMARY KEY CLUSTERED 
(
	[mid] ASC,
	[tagid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movtag', @level2type=N'COLUMN',@level2name=N'weight'
GO
/****** Object:  Table [dbo].[movlanguage]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movlanguage](
	[mid] [int] NOT NULL,
	[languageid] [int] NOT NULL,
 CONSTRAINT [PK_mlanguage_1] PRIMARY KEY CLUSTERED 
(
	[languageid] ASC,
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movarea]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movarea](
	[mid] [int] NOT NULL,
	[areaid] [int] NOT NULL,
 CONSTRAINT [PK_marea] PRIMARY KEY CLUSTERED 
(
	[areaid] ASC,
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usertag]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usertag](
	[uid] [int] NOT NULL,
	[tagid] [int] NOT NULL,
 CONSTRAINT [PK_persontag] PRIMARY KEY CLUSTERED 
(
	[uid] ASC,
	[tagid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userinfo]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userinfo](
	[uid] [int] NOT NULL,
	[avatar] [text] NULL,
	[intro] [nvarchar](200) NULL,
	[registdate] [date] NULL,
	[city] [nvarchar](50) NULL,
 CONSTRAINT [PK_userinfo] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像（直接以二进制形式存在avator中，还是存到本地再将路径存到avator中？）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名 / 个人简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居住地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'city'
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[uid] [int] NOT NULL,
	[mid] [int] NOT NULL,
	[state] [nchar](1) NULL,
	[score] [float] NULL,
	[cmttime] [datetime] NULL,
	[cmtcontent] [text] NOT NULL,
	[likes] [int] NULL,
	[visible] [nchar](1) NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[uid] ASC,
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（想看/看过）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点赞数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'likes'
GO
/****** Object:  Table [dbo].[chawardinfo]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chawardinfo](
	[awdinfoid] [int] NOT NULL,
	[chid] [int] NOT NULL,
	[state] [nchar](2) NOT NULL,
 CONSTRAINT [PK_characterawardinfo] PRIMARY KEY CLUSTERED 
(
	[awdinfoid] ASC,
	[chid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（提名 / 获奖）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'chawardinfo', @level2type=N'COLUMN',@level2name=N'state'
GO
/****** Object:  Table [dbo].[movawardinfo]    Script Date: 12/19/2018 11:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movawardinfo](
	[awdinfoid] [int] NOT NULL,
	[mid] [int] NOT NULL,
	[state] [nchar](2) NULL,
 CONSTRAINT [PK_movawardinfo] PRIMARY KEY CLUSTERED 
(
	[awdinfoid] ASC,
	[mid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_comment_committime]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_committime]  DEFAULT (getdate()) FOR [cmttime]
GO
/****** Object:  Default [DF_comment_likes]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_likes]  DEFAULT ((0)) FOR [likes]
GO
/****** Object:  Default [DF_comment_visible]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_visible]  DEFAULT ('Y') FOR [visible]
GO
/****** Object:  Default [DF_movie_releaseDate]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_releaseDate]  DEFAULT (NULL) FOR [releasedate]
GO
/****** Object:  Default [DF_movie_plot]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_plot]  DEFAULT ('暂无简介') FOR [plot]
GO
/****** Object:  Default [DF_movie_website]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_website]  DEFAULT ('暂无') FOR [website]
GO
/****** Object:  Default [DF_movtag_weight]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movtag] ADD  CONSTRAINT [DF_movtag_weight]  DEFAULT ((0)) FOR [weight]
GO
/****** Object:  Default [DF_score_totalscore]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_totalscore]  DEFAULT ((0)) FOR [totalscore]
GO
/****** Object:  Default [DF_score_totalnumber]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_totalnumber]  DEFAULT ((0)) FOR [totalnumber]
GO
/****** Object:  Default [DF_score_fivestars]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_fivestars]  DEFAULT ((0)) FOR [fivestar]
GO
/****** Object:  Default [DF_score_fourstars]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_fourstars]  DEFAULT ((0)) FOR [fourstar]
GO
/****** Object:  Default [DF_score_threestars]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_threestars]  DEFAULT ((0)) FOR [threestar]
GO
/****** Object:  Default [DF_score_twostars]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_twostars]  DEFAULT ((0)) FOR [twostar]
GO
/****** Object:  Default [DF_score_onestar]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score] ADD  CONSTRAINT [DF_score_onestar]  DEFAULT ((0)) FOR [onestar]
GO
/****** Object:  Default [DF_staff_status]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[staff] ADD  CONSTRAINT [DF_staff_status]  DEFAULT ('演员') FOR [status]
GO
/****** Object:  Default [DF_userinfo_registdate]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[userinfo] ADD  CONSTRAINT [DF_userinfo_registdate]  DEFAULT (getdate()) FOR [registdate]
GO
/****** Object:  ForeignKey [FK_awardinfo_award]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[awardinfo]  WITH CHECK ADD  CONSTRAINT [FK_awardinfo_award] FOREIGN KEY([awdid])
REFERENCES [dbo].[award] ([awdid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[awardinfo] CHECK CONSTRAINT [FK_awardinfo_award]
GO
/****** Object:  ForeignKey [FK_characterawardinfo_awardinfo]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[chawardinfo]  WITH CHECK ADD  CONSTRAINT [FK_characterawardinfo_awardinfo] FOREIGN KEY([awdinfoid])
REFERENCES [dbo].[awardinfo] ([awdinfoid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chawardinfo] CHECK CONSTRAINT [FK_characterawardinfo_awardinfo]
GO
/****** Object:  ForeignKey [FK_characterawardinfo_character]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[chawardinfo]  WITH CHECK ADD  CONSTRAINT [FK_characterawardinfo_character] FOREIGN KEY([chid])
REFERENCES [dbo].[character] ([chid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chawardinfo] CHECK CONSTRAINT [FK_characterawardinfo_character]
GO
/****** Object:  ForeignKey [FK_comment_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_movie]
GO
/****** Object:  ForeignKey [FK_comment_user]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_user] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([uid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_user]
GO
/****** Object:  ForeignKey [FK_movarea_areatable]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movarea]  WITH CHECK ADD  CONSTRAINT [FK_movarea_areatable] FOREIGN KEY([areaid])
REFERENCES [dbo].[areatable] ([areaid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movarea] CHECK CONSTRAINT [FK_movarea_areatable]
GO
/****** Object:  ForeignKey [FK_movarea_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movarea]  WITH CHECK ADD  CONSTRAINT [FK_movarea_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movarea] CHECK CONSTRAINT [FK_movarea_movie]
GO
/****** Object:  ForeignKey [FK_movawardinfo_awardinfo]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movawardinfo]  WITH CHECK ADD  CONSTRAINT [FK_movawardinfo_awardinfo] FOREIGN KEY([awdinfoid])
REFERENCES [dbo].[awardinfo] ([awdinfoid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movawardinfo] CHECK CONSTRAINT [FK_movawardinfo_awardinfo]
GO
/****** Object:  ForeignKey [FK_movawardinfo_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movawardinfo]  WITH CHECK ADD  CONSTRAINT [FK_movawardinfo_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movawardinfo] CHECK CONSTRAINT [FK_movawardinfo_movie]
GO
/****** Object:  ForeignKey [FK_movlanguage_languagetable]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movlanguage]  WITH CHECK ADD  CONSTRAINT [FK_movlanguage_languagetable] FOREIGN KEY([languageid])
REFERENCES [dbo].[languagetable] ([languageid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movlanguage] CHECK CONSTRAINT [FK_movlanguage_languagetable]
GO
/****** Object:  ForeignKey [FK_movlanguage_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movlanguage]  WITH CHECK ADD  CONSTRAINT [FK_movlanguage_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movlanguage] CHECK CONSTRAINT [FK_movlanguage_movie]
GO
/****** Object:  ForeignKey [FK_movtag_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movtag]  WITH CHECK ADD  CONSTRAINT [FK_movtag_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movtag] CHECK CONSTRAINT [FK_movtag_movie]
GO
/****** Object:  ForeignKey [FK_movtag_tagtable]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movtag]  WITH CHECK ADD  CONSTRAINT [FK_movtag_tagtable] FOREIGN KEY([tagid])
REFERENCES [dbo].[tagtable] ([tagid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movtag] CHECK CONSTRAINT [FK_movtag_tagtable]
GO
/****** Object:  ForeignKey [FK_movtype_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movtype]  WITH CHECK ADD  CONSTRAINT [FK_movtype_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movtype] CHECK CONSTRAINT [FK_movtype_movie]
GO
/****** Object:  ForeignKey [FK_movtype_typetable]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[movtype]  WITH CHECK ADD  CONSTRAINT [FK_movtype_typetable] FOREIGN KEY([typeid])
REFERENCES [dbo].[typetable] ([typeid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movtype] CHECK CONSTRAINT [FK_movtype_typetable]
GO
/****** Object:  ForeignKey [FK_score_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[score]  WITH CHECK ADD  CONSTRAINT [FK_score_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[score] CHECK CONSTRAINT [FK_score_movie]
GO
/****** Object:  ForeignKey [FK_staff_character]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_character] FOREIGN KEY([chid])
REFERENCES [dbo].[character] ([chid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_character]
GO
/****** Object:  ForeignKey [FK_staff_movie]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_movie] FOREIGN KEY([mid])
REFERENCES [dbo].[movie] ([mid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_movie]
GO
/****** Object:  ForeignKey [FK_userinfo_user]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[userinfo]  WITH CHECK ADD  CONSTRAINT [FK_userinfo_user] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([uid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userinfo] CHECK CONSTRAINT [FK_userinfo_user]
GO
/****** Object:  ForeignKey [FK_usertag_tagtable]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[usertag]  WITH CHECK ADD  CONSTRAINT [FK_usertag_tagtable] FOREIGN KEY([tagid])
REFERENCES [dbo].[tagtable] ([tagid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[usertag] CHECK CONSTRAINT [FK_usertag_tagtable]
GO
/****** Object:  ForeignKey [FK_usertag_user]    Script Date: 12/19/2018 11:12:50 ******/
ALTER TABLE [dbo].[usertag]  WITH CHECK ADD  CONSTRAINT [FK_usertag_user] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([uid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[usertag] CHECK CONSTRAINT [FK_usertag_user]
GO
