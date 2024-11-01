

-- find average booking cost per user for users with more than 3 bookings
SELECT userID, AVG(cost) AS average_cost
FROM Booking
GROUP BY userID
HAVING COUNT(bookingID) > 3;

-- count number of reviews for each hotel, only showing hotels with more than 5 reviews
SELECT hotelID, COUNT(reviewID) AS review_count
FROM Review
GROUP BY hotelID
HAVING review_count > 5;

-- Basic flight search on departure/arrivial airport and date
SELECT flightID, departureAirport, arrivalAirport, departureTime, arrivalTime, price
FROM Flight
WHERE departureAirport = 'AEX' AND arrivalAirport = 'GBT'
AND DATE(departureTime) = '2024-10-03'

-- Get all completed bookings for a single user as well as flight/hotel information for that booking
SELECT Booking.bookingID, Booking.bookingDate, Booking.cost, User.userID, User.name, User.email,
       Flight.flightID, Flight.departureTime, Flight.arrivalTime,
       Hotel.hotelID, Hotel.hotelName, HotelBooking.checkInDate, HotelBooking.checkOutDate
FROM Booking
JOIN User ON Booking.userID = User.userID
LEFT JOIN FlightBooking ON Booking.bookingID = FlightBooking.bookingID
LEFT JOIN Flight ON FlightBooking.flightID = Flight.flightID
LEFT JOIN HotelBooking ON Booking.bookingID = HotelBooking.bookingID
LEFT JOIN Hotel ON HotelBooking.hotelID = Hotel.hotelID
WHERE Booking.bookingStatus = 'completed'
AND User.userID = 2973

-- Get all hotels with an average rating of at least 4 stars
SELECT Hotel.hotelID, Hotel.hotelName, Hotel.city, AVG(Review.rating) AS average_rating
FROM Hotel
JOIN Review ON Hotel.hotelID = Review.hotelID
GROUP BY Hotel.hotelID, Hotel.hotelName
HAVING average_rating >= 4
ORDER BY average_rating DESC

-- Find available hotels in a specific location and date range
SELECT hotelID, hotelName, city
FROM Hotel
WHERE hotelID IN (
    SELECT HotelRoom.hotelID
    FROM HotelRoom
    WHERE availabilityStatus = TRUE
)
AND city = 'Nicoleborough'

-- Get all users with more than a specified amount of bookings (helps find frequent users)
SELECT userID, COUNT(bookingID) AS total_bookings
FROM Booking
GROUP BY userID
HAVING total_bookings >= 8
ORDER BY total_bookings DESC

-- Get number of points for a specific user
SELECT points
FROM User
WHERE User.userID = 123;

-- Get total revenue and average rating from each hotel
SELECT Hotel.hotelID, Hotel.hotelName, Hotel.city,
       COALESCE(SUM(Booking.cost), 0) AS total_revenue,
       COALESCE(AVG(Review.rating), 'No reviews') AS average_rating
FROM Hotel
LEFT JOIN HotelBooking ON Hotel.hotelID = HotelBooking.hotelID
LEFT JOIN Booking ON HotelBooking.bookingID = Booking.bookingID
LEFT JOIN Review ON Hotel.hotelID = Review.hotelID
GROUP BY Hotel.hotelID, Hotel.hotelName, Hotel.city
ORDER BY total_revenue DESC

-- Get top 5 most frequently booked flights and the users who booked them
SELECT Flight.flightID, Flight.departureAirport, Flight.arrivalAirport, 
       Flight.departureTime, Flight.arrivalTime, COUNT(FlightBooking.bookingID) AS total_bookings,
       GROUP_CONCAT(DISTINCT User.name ORDER BY User.name ASC SEPARATOR ', ') AS users
FROM Flight
JOIN FlightBooking ON Flight.flightID = FlightBooking.flightID
JOIN Booking ON FlightBooking.bookingID = Booking.bookingID
JOIN User ON Booking.userID = User.userID
GROUP BY Flight.flightID
ORDER BY total_bookings DESC
LIMIT 5;