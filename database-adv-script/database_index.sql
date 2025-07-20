CREATE INDEX idx_created_at ON booking(created_at);

EXPLAIN ANALYZE SELECT * FROM booking where created_at = '2025-07-06 03:27:37';

CREATE INDEX idx_price_per_night ON property(price_per_night);

 EXPLAIN ANALYZE SELECT * FROM property WHERE price_per_night = 120;

CREATE UNIQUE INDEX idx_phone_number ON user(phone_number);

EXPLAIN ANALYZE SELECT * FROM user WHERE phone_number = '123-456-7890';

