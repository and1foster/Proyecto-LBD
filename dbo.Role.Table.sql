USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[ID_Role] [tinyint] NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (1, N' Farmaceutico')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (2, N' Doctor ')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (3, N' Recepcionista ')
