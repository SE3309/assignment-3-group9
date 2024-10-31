-- Creating Airline table
CREATE TABLE Airline (
    airlineID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    countryOfOrigin VARCHAR(50) NOT NULL
);
DESCRIBE Airline;

-- Creating Airport table
CREATE TABLE Airport (
    airportCode CHAR(3) PRIMARY KEY,
    airportName VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    timeZone VARCHAR(50) NOT NULL
);
DESCRIBE Airport;

-- Creating User table
CREATE TABLE User (
    userID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    points INT DEFAULT 0
);
DESCRIBE User;

-- Creating Hotel table
CREATE TABLE Hotel (
    hotelID INT PRIMARY KEY AUTO_INCREMENT,
    airportCode CHAR(3),
    hotelName VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50) NOT NULL,
    FOREIGN KEY (airportCode) REFERENCES Airport(airportCode)
);
DESCRIBE Hotel;

-- Creating Review table
CREATE TABLE Review (
    reviewID INT PRIMARY KEY AUTO_INCREMENT,
    userID INT NOT NULL,
    airlineID INT,
    hotelID INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    reviewComment TEXT,
    dateCreated DATE NOT NULL,
    FOREIGN KEY (userID) REFERENCES User(userID),
    FOREIGN KEY (airlineID) REFERENCES Airline(airlineID),
    FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID)
);
DESCRIBE Review;

-- Creating Booking table
CREATE TABLE Booking (
    bookingID INT PRIMARY KEY AUTO_INCREMENT,
    userID INT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    bookingStatus VARCHAR(50) NOT NULL,
    bookingDate DATE NOT NULL,
    FOREIGN KEY (userID) REFERENCES User(userID)
);
DESCRIBE Booking;

-- Creating Flight table
CREATE TABLE Flight (
    flightID INT PRIMARY KEY AUTO_INCREMENT,
    departureAirport CHAR(3) NOT NULL,
    arrivalAirport CHAR(3) NOT NULL,
    airlineID INT NOT NULL,
    departureTime DATETIME NOT NULL,
    arrivalTime DATETIME NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (departureAirport) REFERENCES Airport(airportCode),
    FOREIGN KEY (arrivalAirport) REFERENCES Airport(airportCode),
    FOREIGN KEY (airlineID) REFERENCES Airline(airlineID)
);
DESCRIBE Flight;


-- Creating HotelRoom table
CREATE TABLE HotelRoom (
    hotelID INT NOT NULL,
    roomType VARCHAR(50) NOT NULL,
    pricePerNight DECIMAL(10, 2) NOT NULL,
    availabilityStatus BOOLEAN NOT NULL,
    PRIMARY KEY (hotelID, roomType),
    FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID)
);
DESCRIBE HotelRoom;

-- Creating HotelBooking table
CREATE TABLE HotelBooking (
    hotelID INT NOT NULL,
    bookingID INT NOT NULL,
    checkInDate DATE NOT NULL,
    checkOutDate DATE NOT NULL,
    roomType VARCHAR(50) NOT NULL,
    PRIMARY KEY (hotelID, bookingID),
    FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID),
    FOREIGN KEY (bookingID) REFERENCES Booking(bookingID)
);
DESCRIBE HotelBooking;

-- Creating FlightBooking table
CREATE TABLE FlightBooking (
    flightID INT NOT NULL,
    bookingID INT NOT NULL,
    seatNumber VARCHAR(10) NOT NULL,
    baggageLimit INT NOT NULL,
    baggageUnit VARCHAR(10) NOT NULL,
    mealPreference VARCHAR(50),
    PRIMARY KEY (flightID, bookingID),
    FOREIGN KEY (flightID) REFERENCES Flight(flightID),
    FOREIGN KEY (bookingID) REFERENCES Booking(bookingID)
);
DESCRIBE FlightBooking;

-- Creating CardDetails table
CREATE TABLE CardDetails (
    cardNumber CHAR(16) PRIMARY KEY,
    cardCVV CHAR(3) NOT NULL,
    cardExpiryDate DATE NOT NULL,
    paymentMethod VARCHAR(50) NOT NULL
);
DESCRIBE CardDetails;

-- Creating Payment table
CREATE TABLE Payment (
    bookingID INT PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL,
    cardNumber CHAR(16) NOT NULL,
    paymentDate DATE NOT NULL,
    FOREIGN KEY (bookingID) REFERENCES Booking(bookingID),
    FOREIGN KEY (cardNumber) REFERENCES CardDetails(cardNumber)
);
DESCRIBE Payment;
