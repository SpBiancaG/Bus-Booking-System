USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBusSchedule]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
CREATE PROCEDURE [dbo].[sp_UpdateBusSchedule]
    @ScheduleID INT,
    @BusID INT,
    @RouteID INT,
    @DepartureTime DATETIME,
    @ArrivalTime DATETIME,
    @AvailableSeats INT
AS
BEGIN
    UPDATE BusSchedules
    SET BusID = @BusID,
        RouteID = @RouteID,
        DepartureTime = @DepartureTime,
        ArrivalTime = @ArrivalTime,
        AvailableSeats = @AvailableSeats
    WHERE ScheduleID = @ScheduleID;
END;
GO
