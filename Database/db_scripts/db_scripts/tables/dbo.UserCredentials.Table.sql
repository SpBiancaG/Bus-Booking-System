USE [BusBookingSystem]
GO
/****** Object:  Table [dbo].[UserCredentials]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCredentials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PasswordHash] [varchar](255) NOT NULL,
	[Salt] [varchar](255) NOT NULL,
 CONSTRAINT [PK_UserCredentials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserCredentials] ON 

INSERT [dbo].[UserCredentials] ([Id], [UserID], [PasswordHash], [Salt]) VALUES (1, 1005, N'$2b$10$oupL63MiA6U3johP0skhruZ7Yoy8qoSjnOZ4SiWJZKn1diSgKreda', N'$2b$10$oupL63MiA6U3johP0skhru')
INSERT [dbo].[UserCredentials] ([Id], [UserID], [PasswordHash], [Salt]) VALUES (2, 1, N'hashedPassword1', N'salt1')
INSERT [dbo].[UserCredentials] ([Id], [UserID], [PasswordHash], [Salt]) VALUES (3, 2, N'hashedPassword2', N'salt2')
SET IDENTITY_INSERT [dbo].[UserCredentials] OFF
GO
