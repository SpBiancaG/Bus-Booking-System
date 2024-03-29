USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchBusSchedule]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SearchBusSchedule]
    @departureCity VARCHAR(255),
    @arrivalCity VARCHAR(255),
    @departureTime DATETIME,
	@numberOfPassangers VARCHAR(255)
AS
BEGIN
    -- Use SELECT statement with JOIN to fetch relevant data based on input parameters
    SELECT 
        bs.BusID,
        br.RouteID,
        b.Bus_Name,
		b.Capacity,
        br.DepartureCity,
        br.ArrivalCity,
		br.EstimatedDuration,
		bs.DeparterDate,
        bs.DepartureTime,
        bs.ArrivalTime
    FROM
        BusSchedules bs
    INNER JOIN
        BusRoutes br ON bs.RouteID = br.RouteID
    INNER JOIN
        Buses b ON bs.BusID = b.BusID
    WHERE
        br.DepartureCity = @departureCity
        AND br.ArrivalCity = @arrivalCity
        AND bs.DepartureTime >= @departureTime;
END;
GO
