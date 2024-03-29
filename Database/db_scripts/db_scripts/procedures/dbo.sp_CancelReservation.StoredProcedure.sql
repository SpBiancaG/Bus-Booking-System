USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelReservation]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CancelReservation]
    @ReservationID INT
AS
BEGIN
    UPDATE Reservations
    SET IsCancelled = 1
    WHERE ReservationID = @ReservationID;
END;
GO
