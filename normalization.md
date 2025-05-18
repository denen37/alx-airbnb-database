## Review of Schema

### Location in Property Table:
- The `location` field is stored as a `VARCHAR`. If this is storing full addresses or locations, consider normalizing it into a separate table:
    - `location_id`, `city`, `state`, `country`, `zipcode`. 
    - This way, you avoid repetition if multiple properties are in the same location.

### Denormalization of total_price in Booking:
- `total_price` is calculated from `price_per_night * (end_date - start_date)`.

- It is somewhat denormalized since it can be derived. However, this is sometimes acceptable for performance optimization if you frequently query `total_price`.

- If you want to stay true to normalization, it could be removed and calculated dynamically.

### ENUM Usage:
- Using `ENUM` for role, status, and payment_method is convenient, but it is not as flexible for future modifications (e.g., adding more payment methods or roles).

- It might be better to move these to separate tables:

- `Roles`: `role_id`, `role_name`

- `PaymentMethods`: `method_id`, `method_name`

- `BookingStatuses`: `status_id`, `status_name`

This would allow easy updates without database migrations.

### Host Role is Tied Directly to User:
- The `Property` table references `host_id`, which is a `user_id` from the `User` table. You are using the role field in `User` to distinguish hosts.

- This creates a dependency on the `role` ENUM. If a user's role changes, it may affect property ownership.

- A solution would be to create a separate Host table:

- `host_id`, `user_id`, `status`.

- This would separate the concept of "being a host" from the `User` role and allow finer control.

## Adjustments

### User
- `user_id`: `UUID`, Primary Key

- `first_name`: `VARCHAR`, `NOT NULL`

- `last_name`: `VARCHAR`, `NOT NULL`

- `email`: `VARCHAR`, `UNIQUE`, `NOT NULL`

- `password_hash`: `VARCHAR`, `NOT NULL`

- `phone_number`: `VARCHAR`, `NULL`

- `role`: `ENUM('guest', 'host', 'admin')`, `NOT NULL`

- `created_at`: `TIMESTAMP`,` DEFAULT CURRENT_TIMESTAMP`

- `updated_at`: `TIMESTAMP`, `ON UPDATE CURRENT_TIMESTAMP`

### Property
- `property_id`: `UUID`, Primary Key

- `host_id`: Foreign Key → `User(user_id)`

- `name`: `VARCHAR`, `NOT NULL`

- `description`: `TEXT`, `NOT NULL`

- `location_id`: Foreign Key → `Location(location_id)`

- `price_per_night`: `DECIMAL`, `NOT NULL`

- `created_at`: `TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`

- `updated_at`: `TIMESTAMP`, `ON UPDATE CURRENT_TIMESTAMP`

### Location (New Table)
`location_id`: `UUID`, Primary Key

`city`: `VARCHAR`, `NOT NULL`

`state`: `VARCHAR`, `NOT NULL`

`country`: `VARCHAR`, `NOT NULL`

`zipcode`: `VARCHAR`, `NOT NULL`

Normalized to avoid redundancy if multiple properties are in the same location.

### Booking
- `booking_id`: `UUID`, Primary Key

- `property_id`: Foreign Key → `Property(property_id)`

- `user_id`: Foreign Key → `User(user_id)`

- `start_date`: `DATE`, `NOT NULL`

- `end_date`: `DATE`, `NOT NULL`

- `total_price`: `DECIMAL`, `NOT NULL`

- `status`: `ENUM('pending', 'confirmed', 'canceled')`, `NOT NULL`

- `created_at`: `TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`

- `updated_at`: `TIMESTAMP`, `ON UPDATE CURRENT_TIMESTAMP`


### Payment
- `payment_id`: `UUID`, Primary Key

- `booking_id`: Foreign Key → `Booking(booking_id)`

- `amount`: `DECIMAL`, `NOT NULL`

- `payment_method_id`: Foreign Key → `PaymentMethod(payment_method_id)`

- `payment_date`: `TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`


### PaymentMethod (New Table)
- `payment_method_id`: `UUID`, Primary Key

- `method_name`: `VARCHAR`, `NOT NULL`, `UNIQUE`

### Review
- `review_id`: `UUID`, Primary Key

- `property_id`: Foreign Key → `Property(property_id)`

- `user_id`: Foreign Key → `User(user_id)`

- `rating`: `INTEGER`, `CHECK (rating >= 1 AND rating <= 5)`, `NOT NULL`

- `comment`: `TEXT`, `NOT NULL`

- `created_at`: `TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`


### Message
- `message_id`: `UUID`, Primary Key

- `sender_id`: Foreign Key → `User(user_id)`

- `recipient_id`: Foreign Key → `User(user_id)`

- `message_body`: `TEXT`, `NOT NULL`

- `sent_at`: `TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`