USE [Alpha_Music]
GO
/****** Object:  Table [dbo].[AuditionContact]    Script Date: 4/24/2019 8:25:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditionContact](
	[Full_Name] [nchar](50) NOT NULL,
	[Occupation] [varchar](50) NOT NULL,
	[Phone_Number] [bigint] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Available_Date] [date] NOT NULL
) ON [PRIMARY]
GO
