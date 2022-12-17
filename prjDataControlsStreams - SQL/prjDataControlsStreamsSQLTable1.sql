USE [Alpha_Music]
GO

/****** Object:  Table [dbo].[AuditionContact]    Script Date: 4/30/2019 10:03:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AuditionContact](
	[Full_Name] [nchar](50) NOT NULL,
	[Occupation] [varchar](50) NOT NULL,
	[Phone_Number] [bigint] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Available_Date] [date] NOT NULL,
 CONSTRAINT [PK_AuditionContact] PRIMARY KEY CLUSTERED 
(
	[Full_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

