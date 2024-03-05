USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteBusSchedule]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Delete
CREATE PROCEDURE [dbo].[sp_DeleteBusSchedule]
    @ScheduleID INT
AS
BEGIN
    DELETE FROM BusSchedules
    WHERE ScheduleID = @ScheduleID;
END;
GO
