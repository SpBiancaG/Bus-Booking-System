USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBusSchedules]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Read
CREATE PROCEDURE [dbo].[sp_GetBusSchedules]
AS
BEGIN
    SELECT * FROM BusSchedules;
END;
GO
