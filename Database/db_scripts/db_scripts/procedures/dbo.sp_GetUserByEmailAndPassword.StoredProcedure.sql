USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserByEmailAndPassword]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUserByEmailAndPassword]
    @Email VARCHAR(255),
    @PasswordHash VARCHAR(255),
    @ResultCode INT OUTPUT,
    @ResultMessage NVARCHAR(255) OUTPUT
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT * FROM Users WHERE Email = @Email AND PasswordHash = @PasswordHash)
        BEGIN
            SET @ResultCode = 1;  -- 1 for success
            SET @ResultMessage = 'Login successful';
        END
        ELSE
        BEGIN
            SET @ResultCode = 0;  -- 0 for failure
            SET @ResultMessage = 'Invalid email or password';
        END
    END TRY
    BEGIN CATCH
        SET @ResultCode = 0;  -- 0 for failure
        SET @ResultMessage = ERROR_MESSAGE();
    END CATCH
END;
GO
