USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateUser]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CreateUser]
    @Email VARCHAR(255),
    @PasswordHash VARCHAR(255),
    @Salt VARCHAR(255),
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @ResultCode INT OUTPUT,
    @ResultMessage NVARCHAR(255) OUTPUT
AS
BEGIN
    BEGIN TRY
	 DECLARE @UserID INT;
        INSERT INTO Users (Email, FirstName, LastName)
        VALUES (@Email, @FirstName, @LastName);

		 SET @UserID = SCOPE_IDENTITY();

		INSERT INTO UserCredentials(UserID, PasswordHash, Salt)
		VALUES (@UserID, @PasswordHash, @Salt);

        SET @ResultCode = 1;  -- 1 for success
        SET @ResultMessage = 'User created successfully';
    END TRY
    BEGIN CATCH
        SET @ResultCode = 0;  -- 0 for failure
        SET @ResultMessage = ERROR_MESSAGE();
    END CATCH
END;
GO
