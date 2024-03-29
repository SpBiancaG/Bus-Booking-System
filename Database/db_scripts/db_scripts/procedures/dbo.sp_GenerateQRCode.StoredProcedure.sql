USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_GenerateQRCode]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GenerateQRCode]
    @ReservationID INT,
	@QRCodeData NVARCHAR(255),
    @ResultCode INT OUTPUT,
    @ResultMessage NVARCHAR(255) OUTPUT
AS
BEGIN
    BEGIN TRY
       
        DECLARE @QRCode VARCHAR(MAX) = @QRCodeData; 

        INSERT INTO QRCodes (ReservationID, QRCodeData)
        VALUES (@ReservationID, @QRCodeData);

        SET @ResultCode = 1;  -- 1 for success
        SET @ResultMessage = 'QR code generated successfully';
    END TRY
    BEGIN CATCH
        SET @ResultCode = 0;  -- 0 for failure
        SET @ResultMessage = ERROR_MESSAGE();
    END CATCH
END;
GO
