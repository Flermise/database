USE [db_douban]
GO
/****** Object:  Table [dbo].[user]    Script Date: 12/22/2018 19:30:25 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (1, N'用户1', N'111', N'10112341234', N'10112341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (2, N'用户2', N'111', N'10212341234', N'10212341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (3, N'用户3', N'111', N'10312341234', N'10312341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (4, N'用户4', N'111', N'10412341234', N'10412341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (5, N'用户5', N'111', N'10512341234', N'10512341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (6, N'用户6', N'111', N'10612341234', N'10612341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (7, N'用户7', N'111', N'10712341234', N'10712341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (8, N'用户8', N'111', N'10812341234', N'10812341234@163.com')
INSERT [dbo].[user] ([uId], [userName], [password], [phoneNumber], [email]) VALUES (9, N'用户9', N'111', N'10912341234', N'10912341234@163.com')
SET IDENTITY_INSERT [dbo].[user] OFF
/****** Object:  Table [dbo].[type]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[type] ON
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (1, N'剧情')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (2, N'喜剧')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (3, N'动作')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (4, N'爱情')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (5, N'科幻')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (6, N'动画')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (7, N'悬疑')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (8, N'惊悚')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (9, N'恐怖')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (10, N'犯罪')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (11, N'同性')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (12, N'音乐')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (13, N'歌舞')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (14, N'传记')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (15, N'历史')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (16, N'战争')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (17, N'西部')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (18, N'奇幻')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (19, N'冒险')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (20, N'灾难')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (21, N'武侠')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (22, N'情色')
INSERT [dbo].[type] ([typeId], [typeName]) VALUES (23, N'家庭')
SET IDENTITY_INSERT [dbo].[type] OFF
/****** Object:  Table [dbo].[tag]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[tagId] [int] IDENTITY(1,1) NOT NULL,
	[tagName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tagtable] PRIMARY KEY CLUSTERED 
(
	[tagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tag] ON
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (1, N'经典')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (2, N'青春')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (3, N'文艺')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (4, N'搞笑')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (5, N'励志')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (6, N'魔幻')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (7, N'感人')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (8, N'女性')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (9, N'黑帮')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (10, N'动画')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (11, N'浪漫')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (12, N'初恋')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (13, N'成长')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (14, N'爱情')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (15, N'喜剧')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (16, N'温情')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (17, N'动物')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (18, N'人性')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (19, N'社会')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (20, N'人生')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (21, N'悲情')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (22, N'剧情')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (23, N'生命')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (24, N'黑色幽默')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (25, N'真实事件改编')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (26, N'冒险')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (27, N'3D')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (28, N'动作')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (29, N'童年')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (30, N'警匪')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (31, N'犯罪')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (32, N'信念')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (33, N'同志')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (34, N'文革')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (35, N'悬疑')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (36, N'推理')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (37, N'黑白')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (38, N'法律')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (39, N'音乐剧')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (40, N'音乐')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (41, N'传记')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (42, N'历史')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (43, N'战争')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (44, N'二战')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (45, N'亲情')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (46, N'戏剧')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (101, N'2001')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (116, N'2016')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (118, N'2018')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (201, N'美国')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (202, N'印度')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (203, N'中国大陆')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (204, N'香港')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (205, N'美国电影')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (206, N'香港电影')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (207, N'日本')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (208, N'日本电影')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (209, N'韩国')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (210, N'韩国电影')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (211, N'中国')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (212, N'意大利')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (213, N'意大利电影')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (214, N'奥地利')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (215, N'德国')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (216, N'英国')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (301, N'好莱坞')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (302, N'宝莱坞')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (303, N'迪士尼')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (304, N'Disney')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (305, N'梦工厂')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (401, N'奥黛丽·赫本')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (402, N'周星驰')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (403, N'张柏芝')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (404, N'北野武')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (405, N'伊丽莎白')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (406, N'莎士比亚')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (501, N'罗马假日')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (502, N'喜剧之王')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (503, N'电影')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (504, N'功夫')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (505, N'菊次郎的夏天')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (506, N'灿烂人生')
INSERT [dbo].[tag] ([tagId], [tagName]) VALUES (507, N'辛德勒的名单')
SET IDENTITY_INSERT [dbo].[tag] OFF
/****** Object:  Table [dbo].[award]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[award](
	[awdId] [int] IDENTITY(1,1) NOT NULL,
	[chName] [nvarchar](50) NOT NULL,
	[enName] [varchar](50) NULL,
	[awdDate] [date] NOT NULL,
	[awdCountry] [nvarchar](50) NOT NULL,
	[website] [varchar](50) NULL,
 CONSTRAINT [PK_awardtable] PRIMARY KEY CLUSTERED 
(
	[awdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[award] ON
INSERT [dbo].[award] ([awdId], [chName], [enName], [awdDate], [awdCountry], [website]) VALUES (1, N'第22届香港电影金像奖', N'The 22nd Hong Kong Film Awards', CAST(0xAE280B00 AS Date), N'中国香港', N'www.hkfaa.com')
INSERT [dbo].[award] ([awdId], [chName], [enName], [awdDate], [awdCountry], [website]) VALUES (2, N'第23届日本电影学院奖', N'The 23rd Japan Academy Prize', CAST(0x4C240B00 AS Date), N'日本', N'www.japan-academy-prize.jp')
INSERT [dbo].[award] ([awdId], [chName], [enName], [awdDate], [awdCountry], [website]) VALUES (3, N'第67届奥斯卡金像奖', N'The 67th Academy Awards', CAST(0x3A1D0B00 AS Date), N'美国,洛杉矶', N'oscar.go.com')
INSERT [dbo].[award] ([awdId], [chName], [enName], [awdDate], [awdCountry], [website]) VALUES (4, N'第19届日本电影学院奖', N'The 19th Japan Academy Prize', CAST(0xA41E0B00 AS Date), N'日本', N'www.japan-academy-prize.jp')
INSERT [dbo].[award] ([awdId], [chName], [enName], [awdDate], [awdCountry], [website]) VALUES (5, N'第66届奥斯卡金像奖', N'The 66th Academy Awards', CAST(0xC71B0B00 AS Date), N'美国,洛杉矶', N'oscar.go.com')
INSERT [dbo].[award] ([awdId], [chName], [enName], [awdDate], [awdCountry], [website]) VALUES (6, N'第30届奥斯卡金像奖', N'The 30th Academy Awards', CAST(0x6FE80A00 AS Date), N'美国,洛杉矶', N'oscar.go.com')
SET IDENTITY_INSERT [dbo].[award] OFF
/****** Object:  Table [dbo].[area]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area](
	[areaId] [int] IDENTITY(1,1) NOT NULL,
	[areaName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_area] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[area] ON
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (1, N'中国大陆')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (2, N'美国')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (3, N'香港')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (4, N'台湾')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (5, N'日本')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (6, N'韩国')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (7, N'英国')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (8, N'法国')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (9, N'德国')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (10, N'意大利')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (11, N'西班牙')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (12, N'印度')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (13, N'泰国')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (14, N'俄罗斯')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (15, N'伊朗')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (16, N'加拿大')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (17, N'澳大利亚')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (18, N'爱尔兰')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (19, N'瑞典')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (20, N'巴西')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (21, N'丹麦')
INSERT [dbo].[area] ([areaId], [areaName]) VALUES (22, N'奥地利')
SET IDENTITY_INSERT [dbo].[area] OFF
/****** Object:  Table [dbo].[celebrity]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[celebrity](
	[celebId] [int] IDENTITY(1,1) NOT NULL,
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
	[familyMember] [nvarchar](200) NULL,
	[IMDb] [varchar](20) NULL,
	[intro] [text] NULL,
 CONSTRAINT [PK_character] PRIMARY KEY CLUSTERED 
(
	[celebId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星座' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'celebrity', @level2type=N'COLUMN',@level2name=N'constellation'
GO
SET IDENTITY_INSERT [dbo].[celebrity] ON
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (1, N'刘伟强', N'Andrew Lau', NULL, N'Wai-keung Lau / Andrew Lau Wai-Keung', N'D:/', N'男', N'白羊座', N'中国,香港', CAST(0x53EB0A00 AS Date), NULL, NULL, N'nm0490487', N'刘伟强，中国香港著名导演。代表作品有《风云》、《无间道》、《伤城》、《头文字D》等。曾斩获香港电影金像奖、台湾电影金马奖和香港电影金紫荆奖最佳导演等奖项。<br>刘伟强1960年出生于香港，自小爱好摄影，1980年中学毕业后投身邵氏。第一部参与的电影为刘家良的《十八般武艺》，当一名摄影小工。1985年正式担任摄影师，作品有《龙虎风云》和 《旺角卡门》等。1990年开始执导筒，拍摄了《朋党》，《人皮灯笼》，《庙街故事》等影片。<br>1995年与文隽，王晶合组最佳拍档电影制作公司，1996年执导最佳拍档的创业作《古惑仔之人在江湖》，结果此片成绩斐然，接连三部《古惑仔》系列电影全部进入当年香港十大卖座电影行列，掀起香港影坛的江湖片热潮，《古惑仔》系列更是连拍六集，长盛不衰。刘伟强也一举进入一线导演行列，其后一发而不可收，连续拍摄了多部大制作卖座强片。<br>近些年来已成为振兴香港影坛的中流砥柱，尤其善于拍摄漫画改编电影以及大量运用电脑特技的影片。2002-2003年刘伟强与麦兆辉执导的无间道三部曲则把刘的事业推向的颠峰。曾被王家卫御用摄影师杜可风称赞为“刘是香港手提摇镜最棒的”。刘伟强导演至少引领了三次香港电影的新浪潮，第一次《古惑仔》一系列，之后《中华英雄》、《风云》，再就是《无间道三部曲》。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (2, N'麦兆辉', N'Alan Mak', NULL, N'Alan Mak Siu Fai / Mak Siu Fai / Siu Fai Mak', N'D:/', N'男', N'摩羯座', N'香港', CAST(0x18F20A00 AS Date), NULL, NULL, N'nm0538320', N'麦兆辉是近年备受瞩目的编剧与导演，擅长营造独特风格及角色。其代表作包括《追凶 20年》及《爱与诚》。他也积极尝试不同挑战，如担任刘伟强导演、刘德华主演的《爱君如梦》监制。麦兆辉 1990年在香港演艺学院演员系毕业，1991年开始为一些小成本的电影担任副导演，多年前在没有人邀请他开拍、也不知道有没有机会开拍的情况下，写好了《无间道》的剧本，但多次尝试都没人愿意拍，不过好在寰亚慧眼识珠，最终成就了香港电影史上的经典--《无间道》三部曲。麦兆辉也跻身一线导演行列。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (3, N'刘德华', N'Andy Lau', N'刘福荣(幼时学名) / 华仔(昵称) ', N'Lau Tak Wah (本名) / Wah Jai (昵称) ', N'D:/', N'男', N'天秤座', N'香港,新界', CAST(0x70ED0A00 AS Date), NULL, N'朱丽倩(妻) / 刘向蕙(女)', N'nm0490489', N'刘德华，著名演员和歌手。1990年代被封为香港“四大天王”之一，亦是大中华地区极具代表性的艺人之一。 刘德华是个多线发展的艺人：作为歌手，他是吉尼斯世界纪录大全中，获奖最多的香港歌手；电影方面他曾三度夺得香港电影金像奖最佳男主角、以及获得两座台湾金马奖影帝，截止2010年参与出演的电影已经超过140部。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (4, N'梁朝伟', N'Tony Leung Chiu Wai', N'伟仔(昵称) / 老虎(昵称)', N'Leung Chiu Wai / Tony Leung Chiu-Wai ', N'D:/', N'男', N'巨蟹座', N'香港', CAST(0x81EE0A00 AS Date), NULL, N'刘嘉玲(妻子) ', N'nm0504897', N'梁朝伟，香港男演员，在华人社会颇具影响力，因其出色的演技而囊括多个电影奖项。截至2009年，他是获得香港电影金像奖和台湾电影金马奖最佳男主角最多的人：其中金像奖最佳男主角5次，金马奖最佳男主角3次。另外，他凭王家卫的《花样年华》获得戛纳电影节最佳男主角。2008年，凭《色戒》获得亚洲电影大奖最佳男主角。2008年7月21日，与刘嘉玲结束20年爱情长跑，在不丹举行婚礼。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (5, N'黄秋生', N'Anthony Wong Chau-Sang', N'黄爹（昵称） / 黄爸（昵称） / 生抽王（小名）', N'Anthony Perry / Chau-Sang Wong ', N'D:/', N'男', N'处女座', N'香港', CAST(0x57ED0A00 AS Date), NULL, NULL, N'nm0938893', N'黄秋生是香港影坛的一个异类，在香港这样的商业土壤中能够诞生这样一位全面的实力派人物，是非常令人庆幸的。他是那种你只要给他一个上档次的剧本，他就能做到征服人心的鬼才。 1993年，他在《人肉叉烧包》中精彩绝伦、神形兼备的变态演出让人至今心惊胆寒，他成了华人世界的霍普金斯。1998年他在《野兽刑警》的表演达到无我境界，再次博得金像奖影帝殊荣。 黄秋生由于接片过多，所以他的作品中难免掺杂着大量水准不高的劣作，但他本人认为这些电影只是用来混口饭吃，导演只要把他的造型搞好就足够了。而与陈嘉上、杜琪峰这些大导演合作时，他却会反复按导演的安排来设计表演方式，以达到最完美的程度。有人说假如想从香港找一位可以演话剧《茶馆》的演员，那么这个人就是黄秋生。 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (6, N'庄澄', N'John Chong', N'John Chong', NULL, N'D:/', N'男', N'金牛座', N'中国,香港', CAST(0x88E90A00 AS Date), NULL, NULL, N'nm0159052', N'资深电影编剧、电影人、香港资深监制。<br>从业历程：1983年，庄澄在新艺城母公司金公主娱乐负责推广宣传的工作，由撰稿员晋升为创作主任。1987年，兼任业余的编剧，曾编写过的剧本包括《逃学外传》及《新流星蝴蝶剑》，历任金公主电影广告公司创作主管、综艺产权创作总监。1993年，加入了卫星电视的姊妹公司综艺产权有限公司，担任创作总监。1994年，他与几位在香港卫视共事的伙伴决定以企业化模式拍摄及发行电影，寰亚集团因此应运而生。庄澄负责电影制作及宣传推广工作，95年晋升为制作总监。现任寰亚娱乐副主席兼执行董事、寰亚集团副主席暨行政总裁兼首席执行官、香港电影金像奖协会董事局副主席、香港电影编剧家协会主席、香港电影应变小组发言人。曾荣获《商业周刊》(Business Week)评选为2004年“亚洲之星”。这十年间他不仅是寰亚集团的创办人，也兼任执行董事。去年寰亚集团在新加坡上市，蜕变为寰亚娱乐集团，而庄澄则执掌副主席暨执行董事一职。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (7, N'黎耀辉', N'Yiu-Fai Lai', NULL, NULL, N'D:/', N'男', NULL, NULL, NULL, NULL, NULL, N'nm0481738', NULL)
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (8, N'久石让', N'Joe Hisaishi', N'藤泽守(本名) ', N'久石譲(日) / Mamoru Fujisawa(本名) / Jō Hisaishi ', N'D:/', N'男', N'射手座', N'日本,长野', CAST(0x04DE0A00 AS Date), NULL, NULL, N'nm0386749', N'久石让，日本著名作曲家、歌手、钢琴家，以担任电影配乐为主。特别是宫崎骏导演的作品，从《风之谷》至《悬崖上的金鱼公主》的二十多年间所有长篇动画电影的音乐制作，为宫崎骏作品中不可欠缺的配乐大师。“久石让”这个名字的来源是他的偶像——美国黑人音乐家及制作人昆西·琼斯。他把“Quincy Jones”这个名字改成日语发音，再联上最近似的汉字姓名，就变成了“久石让”。他的英文名JOE，也可以说是为了向美国配乐大师QUINCY JONES致敬。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (9, N'岸本加世子', N'Kayoko Kishimoto', NULL, N'きしもとかよこ', N'D:/', N'女', N'摩羯座', N'日本', CAST(0x60EC0A00 AS Date), NULL, NULL, N'nm0457229', N'岸本加世子1960年出生于静冈县岛田市，1976年在一次电视公开选秀节目中被发现，第二年出演TBS的广播剧，进入演艺圈。岸本在好多电视广告中那温暖的人格特质和特殊的幽默方式，使得她成为日本家喻户晓的女明星。1997年在北野武的《花火》中，她因饰演前警官西(北野武饰)濒临死亡的妻子，夺得日本电影学院奖最佳新人奖，最佳女演员奖。随后又在1999年的《菊次郎的夏天》中的出演角色，夺得2000年日本电影学院奖最佳女配角。岸本加世子参与了北野武多部作品包括2005年的《双面北野武》，2002年的《玩偶》 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (10, N'北野武', N'Takeshi Kitano', NULL, N'Takeshi Kitano', N'D:/', N'男', N'摩羯座', N'日本，东京', CAST(0x7AD80A00 AS Date), NULL, N'北野井子(女)  ', N'nm0001429', N'北野武，1947年1月18日生于东京。明治大学工学部肄业，当过出租车司机、脱衣舞秀场的喜剧演员，1973年与兼子清组成对口相声团体《Two Beat》，活跃于电视及广播界，并以辛辣和黑色幽默受到欢迎，成为日本80年代相声热潮的灵魂人物。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (11, N'关口雄介', N'Yusuke Sekiguchi', NULL, NULL, N'D:/', N'男', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (12, N'弗兰克·德拉邦特', N'Frank Darabont', N'弗兰克·达拉邦特 ', N'Frank A. Darabont ', N'D:/', N'男', N'水瓶座', N'法国,杜省,蒙贝利亚尔', CAST(0xA3E90A00 AS Date), NULL, NULL, N'nm0001104', N'弗兰克·达拉邦特为数极少的导演作品却为他赢得了全世界影迷的爱戴：比如《肖申克的救赎》和《绿里奇迹》。比起导演这个工作，弗兰克·达拉邦特更适合被称为编剧，然而他为数极少的导演作品却为他赢得了全世界影迷的爱戴：比如《肖申克的救赎》和《绿里奇迹》。而2001年，他的奥斯卡野心之作《忘了我是谁》让金·凯瑞在正剧上演足了瘾，却票房、口碑双双失利。2007年的作品是根据斯蒂芬·金小说改编的《迷雾》。 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (13, N'蒂姆·罗宾斯', N'Tim Robbins', NULL, N'Timothy Francis Robbins (本名) ', N'D:/', N'男', N'天秤座', N'美国,加利福尼亚州,西科维纳', CAST(0x3BE90A00 AS Date), NULL, N'Susan Sarandon（前妻）', N'nm0000209', N'蒂姆·罗宾斯，原名蒂莫西·佛朗西斯·罗宾斯（Timothy Francis Robbins），生于美国加利福尼亚州西科维纳市，中学就读于 Stuyvesant High School，后升到 University of New York at Plattsburgh，就读两年后再转升到 U.C.L.A.，于 1980年毕业及取得戏剧学位。曾是专业棒球运动员，对演戏情有独钟。他还是一位导演、编剧以及制片人。作为演员，他于1992年凭借《超级大玩家》（The Player）荣获戛纳电影节和金球奖的双料影帝，在2004年又凭借《神秘河》（Mystic River）荣获第76届奥斯卡最佳男配角奖。作为导演和编剧，他1995年的作品《死囚上路》（Dead Man Walking）在1996年获得了奥斯卡的三项提名并且在同年的柏林电影节上获得四项大奖。在各个影片中，罗宾斯以精湛的演技，塑造了一个个知性、沉静的银幕形象，为蒂姆·罗宾斯在影坛奠定了结实的基础，被称为好莱坞真正电影艺术家。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (14, N'摩根·弗里曼', N'Morgan Freeman', N'摩根费曼 ', N'Morgan Porterfield Freeman Jr. (本名) ', N'D:/', N'男', N'双子座', N'美国,田纳西州,孟菲斯', CAST(0xBCCA0A00 AS Date), NULL, N'Jeanette Adair Bradshaw(前妻) / Myrna Colley-Lee(前妻) ', N'nm0000151', N'摩根·弗里曼 （Morgan Freeman），美国黑人男演员、导演。1989年凭借着在《为戴西小姐开车》中的忠厚诚实、善良勇敢的老司机形象为他赢得了金球奖和全美影评奖。2005年凭借克林特·伊斯特伍德导演的《百万美元宝贝》获得第77届奥斯卡最佳男配角奖。摩根·弗里曼于1990年代成名，并演出过许多著名的好莱坞电影。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (15, N'罗伯特·泽米吉斯', N'Robert Zemeckis', N'罗拔森·米基斯 / 劳勃辛·密克斯 / 罗伯特·赞米基斯 / 罗伯特·泽米基斯 ', N'Robert Lee Zemeckis (本名) / Bob (昵称) ', N'D:/', N'男', N'金牛座', N'美国,伊利诺伊州,芝加哥', CAST(0x11E00A00 AS Date), NULL, NULL, N'nm0000709', N'罗伯特·泽米吉斯，美国著名电影编剧、导演。早年主要以创作电影剧本为主。在他的剧本《1941年》被斯皮尔伯格搬上银幕后，泽米吉斯和斯皮尔伯格开始了长期合作，《回到未来》系列是两人合作的经典作品。在这三部影片中泽米吉斯担任导演，斯皮尔伯格担任制片，两人的默契合作使影片成为影史上最成功的作品之一。 1988年，泽米吉斯又推出了影片《谁陷害了兔子罗杰》，影片巧妙的将卡通与实景相结合，新颖的效果让泽米吉斯再次展现了自己非同反响的电影天赋，奠定了“世界电影技术发展史上的一个里程碑”。《阿甘正传》是泽米吉斯真正的颠峰之作，在全世界掀起了一股“阿甘热”。影片在美加两地共获得了近3.3亿美元的票房收入，成为影史上排行第四的卖座影片。该片在全球收入高达5.5亿美元，被世界影坛称为奇迹，泽米吉斯也因此功成名就，登上了美国导演界的至尊宝座。 2001年3月，罗伯特·泽米吉斯数字艺术中心在南加州大学的电影电视学院落成，成为美国第一所数字技术培训中心，在影片拍摄、后期制作和舞台效果领域具有最先进的高科技技术 。 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (16, N'汤姆·汉克斯', N'Tom Hanks', N'汤汉斯(港) / 汤姆汉克(台) ', N'Thomas Jeffrey Hanks (本名) ', N'D:/', N'男', N'巨蟹座', N'美国,加利福尼亚州,康科德', CAST(0xFEE50A00 AS Date), NULL, N'科林·汉克斯(子) / 丽塔·威尔逊(妻) / Samantha Lewes(前妻) ', N'nm0000158', N'美国电影男演员，以演技精湛而著称，曾参演多部不同类型电影，饰演角色包括易受攻击的《阿甘》、以灵感主演的《费城故事》、温馨喜剧的漂亮男人在《西雅图不眠夜》中。他曾于1994,1995年获得奥斯卡最佳男主角奖，他是当今好莱坞最具影响力的电影明星之一。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (17, N'陈凯歌 ', N'Kaige Chen', N'陈皑鸽(别名)', N'Chen Kai Ge / Chen Kaige / 첸 카이거', N'D:/', N'男', N'狮子座', N'中国,北京', CAST(0x6BE00A00 AS Date), NULL, N'陈怀皑(父亲) / 陈红(妻子) / 陈雨昂(长子) / 陈飞宇(儿子) / 洪晃(前妻) ', N'nm0155280', N'陈凯歌出身于艺术家庭，少年时期经历过文革和插队。1970年，陈凯歌参军。1974年复员转业1976年到北京电影洗印厂工作。1978年，陈凯歌考入北京电影学院导演系。1982年北京电影学院导演系毕业 ，后任北京电影制片厂导演。1984年开始执导影片。1987年赴美国进修，1990年回国。他执导的《黄土地》，以其突破性的电影语言，对中国电影产生了极大的影响，并为中国第五代导演走向世界奠定了基础。执导的《霸王别姬》被影评家认为是中国文革后最有艺术价值的一部电影，诠释了中国半个世纪的风雨变换和人物命运。至今仍为惟一获得戛纳电影节金棕榈奖的中国导演。在第47届希腊塞萨洛尼基电影节上获得终身成就奖。 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (18, N'张国荣', N'Leslie Cheung', N'张发忠(本名) / 张发宗(曾用名) / 哥哥(昵称) / 荣少(昵称) / 十仔(昵称)', N'Fat-Chong Cheung(本名) / レスリーチャン(日)', N'D:/', N'男', N'处女座', N'香港', CAST(0x3FE60A00 AS Date), CAST(0xA9280B00 AS Date), N'唐鹤德(伴侣) / 张活海(父) / 潘玉瑶(母) / 张绿萍(姐) ', N'nm0002000', N'张国荣，籍贯广东梅县，生于香港，是一位在全球华人社会和亚洲地区有影响力的著名演员、歌手和音乐人，大中华地区乐坛和影坛巨星，演艺圈多面发展最成功的代表之一。他是1980年代华语乐坛的殿堂级歌手之一；1991年获香港电影金像奖最佳男主角；1994年凭《霸王别姬》获日本影评人协会最佳外语片男主角，并打破大陆文艺片在美国的票房纪录，成功晋身国际影坛；1999年获香港乐坛最高荣誉“金针奖”。他主演的电影名作有《胭脂扣》、《倩女幽魂》、《阿飞正传》、《霸王别姬》、《东邪西毒》、《春光乍泄》等。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (19, N'张丰毅 ', N'Fengyi Zhang', NULL, N'Fung Ngai Cheung / Feng-Yi Zhang ', N'D:/', N'男', N'处女座', N'中国,河南,南阳', CAST(0x34E60A00 AS Date), NULL, N'霍凡(妻) / 吕丽萍(前妻)', N'nm0955342', N'张丰毅，中国内地著名演员。1971年初中肄业，从中学进了云南省东川市文工团，先练了两年京剧，然后练舞蹈。1978年考入北京电影学院表演系，开始系统地学习电影表演艺术。在校期间，他参加《塞外夺宝》。1982年毕业被分配到峨眉电影制片厂。1986年出演了六集电视剧《朱德》中的“蔡锷将军”。随后张丰毅出演了《骆驼祥子》、《和平年代》等口碑甚好的电视剧。1992年和陈凯歌、张国荣合作的电影《霸王别姬》，一片叫好。张丰毅正是凭借这种入骨三分的演绎和正直仗义的个性取得了开阔的事业天地。 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (20, N'史蒂文·斯皮尔伯格', N'Steven Spielberg', N'史提芬·史匹堡 / 史蒂芬·斯皮尔伯格 / 斯蒂文·斯皮尔伯格 / 史蒂芬·史匹柏 ', N'Steven Allan Spielberg (本名) ', N'D:/', N'男', N'射手座', N'美国,俄亥俄州,辛辛那提', CAST(0x5BD80A00 AS Date), NULL, N'莉娅·阿德勒(母亲) / Sasha Spielberg(女)', N'nm0000229', N'史蒂文·斯皮尔伯格（Steven Allan Spielberg 又译：史蒂芬·阿伦·斯皮尔伯格），生于美国俄亥俄州的辛辛那提市，犹太人血统，美国著名电影导演、编剧和电影制作人。在四十年的电影生涯中，斯皮尔伯格曾触及多种主题与类型，有犹太人大屠杀、奴隶制度、战争与恐怖主义等题材。斯皮尔伯格曾两度荣获奥斯卡最佳导演奖，他有三部电影，《大白鲨》 (1975) 、《E.T.外星人》 (1982) 与《侏罗纪公园》，曾打破票房纪录，成为当时最卖座的电影。至今，斯皮尔伯格执导的电影收入在全球粗估已超过85亿美元。 ')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (21, N'连姆·尼森', N' Liam Neeson', N'William John Neeson (本名) ', N'William John Neeson (本名) ', N'D:/', N'男', N'双子座', N'英国,北爱尔兰', CAST(0x29E00A00 AS Date), NULL, N'娜塔莎·理查德森(妻) ', N'nm0000553', N'连姆?尼森出生于北爱尔兰，父母亲是学者，姊妹为教师。尼森曾经在吉尼斯啤酒厂做过叉车工，还当过卡车司机，助理建筑师以及业余拳击手。他也曾为了成为一名教师而在贝尔法斯特的圣玛丽师范学院求学。但1976年，他加入贝尔法斯特剧场表演队伍，在戏剧“The Rising People”中奉献了第一次专业表演。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (22, N'比利·怀德 ', N'Billy Wilder', N'比利·怀尔德 ', N'Samuel Wilder(本名) / The Viennese Pixie(昵称) ', N'D:/', N'男', N'巨蟹座', N'波兰,小波兰省, 贝斯基德地区苏哈', CAST(0x969E0A00 AS Date), CAST(0x37270B00 AS Date), NULL, N'nm0000697', N'本想成为律师的Billy Wilder放弃他在维也纳报社做记者的工作来到柏林，1929年开始编写剧本而涉足影坛。希特勒掌权前，他为许多德国电影编写剧本。由于害怕因为自己的犹太血统引起麻烦，他移居到巴黎，与人合作导演了一部电影后，1933年经由墨西哥来到好莱坞。2002年3月28日，抱过六个小金人的电影大师比利·怀德去世了，影迷们不会忘记比利·怀德一生中给予了我们那么多快乐的夜晚，其《日落大道》、《热情如火》、《公寓春光》等经典电影，使不同年代的影迷着魔。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (23, N'泰隆·鲍华', N'Tyrone Power', N'蒂龙·鲍尔 ', N'Tyrone Edmund Power Jr. (本名) / Ty (昵称)', N'D:/', N'男', N'金牛座', N'美国,俄亥俄州,辛辛那提', CAST(0xD0A90A00 AS Date), CAST(0x59E90A00 AS Date), N'Tyrone Power, Sr.(父) / Helen Emma Reaume(母) / Annabella(前妻) / Linda Christian(前妻) / Deborah Ann Minardos(妻) ', N'nm0000061', N'泰隆·鲍华（Tyrone Power）出生于美国辛辛那提，曾出演过《碧血黄沙》、《控方证人》等电影。他的父亲以及祖父都是舞台剧演员，他的母亲则是莎士比亚戏剧的演员而且是一位受人尊敬的表演教师，母亲对他表演事业的起步阶段起了很大的帮助作用。')
INSERT [dbo].[celebrity] ([celebId], [chName], [enName], [otherChName], [otherEnName], [avatar], [sex], [constellation], [birthplace], [birthday], [deathday], [familyMember], [IMDb], [intro]) VALUES (24, N'玛琳·黛德丽 ', N'Marlene Dietrich', N'玛莲·德烈治 / 玛琳·迪特里希 ', N'Maria Magdalene Dietrich (本名) / Lili Marlene (昵称) ', N'D:/', N'女', N'摩羯座', N'德国,柏林', CAST(0x30980A00 AS Date), CAST(0x1B190B00 AS Date), N'Rudolf Sieber（夫） / Maria Riva（女）', N'nm0000017', N'玛琳·黛德丽，著名影星。父亲是一名皇家警察中尉。父亲的地位让玛琳和她的姐姐度过了一个舒适的童年。1911年，玛琳的父亲去世了，撇下母亲独自扶养两个女儿。父亲的去世给玛琳留下一个长久的阴影。玛琳的童年嗜好是音乐。她喜爱演奏小提琴，并且梦想成为柏林爱乐乐团的职业小提琴手。但后来她的手受了伤，童年梦想也成为泡影。')
SET IDENTITY_INSERT [dbo].[celebrity] OFF
/****** Object:  Table [dbo].[movie]    Script Date: 12/22/2018 19:30:25 ******/
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
	[otherName] [nvarchar](100) NULL,
	[poster] [text] NULL,
	[releaseDate] [date] NOT NULL,
	[timeLength] [varchar](5) NOT NULL,
	[plot] [text] NOT NULL,
	[IMDb] [varchar](20) NULL,
	[website] [varchar](100) NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[mId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电影时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'timeLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介（情节）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'plot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IMDb链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'IMDb'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'官方网站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movie', @level2type=N'COLUMN',@level2name=N'website'
GO
SET IDENTITY_INSERT [dbo].[movie] ON
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (1, N'肖申克的救赎', N'The Shawshank Redemption', N'月黑高飞(港) / 刺激1995(台) / 地狱诺言 / 铁窗岁月 / 消香克的救赎', N'D:/', CAST(0x741C0B00 AS Date), N'142', N'20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……', N'tt0111161', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (2, N'霸王别姬', NULL, N'再见，我的妾 / Farewell My Concubine', N'D:/', CAST(0x0B1A0B00 AS Date), N'171', N'暂无简介', N'tt0106332', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (3, N'控方证人', N'Witness for the Prosecution', N'雄才伟略 / 情妇', N'D:/', CAST(0x0CE80A00 AS Date), N'116', N'伦敦著名刑案辩护律师韦菲爵士（查尔斯?劳顿 Charles Laughton 饰）接受了心脏病治疗，但是身体依旧虚弱，第一天回家休养，护士一直严厉监督他服药，并杜绝烟酒。管家为了便于上楼，还专门为他修了电梯。但是，种种关心照顾，对于这位桀骜不驯、牙尖嘴利的大律师根本不起作用，反倒是一纸诉状令他倍感兴奋。律师梅休和当事人沃尔（泰隆?鲍华 Tyrone Power饰）登门拜访，请他出山打官司。原来，沃尔结识了富婆，两人相见甚欢，虽然仆人对他发明的打蛋器充满鄙夷，但是富婆却对他充满爱意，甚至为他修改了遗嘱，把8万英镑留给了他。然而，富婆却惨遭毒手。于是，沃尔成为警方的头号嫌疑犯。他的唯一证人是妻子克里斯汀（玛琳?黛德丽 Marlene Dietrich饰），然而后者登门时的冷漠与淡定，令韦菲爵士怀疑这其中另有隐情。在扑朔迷离的案件背后，隐藏着一个个环环相扣、不可告人的秘密……<br>本片改编自阿加莎?克里斯蒂同名小说。 ', N'tt0051201', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (4, N'伊丽莎白', N'Elisabeth', N'音乐剧《伊丽莎白》', N'D:/', CAST(0x7C2C0B00 AS Date), N'140', N'A musical chronicle on the unhappy life of Empress Elisabeth of Austria and her bizarre love affair with Death. ', N'tt0806061', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (5, N'辛德勒的名单', N'Schindler''s List', N'舒特拉的名单(港) / 辛德勒名单', N'D:/', CAST(0x581B0B00 AS Date), N'195', N'1939年，波兰在纳粹德国的统治下，党卫军对犹太人进行了隔离统治。德国商人奥斯卡·辛德勒（连姆·尼森 Liam Neeson 饰）来到德军统治下的克拉科夫，开设了一间搪瓷厂，生产军需用品。凭着出众的社交能力和大量的金钱，辛德勒和德军建立了良好的关系，他的工厂雇用犹太人工作，大发战争财。<br>1943年，克拉科夫的犹太人遭到了惨绝人寰的大屠杀，辛德勒目睹这一切，受到了极大的震撼，他贿赂军官，让自己的工厂成为集中营的附属劳役营，在那些疯狂屠杀的日子里，他的工厂也成为了犹太人的避难所。<br>1944年，德国战败前夕，屠杀犹太人的行动越发疯狂，辛德勒向德军军官开出了1200人的名单，倾家荡产买下了这些犹太人的生命。在那些暗无天日的岁月里，拯救一个人，就是拯救全世界。', N'tt0108052', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (6, N'美丽人生', N'La vita è bella', N'一个快乐的传说(港) / Life Is Beautiful', N'D:/', CAST(0x21210B00 AS Date), N'116', N'犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。<br>然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！” <br>法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢？', N'tt0118799', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (7, N'第十二夜', N'Shakespeare''s Globe: Twelfth Night', N'随心所欲', N'D:/', CAST(0x94360B00 AS Date), N'176', N'''Better a witty fool, than a foolish wit.''<br>Filled with a cast of unforgettable characters, Twelfth Night combines cruelty with high comedy and the pangs of unrequited love with some of the subtlest poetry and most exquisite songs Shakespeare ever wrote. <br>The Globe revisits its award-winning Twelfth Night of 2002 with an all-male Original Practices production, exploring clothing, music, dance and settings possible in the Globe of around 1601.<br>Mark Rylance reprises his performance of Olivia in Twelfth Night, 10 years after its original premiere at Middle Temple Hall and The Globe. <br>In the household of Olivia, two campaigns are being quietly waged - one by the lovesick lord Orsino against the heart of the indifferent Olivia; the other by an alliance of servants and hangers-on against the high-handedness of her steward, the pompous Malvolio. When Orsino engages the cross-dressed Viola to plead with Olivia on his behalf, a bittersweet chain of events follows.  ', N'tt5622262', N' https://globeplayer.tv/videos/twelfth-night')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (8, N'这个杀手不太冷', N'Léon', N'杀手莱昂 / 终极追杀令(台) / 杀手里昂 / Leon ', N'D:/', CAST(0x781C0B00 AS Date), N'133', N'里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。<br>女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……', N'tt0110413', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (9, N'阿甘正传', N'Forrest Gump', N'福雷斯特·冈普', N'D:/', CAST(0x251C0B00 AS Date), N'142', N'阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。<br>阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。 <br>阿甘成为橄榄球巨星、越战英雄、乒乓球外交使者、亿万富翁，但是，他始终忘不了珍妮，几次匆匆的相聚和离别，更是加深了阿甘的思念。<br>有一天，阿甘收到珍妮的信，他们终于又要见面…… ', N'tt0109830', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (10, N'灿烂人生', N'La meglio gioventù', N'灿烂时光(台) / 最好的青春 / 少年万岁 / 璀璨人生 / The Best of Youth', N'D:/', CAST(0xFB280B00 AS Date), N'336', N'马里奥（阿莱西奥?博尼 Alessio Boni 饰）和尼古拉（卢伊吉洛?肖卡 Luigi Lo Cascio 饰）是亲密无间的两兄弟，但是酷爱诗歌的马里奥却在考试中因为与教授意见相左而不及格，相反尼古拉投其所好的表现赢得了医学教授的好评拿到了高分。他们几个朋友相约去毕 业旅行，但是马里奥却带来了另外一个不速之客——他从精神病院搭救出来受伤的女孩佐珍（杰丝敏?特丽卡 Jasmine Trinca 饰）。于是，兄弟俩决定陪她寻找亲人。在一片革命洪流之中，马里奥弃笔从戎，选择做警察，而尼古拉则漂泊异乡成为了精神科医生。佛罗伦萨的大水，让兄弟俩重逢，此时尼古拉已经和钢琴师朱莉安成为伉俪。而马里奥则对摄影师米雷拉一见钟情。他们的感情同样经受着社会动荡的考验……<br>本片片长6个小时，通过讲述意大利一家人的悲欢离合，反映了意大利从1966年至2000年的社会巨变。 ', N'tt0346336', N'www.thebestofyouth.swtwn.com')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (11, N'疯狂动物城', N'Zootopia', N'优兽大都会(港) / 动物方城市(台) / 动物乌托邦 / 动物大都会 / Zootropolis', N'D:/', CAST(0x1A3B0B00 AS Date), N'109', N'故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？<br>近日里，城中接连发生动物失踪案件，就在全部警员都致力于调查案件真相之时，朱迪却被局长（伊德瑞斯·艾尔巴 Idris Elba 配音）发配成为了一名无足轻重的交警。某日，正在执勤的兔子遇见了名为尼克（杰森·贝特曼 Jason Bateman 配音）的狐狸，两人不打不相识，之后又误打误撞的接受了寻找失踪的水獭先生的任务，如果不能在两天之内找到水獭先生，朱迪就必须自愿离开警局。朱迪找到了尼克，两人联手揭露了一个隐藏在疯狂动物城之中的惊天秘密。', N'tt2948356', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (12, N'三傻大闹宝莱坞', N'3 Idiots', N'三个傻瓜(台) / 作死不离3兄弟(港) / 三个白痴 / 三个傻蛋 / 三个呆瓜 / 三生万悟 / 寻找兰彻 / Three Idiots', N'D:/', CAST(0x0E350B00 AS Date), N'171', N'本片根据印度畅销书作家奇坦·巴哈特（Chetan Bhagat）的处女作小说《五点人》（Five Point Someone）改编而成。法兰（马德哈万 R Madhavan 饰）、拉杜（沙曼·乔希 Sharman Joshi 饰）与兰乔（阿米尔·汗 Aamir Khan 饰）是皇家工程学院的学生，三人共居一室，结为好友。在以严格著称的学院里，兰乔是个非常与众不同的学生，他不死记硬背，甚至还公然顶撞校长“病毒”（波曼·伊拉尼 Boman Irani 饰），质疑他的教学方法。他不仅鼓动法兰与拉杜去勇敢追寻理想，还劝说校长的二女儿碧雅（卡琳娜·卡普 Kareena Kapoor 饰）离开满眼铜臭的未婚夫。兰乔的特立独行引起了模范学生“消音器”（奥米·维嘉 Omi Vaidya 饰）的不满，他约定十年后再与兰乔一决高下，看哪种生活方式更能取得成功。<br>本片获孟买电影博览奖最佳影片、最佳导演、最佳配角（波曼·伊拉尼）、最佳剧本等六项大奖，并获国际印度电影协会最佳影片、最佳导演、最佳剧情、最佳摄影等十六项大奖。', N'tt1187043', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (13, N'罗马假日', N'Roman Holiday', N'金枝玉叶(港) / 罗马假期(台)', N'D:/', CAST(0xEDE10A00 AS Date), N'118', N'欧洲某国的安妮公主（奥黛丽·赫本 Audrey Hepburn 饰）到访罗马，国务烦身，但她又厌倦繁文缛节。一天晚上，身心俱疲的她偷偷来到民间欣赏夜景，巧遇报社记者乔（格里高利·派克 Gregory Peck 饰）。二人把手同游，相当快乐。公主更是到乔的家中作客并在那过夜。<br>不料乔无意中发现了公主的真实身份，他决定炮制一个独家新闻，于是乔和朋友、摄影师欧文（埃迪·艾伯特 Eddie Albert 饰）一起带公主同游罗马，并且偷拍了公主的很多生活照。然而，在接下来与公主的相处中，乔不知不觉恋上了公主。为了保护公主的形象，乔只能忍痛抛弃功成名就的良机，将照片送予了公主。 <br>安妮公主在经历了罗马一日假期后，反而体验了自己对国家的责任，毅然返回了大使馆，为了本身的责任而果断抛弃了爱情。', N'tt0046250', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (14, N'怦然心动', N'Flipped', N'萌动青春 / 青春萌动 / 冒失 / 梧桐树之恋', N'D:/', CAST(0x1A330B00 AS Date), N'90', N'布莱斯（卡兰?麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳?卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直攒钱照顾傻弟弟，所以生活拮据。她理解了父母，自己动手，还得到了他外公的鼎力相助。他向她道歉，但是并未解决问题。他开始关注她。鸡蛋风波未平，家庭晚宴与午餐男孩评选又把两人扯在了一起……', N'tt0817177', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (15, N'我不是药神', NULL, N'中国药神 / 印度药神 / 印度药商 / 生命之路 / Dying to Survive / Drug Dealer', N'D:/', CAST(0x6F3E0B00 AS Date), N'117', N'普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。<br>本片改编自慢粒白血病患者陆勇代购抗癌药的真实事迹。', N'tt7362036', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (16, N'疯狂原始人', N'The Croods', N'古鲁家族(港/台) / 克鲁德一家 / 疯狂家族', N'D:/', CAST(0x01370B00 AS Date), N'98', N'原始人咕噜一家六口在老爸Grug（尼古拉斯·凯奇 Nicolas Cage 配音）的庇护下生活。每天抢夺鸵鸟蛋为食，躲避野兽的追击，每晚听老爸叙述同一个故事，在山洞里过着一成不变的生活。大女儿Eep（艾玛·斯通 Emma Stone 配音）是一个和老爸性格截然相反的充满好奇心的女孩，她不满足一辈子留在这个小山洞里，一心想要追逐山洞外面的新奇世界。<br>没想到世界末日突然降临，山洞被毁，一家人被迫离开家园，展开一场全新的旅程。离开了居住了“一辈子”的山洞，展现在他们眼前的是一个崭新绚丽却又充满危险的新世界，到处都是食人的花草和叫不出名字的奇异鸟兽，一家人遇到了全所未有的危机。在旅途中，他们还遇到了游牧部落族人Guy（瑞恩·雷诺兹 Ryan Reynolds 配音），他有着超凡的创造力和革新思想，帮助咕噜一家躲过了重重困难，途中他还发明了很多“高科技”产品，并让他们知道了原来生活需要“用脑子”，走路需要“鞋子”等等。一行人在影片中展开了一场闹腾而又惊险的旅程。', N'tt0481499', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (17, N'喜剧之王', N'喜劇之王', N'King of Comedy', N'D:/', CAST(0xC5220B00 AS Date), N'85', N'尹天仇（周星驰 饰）一直醉心戏剧，想成为一名演员，平时除了做跑龙套以外，还会在街坊福利会里开设演员训练班。此时舞小姐柳飘飘在妈妈桑的带领下来到这里要求学做戏，原来柳飘飘有一段非常不愉快的经历，在尹天仇对她指导的过程中，柳飘飘对尹天仇渐生情愫，同时她也成为了夜总会里当红的小姐。尹天仇受到了极多白眼之后，终于得到了大明星鹃姐（莫文蔚 饰）的赏识，提携他担演新戏中的男主角，但没想到突然把他的角色换掉了，令他失望不已。在片场当场务的卧底警员（吴孟达 饰）身份被识穿，尹天仇阴差阳错的帮忙破了案。之后尹天仇继续活跃在街坊福利会的演员训练班里。', N'tt0188766', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (18, N'功夫', NULL, N'功夫3D / Kung Fu Hustle', N'D:/', CAST(0x212B0B00 AS Date), N'95', N'1940年代的上海，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。 <br>阿星假冒“斧头帮”成员试图在一个叫“猪笼城寨”的地方对居民敲诈，不想引来真的“斧头帮”与“猪笼城寨”居民的恩怨。“猪笼城寨”原是藏龙卧虎之处，居民中有许多身怀绝技者（元华、梁小龙等），他们隐藏于此本是为远离江湖恩怨，不想麻烦自动上身，躲都躲不及。而在观战正邪两派的斗争中，阿星逐渐领悟功夫的真谛。', N'tt0373074', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (19, N'菊次郎的夏天', N'菊次郎の夏', N'Kikujirô no natsu / Kikujiro', N'D:/', CAST(0x25230B00 AS Date), N'121', N'暑假到来，自幼丧父的小学三年级学生正男（关口雄介饰），如今和奶奶生活在一起，暑假特别无聊。他拿出母亲从外地寄回的信，准备自己一个人去爱知县丰桥市看望母亲。 <br>邻居阿姨（岸本加世子饰）发现后，决定帮正男完成心愿。她拿出一笔钱做为旅费，还安排游手好闲的老公菊次郎（北野武饰）陪伴正男一起踏上寻母之途。可是在第一天，菊次郎就把老婆给的钱全部输光，于是两个人只好步行前往爱知。 <br>一路搭顺风车，惹了不少麻烦后，菊次郎终于带着正男到了他母亲的家，但小男孩却十分沮丧。归途中，菊次郎努力安慰他，二人过得十分愉快，夏天就这么过去了。 ', N'tt0199683', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (20, N'我的野蛮女友', N'엽기적인 그녀', N'我的淘气女友 / 猎奇女友 / My Sassy Girl', N'D:/', CAST(0x44260B00 AS Date), N'123', N'牵牛（车太贤饰）第一次与她（全智贤饰）邂逅，就毫无浪漫感可言。在地铁上她就语出惊人，喝的醉醺醺的她大声训斥不自觉给老人让座的人，吐完之后就软趴趴地倒了下来。善良的牵牛上前接住，于是就只好背着她到旅馆投宿了。但是好心不一定有好报，牵牛正在好好洗澡时就被冲进来的警察带走了。<br>然而这两个人却从此开始约会了。她很霸道很任性，然而当她用那张可爱的面孔对着你笑时，你也忍不住心软。于是牵牛也心甘情愿地被她折磨。渐渐的，牵牛感觉到她的内心受伤了，他用尽全力去呵护去保护，她仍然缺乏安全感。虽然在一起很快乐也很感动，她却仍然提出了一个难以接受的约定：让我们先分开吧……', N'tt0293715', N'暂无')
INSERT [dbo].[movie] ([mId], [chName], [originName], [otherName], [poster], [releaseDate], [timeLength], [plot], [IMDb], [website]) VALUES (21, N'无间道', N'無間道', N'Infernal Affairs / Mou gaan dou', N'D:/', CAST(0x46290B00 AS Date), N'101', N'1991年，香港黑帮三合会会员刘健明（刘德华）听从老大韩琛（曾志伟）的吩咐，加入警察部队成为黑帮卧底，韩琛许诺刘健明会帮其在七年后晋升为见习督察。1992年，警察训练学校优秀学员陈永仁（梁朝伟）被上级要求深入到三合会做卧底，终极目标是成为韩琛身边的红人。2002年，两人都不负重望，也都身背重压，刘健明渐想成为一个真正的好人，陈永仁则盼着尽快回归警察身份。<br>重案组从陈永仁手中获悉一批毒品交易情报，锁紧目标人物韩琛，没料情报被刘健明泄出，双方行动均告失败。但此事将双方均有卧底的事实暴露，引发双方高层清除内鬼的决心。命运迥异又相似的刘健明和陈永仁开始在无间道的旅程中接受严峻考验。', N'tt0338564', N'暂无')
SET IDENTITY_INSERT [dbo].[movie] OFF
/****** Object:  Table [dbo].[language]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language](
	[languageId] [int] IDENTITY(1,1) NOT NULL,
	[languageName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[language] ON
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (1, N'汉语普通话')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (2, N'英语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (3, N'德语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (4, N'法语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (5, N'意大利语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (6, N'波兰语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (7, N'希伯来语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (8, N'韩语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (9, N'日语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (10, N'挪威语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (11, N'印地语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (12, N'乌尔都语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (13, N'上海话')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (14, N'粤语')
INSERT [dbo].[language] ([languageId], [languageName]) VALUES (15, N'手语')
SET IDENTITY_INSERT [dbo].[language] OFF
/****** Object:  Table [dbo].[comment]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[uId] [int] NOT NULL,
	[mId] [int] NOT NULL,
	[state] [nchar](4) NULL,
	[score] [float] NULL,
	[cmtTime] [datetime] NULL,
	[cmtContent] [text] NOT NULL,
	[likeNum] [int] NULL,
	[isVisible] [char](1) NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[uId] ASC,
	[mId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（想看/看过）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点赞数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'likeNum'
GO
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 1, N'看过  ', 10, CAST(0x000096FB00000000 AS DateTime), N'当年的奥斯卡颁奖礼上，被如日中天的《阿甘正传》掩盖了它的光彩，而随着时间的推移，这部电影在越来越多的人们心中的地位已超越了《阿甘》。每当现实令我疲惫得产生无力感，翻出这张碟，就重获力量。毫无疑问，本片位列男人必看的电影前三名！回顾那一段经典台词：“有的人的羽翼是如此光辉，即使世界上最黑暗的牢狱，也无法长久地将他围困！” ', 10686, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 2, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'在野路子出身的张国荣面前，学院出身的张丰毅显得那么单薄', 16282, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 5, N'看过  ', 9, CAST(0x0000A9BD012D02C9 AS DateTime), N'“凡救人一命，即救全世界！”一段如此深刻的历史，多么希望它早早结束，但如此一部经典的影片你却永远都不想它完结。感动于良知，印象很深刻的永远是黑白画面中的那一抹红色。在任何时代，不管有多么的黑暗，都会有人性的光辉在闪烁着；经典的影片也不会因为缺失色彩而让人觉得沉闷', 5282, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 7, N'看过  ', 9, CAST(0x0000A9BD012D02C9 AS DateTime), N'全员萌萌哒，Mark叔少女本体了，北影节刚好过来看环球剧场。门口还有发贴纸@首都剧场 ', 29, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 11, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'不看这个，相当于没看过电影 ', 3686, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 12, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'太给力了，有史以来最励志的电影。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (1, 13, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (2, 1, N'看过  ', 10, CAST(0x00009A4F00000000 AS DateTime), N'恐惧让你沦为囚犯，希望让你重获自由。——《肖申克的救赎》', 11404, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (2, 2, N'看过  ', 10, CAST(0x00009A4F00000000 AS DateTime), N'最优秀的中国电影 ', 11404, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (2, 5, N'看过  ', 6, CAST(0x00009A4F00000000 AS DateTime), N'属于看时激动,看完越想越没意思的那种 ', 11404, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (2, 9, N'看过  ', 10, CAST(0x00009D2A00000000 AS DateTime), N'Mama always said life was like a box of chocolates. You never know what you''re gonna get. ', 5686, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (2, 12, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'活在当下，不记得失，以无为之心做有为之事，你收获的会是比物质更珍贵永恒的生命体验。 ', 1286, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (2, 14, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (3, 1, N'看过  ', 9, CAST(0x0000994500000000 AS DateTime), N'有种鸟是关不住的. ', 6301, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (3, 3, N'看过  ', 9, CAST(0x0000994500000000 AS DateTime), N'Marlene Dietrich 的气质与片子并不十分切合啊，此时的她居然56岁了，难以置信！', 6301, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (3, 6, N'看过  ', 10, CAST(0x00009A4F00000000 AS DateTime), N'即使是悲惨世界,也要大大的笑着. ', 4421, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (3, 8, N'看过  ', 10, CAST(0x0000977500000000 AS DateTime), N'一个杀手被一个萝莉害死的故事 ', 3686, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (3, 9, N'看过  ', 10, CAST(0x00009A4F00000000 AS DateTime), N'人生就像一盒巧克力，你不知道会选中哪一颗。 ', 698, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (3, 10, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。影片里充满了哭泣，但不是为赚取你的泪水。影片里充满了悲伤，但不是为赚取你的悲伤。影片里充满了坚强，但不是为说教你坚强。你是马迪奥，你也是尼古拉。', 87, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (4, 1, N'看过  ', 9, CAST(0x00009B79012B9619 AS DateTime), N'墙里的人老是喊自由，可是墙外的我们真正得到了吗？', 898, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (4, 2, N'看过  ', 10, CAST(0x0000A0DE00000000 AS DateTime), N'我記得我標記過這部片子的啊！——我以為這是國產電影的開始，誰知道是結束', 6284, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (4, 8, N'看过  ', 10, CAST(0x00009D2A00000000 AS DateTime), N'我到哪里找，像你这么好。 ', 979, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (4, 10, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'人生如梦，跌宕起伏。生老病死，几度哽咽。黯然销魂，唯别而已。灿烂人生，生生长流。', 43, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (4, 15, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 1, N'看过	 ', 10, CAST(0x00009D2A00000000 AS DateTime), N'不需要女主角的好电影 ', 19984, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 4, N'看过  ', 10, CAST(0x00009D2A00000000 AS DateTime), N'要是像我这种意志不坚定的，Der Tod一勾搭就乖乖去死了吧', 42, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 6, N'看过  ', 10, CAST(0x00009D2A00000000 AS DateTime), N'绝对难忘的一部片子----影片结尾美国大兵的那句 hei! boy! 叫人已经凉透了的心又感到了温暖。', 19984, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 8, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'Léon： You''re not going to lose me. You''ve given me a taste for life. I wanna be happy. Sleep in a bed, have roots. And you''ll never be alone again, Mathilda. Please, go now, baby, go. Calm down, go no... ', 1295, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 16, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 19, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'矬大叔也有夏天 ', 3286, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (5, 21, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'港片新旗帜 ', 3286, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (6, 1, N'看过  ', 10, CAST(0x0000A89400000000 AS DateTime), N'策划了19年的私奔……  ', 1983, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (6, 2, N'看过  ', 10, CAST(0x0000A0DE00000000 AS DateTime), N'往事不要再提，人生已多风雨。他是霸王，你是虞姬，“我本是男儿郎，又不是女娇娥”，万丈红尘蹉跌走过半世纪。寥落繁华不由己，十万春花如梦里。剑还给你，命也还给你。“君王意气尽，贱妾何聊生？”陪你唱罢这出、我便离去...', 12684, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (6, 17, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (6, 21, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'最后那一下爆头，刘德华和梁朝伟的眼神里都是震惊，他死在电梯里，电梯门来回的开关，我们也从震惊中恢复，觉得残酷，谁说的，好人有好报，那些为民除害的，都死了。会有人惦记着他们吗？把他们视为英雄吗？又有什么用呢，这个社会还不都是恶人当道。', 2194, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 1, N'看过  ', 10, CAST(0x0000977500000000 AS DateTime), N'关于希望最强有力的注释', 2423, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 3, N'看过  ', 10, CAST(0x0000977500000000 AS DateTime), N'诙谐的对白，严谨的思路，一心要把观众往沟里带的情节。ps:我觉得那个女仆的表演也很不错！', 2423, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 8, N'看过  ', 10, CAST(0x00009A4F00000000 AS DateTime), N'她对Leon说，自从遇见你后，我的胃，再也不痛了……', 5281, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 9, N'看过  ', 10, CAST(0x0000977500000000 AS DateTime), N'羡慕珍妮，不管她多么叛逆、落魄、堕落，永远有阿甘在等她回来', 9452, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 12, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'可以打6星吗！ ', 3286, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 18, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 19, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'爱有很多种~跟一个流氓过暑假会有这么好 ', 87, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (7, 21, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'港片的里程碑 ', 2804, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 1, N'看过  ', 10, CAST(0x00009BBD00000000 AS DateTime), N'超级喜欢超级喜欢,不看的话人生不圆满. ', 3254, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 3, N'看过  ', 10, CAST(0x00009BBD00000000 AS DateTime), N'五星级结局，难以置信这是1958年的黑白电影！ ', 3254, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 6, N'看过  ', 10, CAST(0x00009D2A00000000 AS DateTime), N'看过很多遍，我会背很多台词：我想和你做爱，我见你的第一眼就想和你连续做三次爱。如果你违反了三条规定中的任何一条，你的得分就会被扣光：一、如果你哭，二、如果你想要见妈妈，三、如果你饿了，想要吃点心！想都别想！第一句爱情性感，第二句父爱如山 最爱的还是那句：早安，公主！ ', 19984, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 8, N'看过  ', 10, CAST(0x00009BBD00000000 AS DateTime), N'我开始想要过得快乐，睡在床上，有牵挂 ', 4829, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 12, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'如果有一天你变成了奇怪的家伙，生活于恐惧和虚假之中，就念重生的咒语“All is well”，狠狠地给这个世界一脚！对鼓励别样人生价值和给人梦想的片子我是举双手赞成，何况从头到尾都拍得这么欢乐。台词：“朋友是男人最大的胸部”、“你这么害怕明天，又怎么能过好今天”。 ', 986, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 19, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 3286, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (8, 21, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'让全世界人重新对香港电影刮目相看的电影，它从哲学的角度直接深入探索人性，去感受身不由己之下的那种窒息，感受贪婪与自私，和所谓的善与恶。编剧确实是相当的出色，梁朝伟的陈松仁直接神化，所有的角色都可圈可点，没有一出多余的地方，以至多年后看美版的时候仍然不忘旧爱。这是港片的里程碑。', 3846, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (9, 1, N'看过  ', 10, CAST(0x0000A00400000000 AS DateTime), N'Fear Can Hold You Prisoner, Hope Can Set You Free ', 1421, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (9, 4, N'看过  ', 10, CAST(0x0000A00400000000 AS DateTime), N'我只属于我自己，一个自由的灵魂。 ', 6, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (9, 9, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'不看这个，相当于没看过电影 ', 3686, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (9, 10, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'他让激进的朱莉娅弹得一手好钢琴，让暴躁的马蒂奥成为一个书迷，让美瑞娜在失去马蒂奥之后得到儿子，让尼古拉在女儿离开后重新得到爱情。他端详、雕刻、安抚每一个辗转反侧的灵魂，让你觉得世界可以变得更好，正在变得更好，还会变得更好。', 32, N'Y')
INSERT [dbo].[comment] ([uId], [mId], [state], [score], [cmtTime], [cmtContent], [likeNum], [isVisible]) VALUES (9, 20, N'看过  ', 10, CAST(0x0000A9BD012D02C9 AS DateTime), N'我电影名单里永远的第一名。', 786, N'Y')
/****** Object:  Table [dbo].[movieArea]    Script Date: 12/22/2018 19:30:25 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (2, 1)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (15, 1)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (18, 1)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (1, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (3, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (5, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (9, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (11, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (13, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (14, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (16, 2)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (17, 3)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (18, 3)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (21, 3)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (19, 5)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (20, 6)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (7, 7)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (8, 8)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (6, 10)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (10, 10)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (12, 12)
INSERT [dbo].[movieArea] ([mId], [areaId]) VALUES (4, 22)
/****** Object:  Table [dbo].[userTag]    Script Date: 12/22/2018 19:30:25 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (1, 1)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (1, 2)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (1, 3)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (1, 209)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (2, 1)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (2, 7)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (2, 8)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (2, 11)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (2, 12)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (2, 206)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (3, 7)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (4, 4)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (4, 15)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (4, 24)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (4, 303)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (5, 18)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (5, 19)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (6, 9)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (6, 26)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (6, 30)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (6, 31)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (6, 204)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (7, 214)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (7, 215)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (7, 303)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (8, 302)
INSERT [dbo].[userTag] ([uId], [tagId]) VALUES (9, 504)
/****** Object:  Table [dbo].[userinfo]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userinfo](
	[uId] [int] NOT NULL,
	[image] [text] NULL,
	[intro] [text] NULL,
	[registDate] [date] NULL,
	[city] [nvarchar](30) NULL,
 CONSTRAINT [PK_userinfo] PRIMARY KEY CLUSTERED 
(
	[uId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像（直接以二进制形式存在avator中，还是存到本地再将路径存到avator中？）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名 / 个人简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'registDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居住地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'userinfo', @level2type=N'COLUMN',@level2name=N'city'
GO
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (1, NULL, N'大家好我是用户1', CAST(0xDB3A0B00 AS Date), N'北京')
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (2, NULL, N'大家好我是用户2', CAST(0x363B0B00 AS Date), N'上海')
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (3, NULL, N'大家好我是用户3', CAST(0x913B0B00 AS Date), N'深圳')
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (4, NULL, N'大家好我是用户4', CAST(0x183F0B00 AS Date), N'香港')
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (5, NULL, N'大家好我是用户5', CAST(0xAB3D0B00 AS Date), N'杭州')
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (6, NULL, N'大家好我是用户6', CAST(0x183F0B00 AS Date), N'天津')
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (7, NULL, N'大家好我是用户7', CAST(0x0C3C0B00 AS Date), NULL)
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (8, NULL, N'大家好我是用户8', CAST(0x183F0B00 AS Date), NULL)
INSERT [dbo].[userinfo] ([uId], [image], [intro], [registDate], [city]) VALUES (9, NULL, N'大家好我是用户9', CAST(0xD4300B00 AS Date), NULL)
/****** Object:  Table [dbo].[awardInfo]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awardInfo](
	[awdInfoId] [int] IDENTITY(1,1) NOT NULL,
	[awdId] [int] NOT NULL,
	[awdInfoName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_awardinfo] PRIMARY KEY CLUSTERED 
(
	[awdInfoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[awardInfo] ON
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (1, 1, N'最佳电影 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (2, 1, N'最佳导演')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (3, 1, N'最佳编剧 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (4, 1, N'最佳男主角')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (6, 1, N'最佳男配角')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (7, 1, N'最佳剪接')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (8, 1, N'最佳原创电影歌曲')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (9, 1, N'最佳亚洲电影 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (10, 2, N'最佳影片')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (11, 2, N'最佳配乐')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (12, 2, N'最佳女配角')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (13, 3, N'最佳影片 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (14, 3, N'最佳导演 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (15, 3, N'最佳男主角')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (16, 3, N'最佳改编剧本')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (17, 3, N'最佳剪辑')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (18, 3, N'最佳视觉效果 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (19, 4, N'最佳外语片')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (20, 5, N'最佳影片 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (21, 5, N'最佳导演')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (22, 5, N'最佳改编剧本')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (23, 5, N'最佳摄影 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (24, 5, N'最佳剪辑')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (25, 5, N'最佳艺术指导')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (26, 5, N'最佳原创配乐 ')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (27, 5, N'最佳外语片')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (28, 5, N'最佳男主角')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (29, 6, N'最佳影片')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (30, 6, N'最佳剪辑')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (31, 6, N'最佳录音')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (32, 6, N'最佳导演')
INSERT [dbo].[awardInfo] ([awdInfoId], [awdId], [awdInfoName]) VALUES (33, 6, N'最佳男主角')
SET IDENTITY_INSERT [dbo].[awardInfo] OFF
/****** Object:  Table [dbo].[movieType]    Script Date: 12/22/2018 19:30:25 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (1, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (2, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (3, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (4, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (5, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (6, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (7, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (8, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (9, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (10, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (12, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (13, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (14, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (15, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (17, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (19, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (20, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (21, 1)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (6, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (7, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (11, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (12, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (13, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (14, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (15, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (16, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (17, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (18, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (19, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (20, 2)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (8, 3)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (18, 3)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (2, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (6, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (9, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (10, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (12, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (13, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (14, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (17, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (20, 4)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (11, 6)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (16, 6)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (3, 7)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (21, 7)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (1, 10)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (3, 10)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (8, 10)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (18, 10)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (21, 10)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (2, 11)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (4, 13)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (12, 13)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (5, 15)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (5, 16)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (6, 16)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (18, 18)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (11, 19)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (16, 19)
INSERT [dbo].[movieType] ([mId], [typeId]) VALUES (10, 23)
/****** Object:  Table [dbo].[movieTag]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieTag](
	[mId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[weight] [int] NOT NULL,
 CONSTRAINT [PK_movtag] PRIMARY KEY CLUSTERED 
(
	[mId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movieTag', @level2type=N'COLUMN',@level2name=N'weight'
GO
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 1, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 5, 29999)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 18, 29970)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 20, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 22, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 32, 29980)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (1, 201, 29960)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 1, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 3, 29890)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 14, 29870)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 18, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 20, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 22, 29700)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 33, 29789)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (2, 34, 29700)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 1, 29000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 22, 27800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 31, 28990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 35, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 37, 27990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 38, 27880)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (3, 201, 28000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 39, 800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 40, 190)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 41, 189)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 42, 200)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 214, 299)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 215, 300)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (4, 405, 299)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 1, 29012)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 18, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 22, 28643)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 43, 28913)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 44, 29892)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 201, 28911)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (5, 507, 28943)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 1, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 14, 26182)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 16, 28240)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 18, 26843)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 43, 28302)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 44, 32032)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 45, 30289)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (6, 212, 29023)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (7, 15, 127)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (7, 46, 90)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (7, 216, 188)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (7, 406, 200)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 1, 50000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 13, 29990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 14, 49900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 16, 49900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 18, 39000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 22, 38000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 28, 35000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (8, 31, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 1, 29990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 5, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 13, 26000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 18, 25000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 20, 27000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 22, 25400)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 32, 25500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (9, 201, 28000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 3, 2809)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 13, 2900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 20, 2980)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 22, 2809)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 212, 3000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 213, 2990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (10, 506, 2970)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 4, 11000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 10, 200000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 15, 150000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 17, 130000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 116, 10000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 201, 140000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 303, 180000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (11, 304, 120000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 1, 19000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 4, 17000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 5, 20000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 15, 19300)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 20, 18000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 22, 15000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 202, 19800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (12, 302, 16000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 1, 19500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 11, 18500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 14, 19000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 201, 17500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 205, 17200)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 401, 20000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 501, 18000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (13, 503, 17000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 1, 19719)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 2, 19800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 3, 19730)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 11, 19720)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 12, 19750)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 13, 19770)
GO
print 'Processed 100 total records'
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 14, 20000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (14, 16, 19740)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 18, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 19, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 22, 29500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 23, 29700)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 24, 29400)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 25, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 118, 29300)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (15, 203, 29600)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 4, 29680)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 10, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 15, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 16, 29700)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 26, 29600)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 27, 29500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 201, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (16, 305, 29990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 4, 27900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 14, 28000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 15, 29950)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 204, 29850)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 206, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 402, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 403, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (17, 502, 27990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 4, 29400)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 15, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 28, 29600)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 204, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 206, 29500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 402, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 503, 29300)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (18, 504, 29700)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 13, 25990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 16, 27000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 22, 25800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 29, 25880)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 207, 29000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 208, 25990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 404, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (19, 505, 26000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 1, 29700)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 2, 29690)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 4, 29780)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 11, 29600)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 14, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 15, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 201, 29500)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (20, 209, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 1, 29990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 9, 29980)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 22, 29790)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 28, 29800)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 30, 29990)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 31, 29900)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 204, 30000)
INSERT [dbo].[movieTag] ([mId], [tagId], [weight]) VALUES (21, 211, 29780)
/****** Object:  Table [dbo].[movieScore]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieScore](
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movieScore', @level2type=N'COLUMN',@level2name=N'totalNumber'
GO
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (1, 9.6, 1234931, 1034930, 177840, 20995, 1235, 1235)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (2, 9.6, 909407, 736620, 149143, 21825, 1819, 909)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (3, 9.6, 149219, 120867, 25516, 2686, 149, 149)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (4, 9.6, 1298, 1073, 193, 25, 0, 7)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (5, 9.5, 510956, 389859, 105767, 14307, 5109, 5109)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (6, 9.5, 568938, 448892, 103547, 14792, 1138, 569)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (7, 9.5, 614, 484, 112, 17, 0, 1)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (8, 9.4, 1135367, 839036, 255458, 37467, 2271, 1135)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (9, 9.4, 973633, 732172, 208357, 31156, 1947, 974)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (10, 9.4, 28498, 21259, 5757, 1225, 171, 85)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (11, 9.2, 737337, 471896, 222676, 40553, 2212, 737)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (12, 9.2, 884772, 592797, 230041, 53086, 6193, 2654)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (13, 9, 488442, 274677, 169554, 37786, 1453, 484)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (14, 9, 772268, 448688, 258710, 61009, 3861, 772)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (15, 9, 871577, 502900, 301565, 60138, 4358, 1743)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (16, 8.7, 443230, 210998, 175519, 52744, 3102, 886)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (17, 8.6, 404266, 181920, 166962, 51342, 3234, 404)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (18, 8.2, 353623, 127650, 142156, 71100, 7108, 1015)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (19, 8.8, 233000, 117665, 88773, 23766, 2097, 466)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (20, 8.1, 303965, 94837, 138912, 65352, 42256, 912)
INSERT [dbo].[movieScore] ([mId], [totalScore], [totalNumber], [fiveStar], [fourStar], [threeStar], [twoStar], [oneStar]) VALUES (21, 9.1, 554790, 343970, 175868, 33287, 1109, 555)
/****** Object:  Table [dbo].[movieRole]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieRole](
	[mrId] [int] IDENTITY(1,1) NOT NULL,
	[celebId] [int] NOT NULL,
	[mId] [int] NOT NULL,
	[profName] [nvarchar](50) NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_movieRole] PRIMARY KEY CLUSTERED 
(
	[mrId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movieRole', @level2type=N'COLUMN',@level2name=N'profName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movieRole', @level2type=N'COLUMN',@level2name=N'roleName'
GO
SET IDENTITY_INSERT [dbo].[movieRole] ON
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (1, 1, 21, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (2, 1, 21, N'摄影', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (3, 1, 21, N'制片人', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (4, 2, 21, N'编剧', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (5, 2, 21, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (6, 3, 21, N'演员', N'刘建明')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (7, 4, 21, N'演员', N'陈永仁')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (8, 5, 21, N'演员', N'黄志诚')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (9, 6, 21, N'制片人', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (10, 7, 21, N'摄影', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (11, 8, 19, N'音乐', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (12, 9, 19, N'演员', N'邻居阿姨')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (13, 10, 19, N'编剧', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (14, 10, 19, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (15, 10, 19, N'剪辑', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (16, 10, 19, N'演员', N'菊次郎')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (17, 11, 19, N'演员', N'正男')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (18, 12, 1, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (19, 13, 1, N'演员', N'安迪·杜佛兰')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (20, 14, 1, N'演员', N'艾利斯·波伊德')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (21, 15, 9, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (22, 16, 19, N'演员', N'阿甘')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (23, 17, 2, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (24, 18, 2, N'演员', N'程蝶衣(小豆子)')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (25, 19, 2, N'演员', N'段小楼(小石头)')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (26, 15, 9, N'制片人', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (27, 17, 2, N'编剧', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (28, 20, 5, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (29, 20, 5, N'制片人', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (30, 21, 5, N'演员', N'Oskar Schindler')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (31, 22, 3, N'导演', NULL)
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (32, 23, 3, N'演员', N'沃尔')
INSERT [dbo].[movieRole] ([mrId], [celebId], [mId], [profName], [roleName]) VALUES (33, 24, 3, N'演员', N'克里斯汀')
SET IDENTITY_INSERT [dbo].[movieRole] OFF
/****** Object:  Table [dbo].[movieLanguage]    Script Date: 12/22/2018 19:30:25 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (2, 1)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (15, 1)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (18, 1)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (1, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (3, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (5, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (6, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (7, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (8, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (9, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (11, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (12, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (13, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (14, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (15, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (16, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (20, 2)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (3, 3)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (4, 3)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (5, 3)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (6, 3)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (13, 3)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (8, 4)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (6, 5)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (8, 5)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (10, 5)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (13, 5)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (5, 6)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (5, 7)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (20, 8)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (19, 9)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (11, 10)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (12, 11)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (15, 11)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (12, 12)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (15, 13)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (17, 14)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (18, 14)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (21, 14)
INSERT [dbo].[movieLanguage] ([mId], [languageId]) VALUES (18, 15)
/****** Object:  Table [dbo].[movieAwardInfo]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieAwardInfo](
	[awdInfoId] [int] NOT NULL,
	[mId] [int] NOT NULL,
	[state] [nchar](4) NULL,
 CONSTRAINT [PK_movawardinfo] PRIMARY KEY CLUSTERED 
(
	[awdInfoId] ASC,
	[mId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (1, 21, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (3, 21, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (7, 21, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (8, 21, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (9, 20, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (10, 19, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (13, 1, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (13, 9, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (16, 1, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (16, 9, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (17, 1, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (17, 9, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (18, 9, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (19, 1, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (20, 5, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (22, 5, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (23, 2, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (23, 5, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (24, 5, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (25, 5, N'获奖  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (27, 2, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (29, 3, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (30, 3, N'提名  ')
INSERT [dbo].[movieAwardInfo] ([awdInfoId], [mId], [state]) VALUES (31, 3, N'提名  ')
/****** Object:  Table [dbo].[celebAwardInfo]    Script Date: 12/22/2018 19:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[celebAwardInfo](
	[awdInfoId] [int] NOT NULL,
	[celebId] [int] NOT NULL,
	[state] [nchar](4) NOT NULL,
 CONSTRAINT [PK_characterawardinfo] PRIMARY KEY CLUSTERED 
(
	[awdInfoId] ASC,
	[celebId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（提名 / 获奖）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'celebAwardInfo', @level2type=N'COLUMN',@level2name=N'state'
GO
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (2, 1, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (2, 2, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (4, 4, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (6, 5, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (11, 8, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (12, 9, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (14, 15, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (15, 14, N'提名  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (15, 16, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (21, 20, N'获奖  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (28, 21, N'提名  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (32, 22, N'提名  ')
INSERT [dbo].[celebAwardInfo] ([awdInfoId], [celebId], [state]) VALUES (33, 23, N'提名  ')
/****** Object:  Default [DF_award_website]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[award] ADD  CONSTRAINT [DF_award_website]  DEFAULT ('暂无') FOR [website]
GO
/****** Object:  Default [DF_comment_committime]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_committime]  DEFAULT (getdate()) FOR [cmtTime]
GO
/****** Object:  Default [DF_comment_likes]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_likes]  DEFAULT ((0)) FOR [likeNum]
GO
/****** Object:  Default [DF_comment_visible]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_visible]  DEFAULT ('Y') FOR [isVisible]
GO
/****** Object:  Default [DF_movie_plot]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_plot]  DEFAULT ('暂无简介') FOR [plot]
GO
/****** Object:  Default [DF_movie_website]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movie] ADD  CONSTRAINT [DF_movie_website]  DEFAULT ('暂无') FOR [website]
GO
/****** Object:  Default [DF_staff_status]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieRole] ADD  CONSTRAINT [DF_staff_status]  DEFAULT ('演员') FOR [profName]
GO
/****** Object:  Default [DF_score_totalscore]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_totalscore]  DEFAULT ((0)) FOR [totalScore]
GO
/****** Object:  Default [DF_score_totalnumber]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_totalnumber]  DEFAULT ((0)) FOR [totalNumber]
GO
/****** Object:  Default [DF_score_fivestars]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_fivestars]  DEFAULT ((0)) FOR [fiveStar]
GO
/****** Object:  Default [DF_score_fourstars]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_fourstars]  DEFAULT ((0)) FOR [fourStar]
GO
/****** Object:  Default [DF_score_threestars]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_threestars]  DEFAULT ((0)) FOR [threeStar]
GO
/****** Object:  Default [DF_score_twostars]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_twostars]  DEFAULT ((0)) FOR [twoStar]
GO
/****** Object:  Default [DF_score_onestar]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore] ADD  CONSTRAINT [DF_score_onestar]  DEFAULT ((0)) FOR [oneStar]
GO
/****** Object:  Default [DF_movtag_weight]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieTag] ADD  CONSTRAINT [DF_movtag_weight]  DEFAULT ((0)) FOR [weight]
GO
/****** Object:  Default [DF_userinfo_registdate]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[userinfo] ADD  CONSTRAINT [DF_userinfo_registdate]  DEFAULT (getdate()) FOR [registDate]
GO
/****** Object:  ForeignKey [FK_awardInfo_award]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[awardInfo]  WITH CHECK ADD  CONSTRAINT [FK_awardInfo_award] FOREIGN KEY([awdId])
REFERENCES [dbo].[award] ([awdId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[awardInfo] CHECK CONSTRAINT [FK_awardInfo_award]
GO
/****** Object:  ForeignKey [FK_celebAwardInfo_awardInfo]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[celebAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_celebAwardInfo_awardInfo] FOREIGN KEY([awdInfoId])
REFERENCES [dbo].[awardInfo] ([awdInfoId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[celebAwardInfo] CHECK CONSTRAINT [FK_celebAwardInfo_awardInfo]
GO
/****** Object:  ForeignKey [FK_celebAwardInfo_celebrity]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[celebAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_celebAwardInfo_celebrity] FOREIGN KEY([celebId])
REFERENCES [dbo].[celebrity] ([celebId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[celebAwardInfo] CHECK CONSTRAINT [FK_celebAwardInfo_celebrity]
GO
/****** Object:  ForeignKey [FK_comment_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_movie]
GO
/****** Object:  ForeignKey [FK_comment_user]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_user] FOREIGN KEY([uId])
REFERENCES [dbo].[user] ([uId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_user]
GO
/****** Object:  ForeignKey [FK_movieArea_area]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieArea]  WITH CHECK ADD  CONSTRAINT [FK_movieArea_area] FOREIGN KEY([areaId])
REFERENCES [dbo].[area] ([areaId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieArea] CHECK CONSTRAINT [FK_movieArea_area]
GO
/****** Object:  ForeignKey [FK_movieArea_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieArea]  WITH CHECK ADD  CONSTRAINT [FK_movieArea_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieArea] CHECK CONSTRAINT [FK_movieArea_movie]
GO
/****** Object:  ForeignKey [FK_movieAwardInfo_awardInfo]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_movieAwardInfo_awardInfo] FOREIGN KEY([awdInfoId])
REFERENCES [dbo].[awardInfo] ([awdInfoId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieAwardInfo] CHECK CONSTRAINT [FK_movieAwardInfo_awardInfo]
GO
/****** Object:  ForeignKey [FK_movieAwardInfo_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieAwardInfo]  WITH CHECK ADD  CONSTRAINT [FK_movieAwardInfo_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieAwardInfo] CHECK CONSTRAINT [FK_movieAwardInfo_movie]
GO
/****** Object:  ForeignKey [FK_movieLanguage_language]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_movieLanguage_language] FOREIGN KEY([languageId])
REFERENCES [dbo].[language] ([languageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieLanguage] CHECK CONSTRAINT [FK_movieLanguage_language]
GO
/****** Object:  ForeignKey [FK_movieLanguage_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_movieLanguage_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieLanguage] CHECK CONSTRAINT [FK_movieLanguage_movie]
GO
/****** Object:  ForeignKey [FK_movieRole_celebrity]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieRole]  WITH CHECK ADD  CONSTRAINT [FK_movieRole_celebrity] FOREIGN KEY([celebId])
REFERENCES [dbo].[celebrity] ([celebId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieRole] CHECK CONSTRAINT [FK_movieRole_celebrity]
GO
/****** Object:  ForeignKey [FK_movieRole_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieRole]  WITH CHECK ADD  CONSTRAINT [FK_movieRole_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieRole] CHECK CONSTRAINT [FK_movieRole_movie]
GO
/****** Object:  ForeignKey [FK_movieScore_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieScore]  WITH CHECK ADD  CONSTRAINT [FK_movieScore_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieScore] CHECK CONSTRAINT [FK_movieScore_movie]
GO
/****** Object:  ForeignKey [FK_movieTag_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieTag]  WITH CHECK ADD  CONSTRAINT [FK_movieTag_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieTag] CHECK CONSTRAINT [FK_movieTag_movie]
GO
/****** Object:  ForeignKey [FK_movieTag_tag]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieTag]  WITH CHECK ADD  CONSTRAINT [FK_movieTag_tag] FOREIGN KEY([tagId])
REFERENCES [dbo].[tag] ([tagId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieTag] CHECK CONSTRAINT [FK_movieTag_tag]
GO
/****** Object:  ForeignKey [FK_movieType_movie]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieType]  WITH CHECK ADD  CONSTRAINT [FK_movieType_movie] FOREIGN KEY([mId])
REFERENCES [dbo].[movie] ([mId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieType] CHECK CONSTRAINT [FK_movieType_movie]
GO
/****** Object:  ForeignKey [FK_movieType_type]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[movieType]  WITH CHECK ADD  CONSTRAINT [FK_movieType_type] FOREIGN KEY([typeId])
REFERENCES [dbo].[type] ([typeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[movieType] CHECK CONSTRAINT [FK_movieType_type]
GO
/****** Object:  ForeignKey [FK_userinfo_user]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[userinfo]  WITH CHECK ADD  CONSTRAINT [FK_userinfo_user] FOREIGN KEY([uId])
REFERENCES [dbo].[user] ([uId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userinfo] CHECK CONSTRAINT [FK_userinfo_user]
GO
/****** Object:  ForeignKey [FK_userTag_tag]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[userTag]  WITH CHECK ADD  CONSTRAINT [FK_userTag_tag] FOREIGN KEY([tagId])
REFERENCES [dbo].[tag] ([tagId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userTag] CHECK CONSTRAINT [FK_userTag_tag]
GO
/****** Object:  ForeignKey [FK_userTag_user]    Script Date: 12/22/2018 19:30:25 ******/
ALTER TABLE [dbo].[userTag]  WITH CHECK ADD  CONSTRAINT [FK_userTag_user] FOREIGN KEY([uId])
REFERENCES [dbo].[user] ([uId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userTag] CHECK CONSTRAINT [FK_userTag_user]
GO
