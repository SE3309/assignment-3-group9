-- Get users with 100 points
SELECT userID, name, email, points
FROM User
WHERE points = 100;

-- Get completed bookings and user information for each completed booking
SELECT Booking.bookingID, User.name, User.email, Booking.cost, Booking.bookingDate
FROM Booking
JOIN User ON Booking.userID = User.userID
WHERE Booking.bookingStatus = 'completed';

-- List all flights that depart from airports with at least one hotel in the same country
SELECT flightID, departureAirport, arrivalAirport, departureTime, arrivalTime
FROM Flight
WHERE departureAirport IN (
    SELECT Airport.airportCode
    FROM Airport
    JOIN Hotel ON Airport.airportCode = Hotel.airportCode
);

-- find average booking cost per user for users with more than 3 bookings
SELECT userID, AVG(cost) AS average_cost
FROM Booking
GROUP BY userID
HAVING COUNT(bookingID) > 3;

-- Get all airlines that have received reviews
SELECT name, countryOfOrigin
FROM Airline
WHERE EXISTS (
    SELECT 1
    FROM Review
    WHERE Review.airlineID = Airline.airlineID
);

-- List hotel bookings with hotel name, city, and user details. Only include bookings where check-out date has passed
SELECT HotelBooking.bookingID, User.name AS user_name, User.email AS user_email, 
       Hotel.hotelName, Hotel.city, HotelBooking.checkInDate, HotelBooking.checkOutDate
FROM HotelBooking
JOIN Booking ON HotelBooking.bookingID = Booking.bookingID
JOIN User ON Booking.userID = User.userID
JOIN Hotel ON HotelBooking.hotelID = Hotel.hotelID
WHERE HotelBooking.checkOutDate < CURDATE();

-- count number of reviews for each hotel, only showing hotels with more than 5 reviews
SELECT hotelID, COUNT(reviewID) AS review_count
FROM Review
GROUP BY hotelID
HAVING review_count > 5;