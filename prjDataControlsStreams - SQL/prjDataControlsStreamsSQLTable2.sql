USE [Alpha_Music]
GO

/****** Object:  Table [dbo].[ContactImage]    Script Date: 4/30/2019 10:03:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ContactImage](
	[Id] [nchar](50) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Size] [int] NOT NULL,
	[ImageData] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_ContactImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

