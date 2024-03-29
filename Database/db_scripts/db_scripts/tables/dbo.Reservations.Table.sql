USE [BusBookingSystem]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ScheduleID] [int] NOT NULL,
	[BookingDateTime] [datetime] NOT NULL,
	[Bus_Id] [int] NOT NULL,
	[Charges] [nchar](10) NULL,
	[IsCancelled] [bit] NULL,
	[CreatedDate] [nchar](100) NULL,
	[CreatedBy] [nchar](100) NULL,
	[Deleted] [bit] NULL,
	[No_of_seats] [nchar](10) NULL,
	[Seat_No] [nchar](10) NULL,
	[Additional_luggage] [nchar](10) NULL,
	[Additional_luggage_details] [nchar](255) NULL,
 CONSTRAINT [PK__Reservat__B7EE5F045430630E] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([ReservationID], [UserID], [ScheduleID], [BookingDateTime], [Bus_Id], [Charges], [IsCancelled], [CreatedDate], [CreatedBy], [Deleted], [No_of_seats], [Seat_No], [Additional_luggage], [Additional_luggage_details]) VALUES (1, 1, 1, CAST(N'2024-03-04T00:00:00.000' AS DateTime), 1, N'1         ', 0, N'Mar  3 2024  2:47PM                                                                                 ', N'alina.r                                                                                             ', 0, N'2         ', N'2,3       ', N'no        ', N'bag                                                                                                                                                                                                                                                            ')
SET IDENTITY_INSERT [dbo].[Reservations] OFF
GO
ALTER TABLE [dbo].[Reservations] ADD  CONSTRAINT [DF__Reservati__Booki__2D27B809]  DEFAULT (getdate()) FOR [BookingDateTime]
GO
ALTER TABLE [dbo].[Reservations] ADD  CONSTRAINT [DF__Reservati__IsCan__2E1BDC42]  DEFAULT ((0)) FOR [IsCancelled]
GO
