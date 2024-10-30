USE [Ding]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2024/10/30 下午 07:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [varchar](200) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[Gender] [bit] NOT NULL,
	[Region] [nvarchar](20) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'dexedeure@gmail.com', N'asbjcekr', N'Up', 29, 0, N'上海', N'上海')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'exeddeure@gmail.com', N'asbjcekr', N'North', 29, 0, N'北京', N'北京')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'exedeure@gmail.com', N'asbjcekr', N'Up', 29, 0, N'上海', N'上海')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'exeeure@gmail.com', N'asbjcekr', N'West', 29, 0, N'廣西', N'桂林')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'user@example.com', N'strin44g', N'string', 0, 1, N'廣東', N'廣東')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'xeeure@gmail.com', N'asbjcekr', N'West', 29, 0, N'廣西', N'南寧')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'xuere@gmail.com', N'asbjcekr', N'Foor', 29, 0, N'福建', N'福州')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'xujeeere@gmail.com', N'asbjcekr', N'Mina', 29, 1, N'廣東', N'珠海')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'xujere@gmail.com', N'asbjcekr', N'East', 29, 0, N'廣東', N'廣東')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'xujeree@gmail.com', N'asbjcekr', N'East', 30, 1, N'廣東', N'深圳')
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Age], [Gender], [Region], [City]) VALUES (N'xure@gmail.com', N'asbjcekr', N'Foor', 29, 0, N'福建', N'廈門')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年齡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性別(0:女、1:男)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Region'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'City'
GO
