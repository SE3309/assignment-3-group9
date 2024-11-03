
-- Booking/Payment Process

-- Step 1: Insert a new booking
INSERT INTO Booking (userID, cost, bookingStatus, bookingDate)
VALUES (567, 250.00, 'completed', CURDATE()); 

-- Step 2: Retrieve the newly created bookingID
SET @newBookingID = LAST_INSERT_ID();

-- Step 3: Insert card details into CardDetails if not already present
INSERT IGNORE INTO CardDetails (cardNumber, cardCVV, cardExpiryDate, paymentMethod)
VALUES ('1234567812345678', '123', CURDATE() + INTERVAL 1 YEAR, 'Visa');

-- Step 4: Insert a payment for the new booking, using the newly generated bookingID and card details
INSERT INTO Payment (bookingID, amount, cardNumber, paymentDate)
VALUES (@newBookingID, 250.00, '1234567812345678', CURDATE());


-- Update availability status of all rooms to false for hotels fully booked (no availability in the specified date range)
WITH FullyBookedHotels AS (
    SELECT hotelID
    FROM HotelBooking
    WHERE checkInDate <= CURDATE() AND checkOutDate >= CURDATE()
    GROUP BY hotelID
    HAVING COUNT(DISTINCT roomType) >= (
        SELECT COUNT(DISTINCT roomType) 
        FROM HotelRoom 
        WHERE HotelRoom.hotelID = HotelBooking.hotelID
    )
)
UPDATE HotelRoom
SET availabilityStatus = FALSE
WHERE hotelID IN (SELECT hotelID FROM FullyBookedHotels);

-- Delete reviews where rating is less than 3 stars and airline has less than 5 reviews
WITH LessThanFiveReviews AS (
    SELECT airlineID
    FROM Review
    GROUP BY airlineID
    HAVING COUNT(reviewID) < 5
)
DELETE FROM Review
WHERE rating < 3
AND airlineID IN (SELECT airlineID FROM LessThanFiveReviews);

