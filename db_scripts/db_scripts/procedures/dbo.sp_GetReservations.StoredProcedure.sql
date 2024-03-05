USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetReservations]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetReservations]
    @UserID INT
AS
BEGIN
    SELECT * FROM Reservations
    WHERE UserID = @UserID;
END;
GO
