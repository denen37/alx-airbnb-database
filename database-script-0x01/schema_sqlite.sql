CREATE TABLE User (
    user_id TEXT PRIMARY KEY, -- Use TEXT to store UUIDs
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    phone_number TEXT,
    role TEXT NOT NULL CHECK(role IN ('guest', 'host', 'admin')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Location (
    location_id TEXT PRIMARY KEY, -- UUID → TEXT
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    country TEXT NOT NULL,
    zipcode TEXT NOT NULL
);


PRAGMA foreign_keys = ON;

CREATE TABLE Property (
    property_id TEXT PRIMARY KEY, -- UUID → TEXT
    host_id TEXT NOT NULL,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    location_id TEXT NOT NULL,
    price_per_night REAL NOT NULL, -- DECIMAL → REAL (SQLite uses REAL for floating-point numbers)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (location_id) REFERENCES Location(location_id) ON DELETE CASCADE
);


CREATE TABLE Booking (
    booking_id TEXT PRIMARY KEY, -- UUID → TEXT
    property_id TEXT NOT NULL,
    user_id TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price REAL NOT NULL, -- DECIMAL → REAL
    status TEXT NOT NULL CHECK(status IN ('pending', 'confirmed', 'canceled')), -- ENUM → CHECK
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);


CREATE TABLE PaymentMethod (
    payment_method_id TEXT PRIMARY KEY, -- UUID → TEXT
    method_name TEXT UNIQUE NOT NULL -- VARCHAR → TEXT
);


CREATE TABLE Payment (
    payment_id TEXT PRIMARY KEY, -- UUID → TEXT
    booking_id TEXT NOT NULL,
    amount REAL NOT NULL, -- DECIMAL(10, 2) → REAL
    payment_method_id TEXT NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id) ON DELETE CASCADE,
    FOREIGN KEY (payment_method_id) REFERENCES PaymentMethod(payment_method_id) ON DELETE CASCADE
);


CREATE TABLE Review (
    review_id TEXT PRIMARY KEY, -- UUID → TEXT
    property_id TEXT NOT NULL,
    user_id TEXT NOT NULL,
    rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);

CREATE TABLE Message (
    message_id TEXT PRIMARY KEY, -- UUID → TEXT
    sender_id TEXT NOT NULL,
    recipient_id TEXT NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (recipient_id) REFERENCES User(user_id) ON DELETE CASCADE
);

