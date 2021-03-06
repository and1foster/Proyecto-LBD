USE [CONSULTORIO_LSTI]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Specialty]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] DROP CONSTRAINT [FK_Doctor_Specialty]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] DROP CONSTRAINT [FK_Doctor_Employee]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
DROP TABLE [dbo].[Doctor]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctor](
	[ID_Employee] [int] NOT NULL,
	[ID_Doctor] [int] NOT NULL,
	[ID_Specialty] [tinyint] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[ID_Doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Employee] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employee] ([ID_Employee])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Employee]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Specialty]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Specialty] FOREIGN KEY([ID_Specialty])
REFERENCES [dbo].[Specialty] ([ID_Specialty])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Specialty]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Specialty]
GO
