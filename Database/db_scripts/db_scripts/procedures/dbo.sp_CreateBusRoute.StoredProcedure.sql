USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateBusRoute]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create
CREATE PROCEDURE [dbo].[sp_CreateBusRoute]
    @DepartureStation VARCHAR(100),
    @ArrivalStation VARCHAR(100),
    @Distance DECIMAL(10, 2),
    @EstimatedDuration INT,
    @ResultCode INT OUTPUT,
    @ResultMessage NVARCHAR(255) OUTPUT
AS
BEGIN
    BEGIN TRY
        INSERT INTO BusRoutes (DepartureStation, ArrivalStation, Distance, EstimatedDuration)
        VALUES (@DepartureStation, @ArrivalStation, @Distance, @EstimatedDuration);

        SET @ResultCode = 1;  -- 1 for success
        SET @ResultMessage = 'Bus route created successfully';
    END TRY
    BEGIN CATCH
        SET @ResultCode = 0;  -- 0 for failure
        SET @ResultMessage = ERROR_MESSAGE();
    END CATCH
END;

-- Read
-- Similar output parameters for other CRUD operations
GO
