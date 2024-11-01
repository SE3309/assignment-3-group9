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
    for _ in range(NUM_USERS):
        name = fake.name()
        email = fake.unique.email()
        password = fake.password()
        points = random.randint(0, 100)
        users.append((name, email, password, points))
    cursor.executemany(
        "INSERT INTO User (name, email, password, points) VALUES (%s, %s, %s, %s)", users)
    db.commit()
    print("Users loaded.")


def generate_card_details():
    card_numbers = []
    cards = []
    for _ in range(NUM_CARD_DETAILS):
        card_number = random.randint(1000000000000000, 9999999999999999)
        card_numbers.append(card_number)  # Collect card numbers for reuse
        cvv = random.randint(100, 999)
        expiry = fake.date_between(start_date="today", end_date="+2y")
        payment_method = random.choice(["Visa", "MasterCard", "Amex"])
        cards.append((card_number, cvv, expiry, payment_method))
    cursor.executemany(
        "INSERT INTO CardDetails (cardNumber, cardCVV, cardExpiryDate, paymentMethod) VALUES (%s, %s, %s, %s)", cards)
    db.commit()
    print("Card details loaded.")
    return card_numbers


def generate_bookings():
    bookings = []
    for _ in range(NUM_BOOKINGS):
        user_id = random.randint(1, NUM_USERS)
        cost = round(random.uniform(100, 1000), 2)
        status = random.choice(["confirmed", "cancelled", "completed"])
        date = fake.date_this_year()
        bookings.append((user_id, cost, status, date))
    cursor.executemany(
        "INSERT INTO Booking (userID, cost, bookingStatus, bookingDate) VALUES (%s, %s, %s, %s)", bookings)
    db.commit()
    print("Bookings loaded.")


def generate_payments(card_numbers):
    payments = []
    for booking_id in range(1, NUM_BOOKINGS + 1):
        amount = round(random.uniform(50, 500), 2)
        card_number = random.choice(card_numbers)  # Use existing card numbers
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
    airport_codes = []
    airports = []
    countries = [
        "United States", "Canada", "Brazil", "Australia", "United Kingdom", "Germany",
        "France", "Italy", "India", "Japan", "South Korea", "China", "Mexico", "South Africa"
    ]
    unique_airport_names = set()

    for _ in range(NUM_AIRPORTS):
        code = fake.unique.lexify(text='???').upper()
        airport_codes.append(code)

        # ensure name isn't repeated
        name = fake.city()
        while name in unique_airport_names:
            name = fake.city()
        unique_airport_names.add(name)

        city = name
        country = random.choice(countries)
        timezone = fake.timezone()
        airports.append((code, name, city, country, timezone))
    cursor.executemany(
        "INSERT INTO Airport (airportCode, airportName, city, country, timeZone) VALUES (%s, %s, %s, %s, %s)", airports)
    db.commit()
    print("Airports loaded.")
    return airport_codes


def generate_hotels(airport_codes):
    hotels = []
    for _ in range(NUM_HOTELS):
        airport_code = random.choice(airport_codes)
        name = fake.company()
        city = fake.city()
        hotels.append((airport_code, name, city))
    cursor.executemany(
        "INSERT INTO Hotel (airportCode, hotelName, city) VALUES (%s, %s, %s)", hotels)
    db.commit()
    print("Hotels loaded.")


def generate_hotel_rooms():
    rooms = []
    for hotel_id in range(1, NUM_HOTELS + 1):
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
    used_combinations = set()

    for _ in range(NUM_HOTEL_BOOKINGS):
        # generate a unique (hotel_id, booking_id) pair
        while True:
            hotel_id = random.randint(1, NUM_HOTELS)
            booking_id = random.randint(1, NUM_BOOKINGS)
            if (hotel_id, booking_id) not in used_combinations:
                used_combinations.add((hotel_id, booking_id))
                break

        check_in = fake.date_this_year()
        check_out = fake.date_between_dates(date_start=check_in)
        room_type = random.choice(["Single", "Double", "Suite"])
        hotel_bookings.append(
            (hotel_id, booking_id, check_in, check_out, room_type))
    cursor.executemany(
        "INSERT INTO HotelBooking (hotelID, bookingID, checkInDate, checkOutDate, roomType) VALUES (%s, %s, %s, %s, %s)", hotel_bookings)
    db.commit()
    print("Hotel bookings loaded.")


def generate_flights(airport_codes):
    flights = []
    for _ in range(NUM_FLIGHTS):
        dep_airport = ''
        arr_airport = ''
        # ensure dep and arr airport are not the same
        while (dep_airport == arr_airport):
            dep_airport = random.choice(airport_codes)
            arr_airport = random.choice(airport_codes)

        airline_id = random.randint(1, NUM_AIRLINES)
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
    used_combinations = set()

    for _ in range(NUM_FLIGHT_BOOKINGS):
        while True:
            flight_id = random.randint(1, NUM_FLIGHTS)
            booking_id = random.randint(1, NUM_BOOKINGS)
            if (flight_id, booking_id) not in used_combinations:
                used_combinations.add((flight_id, booking_id))
                break

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
    for _ in range(NUM_REVIEWS):
        user_id = random.randint(1, NUM_USERS)
        airline_id = random.randint(1, NUM_AIRLINES)
        hotel_id = random.randint(1, NUM_HOTELS)
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
# card_numbers = generate_card_details()
# generate_bookings()
# generate_payments(card_numbers)
# airport_codes = generate_airports()
# generate_airlines()
# generate_hotels(airport_codes)
# generate_hotel_rooms()
# generate_hotel_bookings()
# generate_flights(airport_codes)
# generate_flight_bookings()
# generate_reviews()

# Close connection
cursor.close()
db.close()
