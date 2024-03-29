USE [BusBookingSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateReservation]    Script Date: 3/3/2024 3:29:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CreateReservation]
	--@ReservationID INT,
    @UserID INT,
    @ScheduleID INT,
    @BookingDateTime NVARCHAR(255),
    @Bus_Id INT,
    @Charges INT,
    @CreatedBy NVARCHAR(255),
    @No_of_seats NVARCHAR(255),
    @Seat_No NVARCHAR(255),
    @Additional_luggage NVARCHAR(255),
    @Additional_luggage_details NVARCHAR(255)
AS
BEGIN
    INSERT INTO Reservations (
	--ReservationID,
    UserID,
    ScheduleID,
    BookingDateTime,
    Bus_Id,
    Charges,
    IsCancelled,
    CreatedDate,
    CreatedBy,
    Deleted,
    No_of_seats,
    Seat_No,
    Additional_luggage,
    Additional_luggage_details
)
    VALUES (
	@UserID, 
	@ScheduleID,
    @BookingDateTime,
    @Bus_Id,
    @Charges,
    0,
    GETDATE(),
    @CreatedBy,
    0,
    @No_of_seats,
    @Seat_No,
    @Additional_luggage,
    @Additional_luggage_details
	);
END;
GO
