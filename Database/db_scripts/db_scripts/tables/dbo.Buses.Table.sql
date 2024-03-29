USE [BusBookingSystem]
GO
/****** Object:  Table [dbo].[Buses]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buses](
	[BusID] [int] IDENTITY(1,1) NOT NULL,
	[Bus_Name] [varchar](100) NOT NULL,
	[Capacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Buses] ON 

INSERT [dbo].[Buses] ([BusID], [Bus_Name], [Capacity]) VALUES (1, N'Düsseldorf', 64)
INSERT [dbo].[Buses] ([BusID], [Bus_Name], [Capacity]) VALUES (2, N'Genoa ', 60)
SET IDENTITY_INSERT [dbo].[Buses] OFF
GO
