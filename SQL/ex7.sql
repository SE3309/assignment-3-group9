CREATE VIEW UserBookingSummary AS
SELECT User.userID, User.name, User.email, Booking.bookingID, Booking.cost, Booking.bookingStatus, Booking.bookingDate
FROM User
JOIN Booking ON User.userID = Booking.userID;

SELECT * FROM UserBookingSummary WHERE bookingStatus = 'completed' LIMIT 5;

INSERT INTO UserBookingSummary (userID, name, email, bookingID, cost, bookingStatus)
VALUES (5, 'Alice Brown', 'alice@example.com', 110, 300.00, 'confirmed');

CREATE VIEW HotelAvailability AS
SELECT Hotel.hotelID, Hotel.hotelName, Hotel.city, HotelRoom.roomType, HotelRoom.pricePerNight, HotelRoom.availabilityStatus
FROM Hotel
JOIN HotelRoom ON Hotel.hotelID = HotelRoom.hotelID
WHERE HotelRoom.availabilityStatus = TRUE;

SELECT * FROM HotelAvailability WHERE city = 'South Joanna';

INSERT INTO HotelAvailability (hotelID, hotelName, city, roomType, pricePerNight, availabilityStatus)
VALUES (10, 'Beachside Inn', 'Los Angeles', 'Suite', 250.00, TRUE);