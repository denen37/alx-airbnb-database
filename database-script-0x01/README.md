    This schema is written in MySQL. It is used to create a database for airbnb clone. It has tables for users, properties, payments, bookings, reviews, and messages. The tables are linked together through foreign keys. The schema includes the following tables.

    1. User: This table stores information about the users of the airbnb clone. It includes columns for the user's id, name, email, password, phone number, and profile picture.

    2. Property: This table stores information about the properties available for rent on the airbnb clone. It includes columns for the property's id, name, description, location, price per night, and image.

    3. Location: This table stores information about the locations of the properties. It includes columns for the location's id, city, state, and country.

    4. Payment: This table stores information about the payments made by users for renting properties. It includes columns for the payment's id, user id, property id, amount, and payment date.

    5. PaymentMethod: This table stores information about the payment methods used by users for making payments. It includes columns for the payment method's id, user id, payment method type, and payment method details.

    6. Booking: This table stores information about the bookings made by users for renting properties. It includes columns for the booking's id, user id, property id, start date, end date, and number of guests.

    7. Review: This table stores information about the reviews left by users for properties they have rented. It includes columns for the review's id, user id, property id, rating, and review text.

    8. Message: This table stores information about the messages sent between users and hosts. It includes columns for the message's id, sender id, receiver id, property id, message text, and message date.

The script creates the tables and defines the relationships between them, such as the foreign key constraints that link the users, properties, payments, bookings, and reviews tables to each other.