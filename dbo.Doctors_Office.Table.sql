USE [CONSULTORIO_LSTI]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctors_Office_Schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctors_Office]'))
ALTER TABLE [dbo].[Doctors_Office] DROP CONSTRAINT [FK_Doctors_Office_Schedule]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctors_Office_Booth]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctors_Office]'))
ALTER TABLE [dbo].[Doctors_Office] DROP CONSTRAINT [FK_Doctors_Office_Booth]
GO
/****** Object:  Table [dbo].[Doctors_Office]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctors_Office]') AND type in (N'U'))
DROP TABLE [dbo].[Doctors_Office]
GO
/****** Object:  Table [dbo].[Doctors_Office]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctors_Office]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctors_Office](
	[ID_Doctors_Office] [int] NOT NULL,
	[ID_Branch] [int] NOT NULL,
	[ID_Booth] [int] NOT NULL,
	[ID_Schedule] [tinyint] NOT NULL,
	[ID_Employee] [int] NOT NULL,
 CONSTRAINT [PK_Doctors_Office] PRIMARY KEY CLUSTERED 
(
	[ID_Doctors_Office] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctors_Office_Booth]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctors_Office]'))
ALTER TABLE [dbo].[Doctors_Office]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Office_Booth] FOREIGN KEY([ID_Booth])
REFERENCES [dbo].[Booth] ([ID_Booth])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctors_Office_Booth]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctors_Office]'))
ALTER TABLE [dbo].[Doctors_Office] CHECK CONSTRAINT [FK_Doctors_Office_Booth]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctors_Office_Schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctors_Office]'))
ALTER TABLE [dbo].[Doctors_Office]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Office_Schedule] FOREIGN KEY([ID_Schedule])
REFERENCES [dbo].[Schedule] ([ID_Schedule])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctors_Office_Schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctors_Office]'))
ALTER TABLE [dbo].[Doctors_Office] CHECK CONSTRAINT [FK_Doctors_Office_Schedule]
GO
