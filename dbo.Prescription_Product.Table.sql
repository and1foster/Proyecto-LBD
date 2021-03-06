USE [CONSULTORIO_LSTI]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Prescription_Product_Prescription]') AND parent_object_id = OBJECT_ID(N'[dbo].[Prescription_Product]'))
ALTER TABLE [dbo].[Prescription_Product] DROP CONSTRAINT [FK_Prescription_Product_Prescription]
GO
/****** Object:  Table [dbo].[Prescription_Product]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription_Product]') AND type in (N'U'))
DROP TABLE [dbo].[Prescription_Product]
GO
/****** Object:  Table [dbo].[Prescription_Product]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prescription_Product](
	[ID_Prescription_Product] [int] NOT NULL,
	[ID_Prescription] [uniqueidentifier] NOT NULL,
	[ID_Product] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Prescription_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Prescription_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Prescription_Product_Prescription]') AND parent_object_id = OBJECT_ID(N'[dbo].[Prescription_Product]'))
ALTER TABLE [dbo].[Prescription_Product]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Product_Prescription] FOREIGN KEY([ID_Prescription])
REFERENCES [dbo].[Prescription] ([ID_Prescription])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Prescription_Product_Prescription]') AND parent_object_id = OBJECT_ID(N'[dbo].[Prescription_Product]'))
ALTER TABLE [dbo].[Prescription_Product] CHECK CONSTRAINT [FK_Prescription_Product_Prescription]
GO
