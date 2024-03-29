USE [BusBookingSystem]
GO
/****** Object:  Table [dbo].[BusSchedules]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusSchedules](
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[BusID] [int] NULL,
	[RouteID] [int] NULL,
	[DeparterDate] [datetime] NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
	[AvailableSeats] [int] NULL,
 CONSTRAINT [PK__BusSched__9C8A5B69430B9F5A] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BusSchedules] ON 

INSERT [dbo].[BusSchedules] ([ScheduleID], [BusID], [RouteID], [DeparterDate], [DepartureTime], [ArrivalTime], [AvailableSeats]) VALUES (1, 1, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T09:00:00.000' AS DateTime), CAST(N'1900-01-01T12:00:00.000' AS DateTime), 64)
SET IDENTITY_INSERT [dbo].[BusSchedules] OFF
GO
