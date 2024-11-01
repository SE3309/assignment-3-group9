import mysql.connector
from faker import Faker
from dotenv import load_dotenv
import os
import random


# Load environment variables
load_dotenv()

# Database connection
db = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME")
)

cursor = db.cursor()
fake = Faker()

# Sample data sizes
NUM_USERS = 3000
NUM_BOOKINGS = 3000
NUM_CARD_DETAILS = 1000
NUM_PAYMENTS = 3000
NUM_HOTELS = 100
NUM_HOTEL_BOOKINGS = 500
NUM_AIRLINES = 50
NUM_AIRPORTS = 100
NUM_FLIGHTS = 500
NUM_REVIEWS = 1000
NUM_HOTEL_ROOMS = 500
NUM_FLIGHT_BOOKINGS = 1000


def generate_users():
    users = []
    # get existing emails
    cursor.execute("SELECT email FROM User")
    existing_emails = set(row[0] for row in cursor.fetchall())

    for _ in range(NUM_USERS):
        name = fake.name()
        email = fake.unique.email()
        while email in existing_emails:
            email = fake.unique.email()
        existing_emails.add(email)
        password = fake.password()
        points = random.randint(0, 100)
        users.append((name, email, password, points))
    cursor.executemany(
        "INSERT INTO User (name, email, password, points) VALUES (%s, %s, %s, %s)", users)
    db.commit()
    print("Users loaded.")


def generate_card_details():
    cards = []
    cursor.execute("SELECT cardNumber FROM CardDetails")
    existing_card_numbers = set(row[0] for row in cursor.fetchall())

    for _ in range(NUM_CARD_DETAILS):
        card_number = random.randint(1000000000000000, 9999999999999999)
        while card_number in existing_card_numbers:
            card_number = random.randint(1000000000000000, 9999999999999999)
        existing_card_numbers.add(card_number)
        cvv = random.randint(100, 999)
        expiry = fake.date_between(start_date="today", end_date="+2y")
        payment_method = random.choice(["Visa", "MasterCard", "Amex"])
        cards.append((card_number, cvv, expiry, payment_method))
    cursor.executemany(
        "INSERT INTO CardDetails (cardNumber, cardCVV, cardExpiryDate, paymentMethod) VALUES (%s, %s, %s, %s)", cards)
    db.commit()
    print("Card details loaded.")


def generate_bookings():
    bookings = []
    cursor.execute("SELECT userID FROM User")
    user_ids = [row[0] for row in cursor.fetchall()]

    for _ in range(NUM_BOOKINGS):
        user_id = random.choice(user_ids)
        cost = round(random.uniform(100, 1000), 2)
        status = random.choice(["confirmed", "cancelled", "completed"])
        date = fake.date_this_year()
        bookings.append((user_id, cost, status, date))
    cursor.executemany(
        "INSERT INTO Booking (userID, cost, bookingStatus, bookingDate) VALUES (%s, %s, %s, %s)", bookings)
    db.commit()
    print("Bookings loaded.")


def generate_payments():
    payments = []
    cursor.execute("SELECT bookingID FROM Booking")
    booking_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT cardNumber FROM CardDetails")
    card_numbers = [row[0] for row in cursor.fetchall()]

    cursor.execute("SELECT bookingID FROM Payment")
    used_booking_ids = set(row[0] for row in cursor.fetchall())

    for _ in range(1, NUM_BOOKINGS + 1):
        booking_id = random.choice(booking_ids)
        while booking_id in used_booking_ids:
            booking_id = random.choice(booking_ids)
        used_booking_ids.add(booking_id)

        amount = round(random.uniform(50, 500), 2)
        card_number = random.choice(card_numbers)
        date = fake.date_this_year()
        payments.append((booking_id, amount, card_number, date))
    cursor.executemany(
        "INSERT INTO Payment (bookingID, amount, cardNumber, paymentDate) VALUES (%s, %s, %s, %s)", payments)
    db.commit()
    print("Payments loaded.")


def generate_airlines():
    airlines = []
    countries = [
        "United States", "Canada", "Brazil", "Australia", "United Kingdom", "Germany",
        "France", "Italy", "India", "Japan", "South Korea", "China", "Mexico", "South Africa"
    ]
    for _ in range(NUM_AIRLINES):
        name = fake.company()
        country = random.choice(countries)
        airlines.append((name, country))
    cursor.executemany(
        "INSERT INTO Airline (name, countryOfOrigin) VALUES (%s, %s)", airlines)
    db.commit()
    print("Airlines loaded.")


def generate_airports():
    airports = []
    countries = [
        "United States", "Canada", "Brazil", "Australia", "United Kingdom", "Germany",
        "France", "Italy", "India", "Japan", "South Korea", "China", "Mexico", "South Africa"
    ]
    cursor.execute("SELECT airportName FROM Airport")
    existing_airport_names = set(row[0] for row in cursor.fetchall())

    cursor.execute("SELECT airportCode FROM Airport")
    existing_airport_codes = set(row[0] for row in cursor.fetchall())

    for _ in range(NUM_AIRPORTS):
        code = fake.unique.lexify(text='???').upper()
        while code in existing_airport_codes:
            code = fake.unique.lexify(text='???').upper()
        existing_airport_codes.add(code)

        # ensure name isn't repeated
        name = fake.city()
        while name in existing_airport_names:
            name = fake.city()
        existing_airport_names.add(name)

        city = name
        country = random.choice(countries)
        timezone = fake.timezone()
        airports.append((code, name, city, country, timezone))
    cursor.executemany(
        "INSERT INTO Airport (airportCode, airportName, city, country, timeZone) VALUES (%s, %s, %s, %s, %s)", airports)
    db.commit()
    print("Airports loaded.")


def generate_hotels():
    hotels = []
    cursor.execute("SELECT airportCode FROM Airport")
    airport_codes = [row[0] for row in cursor.fetchall()]

    cursor.execute("SELECT hotelName FROM Hotel")
    used_hotel_names = set(row[0] for row in cursor.fetchall())

    for _ in range(NUM_HOTELS):
        airport_code = random.choice(airport_codes)
        name = fake.company()
        while name in used_hotel_names:
            name = fake.company()
        used_hotel_names.add(name)

        city = fake.city()
        hotels.append((airport_code, name, city))
    cursor.executemany(
        "INSERT INTO Hotel (airportCode, hotelName, city) VALUES (%s, %s, %s)", hotels)
    db.commit()
    print("Hotels loaded.")


def generate_hotel_rooms():
    rooms = []
    cursor.execute("SELECT hotelID FROM Hotel")
    hotel_ids = [row[0] for row in cursor.fetchall()]

    cursor.execute("SELECT hotelID FROM HotelRoom")
    used_hotel_ids = set(row[0] for row in cursor.fetchall())

    for _ in range(1, NUM_HOTELS + 1):
        hotel_id = random.choice(hotel_ids)
        while hotel_id in used_hotel_ids:
            hotel_id = random.choice(hotel_ids)
        used_hotel_ids.add(hotel_id)

        for room_type in ["Single", "Double", "Suite"]:
            price = round(random.uniform(50, 300), 2)
            status = random.choice([True, False])
            rooms.append((hotel_id, room_type, price, status))
    cursor.executemany(
        "INSERT INTO HotelRoom (hotelID, roomType, pricePerNight, availabilityStatus) VALUES (%s, %s, %s, %s)", rooms)
    db.commit()
    print("Hotel rooms loaded.")


def generate_hotel_bookings():
    hotel_bookings = []
    cursor.execute("SELECT hotelID FROM Hotel")
    hotel_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT bookingID FROM Booking")
    booking_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT hotelID, bookingID FROM HotelBooking")
    existing_pairs = set(cursor.fetchall())

    for _ in range(NUM_HOTEL_BOOKINGS):
        # generate a unique (hotel_id, booking_id) pair

        hotel_id = random.choice(hotel_ids)
        booking_id = random.choice(booking_ids)
        while (hotel_id, booking_id) in existing_pairs:
            hotel_id = random.choice(hotel_ids)
            booking_id = random.choice(booking_ids)

        existing_pairs.add((hotel_id, booking_id))

        check_in = fake.date_this_year()
        check_out = fake.date_between_dates(date_start=check_in)
        room_type = random.choice(["Single", "Double", "Suite"])
        hotel_bookings.append(
            (hotel_id, booking_id, check_in, check_out, room_type))
    cursor.executemany(
        "INSERT INTO HotelBooking (hotelID, bookingID, checkInDate, checkOutDate, roomType) VALUES (%s, %s, %s, %s, %s)", hotel_bookings)
    db.commit()
    print("Hotel bookings loaded.")


def generate_flights():
    flights = []
    cursor.execute("SELECT airportCode FROM Airport")
    airport_codes = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT airlineID FROM Airline")
    airline_ids = [row[0] for row in cursor.fetchall()]

    for _ in range(NUM_FLIGHTS):
        dep_airport = random.choice(airport_codes)
        arr_airport = random.choice(airport_codes)
        # ensure dep and arr airport are not the same
        while (dep_airport == arr_airport):
            dep_airport = random.choice(airport_codes)
            arr_airport = random.choice(airport_codes)

        airline_id = random.choice(airline_ids)
        dep_time = fake.date_time_this_year()
        arr_time = fake.date_time_between_dates(datetime_start=dep_time)
        price = round(random.uniform(50, 500), 2)
        flights.append((dep_airport, arr_airport, airline_id,
                       dep_time, arr_time, price))
    cursor.executemany(
        "INSERT INTO Flight (departureAirport, arrivalAirport, airlineID, departureTime, arrivalTime, price) VALUES (%s, %s, %s, %s, %s, %s)", flights)
    db.commit()
    print("Flights loaded.")


def generate_flight_bookings():
    flight_bookings = []
    cursor.execute("SELECT flightID FROM Flight")
    flight_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT bookingID FROM Booking")
    booking_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT flightID, bookingID FROM FlightBooking")
    existing_pairs = set(cursor.fetchall())

    for _ in range(NUM_FLIGHT_BOOKINGS):
        flight_id = random.choice(flight_ids)
        booking_id = random.choice(booking_ids)
        while (flight_id, booking_id) in existing_pairs:
            flight_id = random.choice(flight_ids)
            booking_id = random.choice(booking_ids)

        existing_pairs.add((flight_id, booking_id))

        seat = fake.bothify(text='??###')
        baggage_limit = random.randint(15, 30)
        unit = "kg"
        meal = random.choice(["Vegetarian", "Non-Vegetarian", "Vegan"])
        flight_bookings.append(
            (flight_id, booking_id, seat, baggage_limit, unit, meal))
    cursor.executemany(
        "INSERT INTO FlightBooking (flightID, bookingID, seatNumber, baggageLimit, baggageUnit, mealPreference) VALUES (%s, %s, %s, %s, %s, %s)", flight_bookings)
    db.commit()
    print("Flight bookings loaded.")


def generate_reviews():
    reviews = []
    cursor.execute("SELECT userID FROM User")
    user_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT airlineID FROM Airline")
    airline_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute("SELECT hotelID FROM Hotel")
    hotel_ids = [row[0] for row in cursor.fetchall()]

    for _ in range(NUM_REVIEWS):
        user_id = random.choice(user_ids)
        airline_id = random.choice(airline_ids)
        hotel_id = random.choice(hotel_ids)
        rating = random.randint(1, 5)
        comment = fake.sentence()
        date = fake.date_this_year()
        reviews.append((user_id, airline_id, hotel_id, rating, comment, date))
    cursor.executemany(
        "INSERT INTO Review (userID, airlineID, hotelID, rating, reviewComment, dateCreated) VALUES (%s, %s, %s, %s, %s, %s)", reviews)
    db.commit()
    print("Reviews loaded.")


# Generate data in proper sequence
# generate_users()
# generate_card_details()
# generate_bookings()
# generate_payments()
generate_airports()
generate_airlines()
generate_hotels()
generate_hotel_rooms()
generate_hotel_bookings()
generate_flights()
generate_flight_bookings()
generate_reviews()

# Close connection
cursor.close()
db.close()
