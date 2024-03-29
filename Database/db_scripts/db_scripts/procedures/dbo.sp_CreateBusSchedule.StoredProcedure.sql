USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateBusSchedule]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CreateBusSchedule]
    @BusID INT,
    @RouteID INT,
    @DepartureTime DATETIME,
    @ArrivalTime DATETIME,
    @AvailableSeats INT
AS
BEGIN
    INSERT INTO BusSchedules (BusID, RouteID, DepartureTime, ArrivalTime, AvailableSeats)
    VALUES (@BusID, @RouteID, @DepartureTime, @ArrivalTime, @AvailableSeats);
END;
GO
