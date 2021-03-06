USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]') AND type in (N'U'))
DROP TABLE [dbo].[Schedule]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Schedule](
	[ID_Schedule] [tinyint] NOT NULL,
	[Schedule] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[ID_Schedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (1, N' 1:00 a.m - 9:00 a.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (2, N' 9:00 a.m - 5:00 p.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (3, N' 5:00 p.m - 1:00 a.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (4, N' 5:00 a.m - 1:00 p.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (5, N' 1:00 p.m - 9:00 p.m')
INSERT [dbo].[Schedule] ([ID_Schedule], [Schedule]) VALUES (6, N' 9:00 p.m - 5:00 a.m')
