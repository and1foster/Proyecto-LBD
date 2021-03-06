USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Expedient]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expedient]') AND type in (N'U'))
DROP TABLE [dbo].[Expedient]
GO
/****** Object:  Table [dbo].[Expedient]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expedient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expedient](
	[ID_Expedient] [int] NOT NULL,
	[Expedient] [text] NOT NULL,
 CONSTRAINT [PK_Expedient] PRIMARY KEY CLUSTERED 
(
	[ID_Expedient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
