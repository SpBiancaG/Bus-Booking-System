USE [BusBookingSystem]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(100,1) NOT NULL,
	[PaymentMode] [nchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nchar](100) NOT NULL,
	[PaymentStatus] [nchar](100) NOT NULL,
	[ReservationId] [nchar](100) NOT NULL
) ON [PRIMARY]
GO
