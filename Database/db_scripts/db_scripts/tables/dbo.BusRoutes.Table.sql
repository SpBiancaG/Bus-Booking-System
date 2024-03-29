USE [BusBookingSystem]
GO
/****** Object:  Table [dbo].[BusRoutes]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusRoutes](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[DepartureCity] [varchar](100) NOT NULL,
	[ArrivalCity] [varchar](100) NOT NULL,
	[Distance] [decimal](10, 2) NULL,
	[EstimatedDuration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BusRoutes] ON 

INSERT [dbo].[BusRoutes] ([RouteID], [DepartureCity], [ArrivalCity], [Distance], [EstimatedDuration]) VALUES (1, N'Berlin', N'Munich', CAST(80.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[BusRoutes] OFF
GO
