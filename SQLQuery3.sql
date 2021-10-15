CREATE DATABASE [EscuelaDeConexionespa]

USE [EscuelaDeConexionespa]
GO




CREATE TABLE [dbo].[Courses](
[CouserId] [int] IDENTITY(1,1) NOT NULL,
[Title] [nvarchar](max) NULL,
[Credits] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
[CouserId] ASC
)
) 




GO
CREATE TABLE [dbo].[Erollements](
[ErollementID] [int] IDENTITY(1,1) NOT NULL,
[CourseID] [int] NOT NULL,
[StudentID] [int] NOT NULL,
[Grade] [int] NULL,
 CONSTRAINT [PK_Erollements] PRIMARY KEY CLUSTERED 
(
[ErollementID] ASC
)
) 
GO


CREATE TABLE [dbo].[Students](
[StudentId] [int] IDENTITY(1,1) NOT NULL,
[LastName] [nvarchar](max) NULL,
[FirstMidName] [nvarchar](max) NULL,
[EnrrollmentsDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
[StudentId] ASC
)
) 
GO
/****** Object:  Index [IX_Erollements_CourseID]    Script Date: 10/9/2021 12:46:11 PM ******/


ALTER TABLE [dbo].[Erollements]  WITH CHECK ADD  CONSTRAINT [FK_Erollements_Courses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CouserId])


GO
ALTER TABLE [dbo].[Erollements] CHECK CONSTRAINT [FK_Erollements_Courses_CourseID]
GO
ALTER TABLE [dbo].[Erollements]  WITH CHECK ADD  CONSTRAINT [FK_Erollements_Students_StudentID] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentId])


GO

GO