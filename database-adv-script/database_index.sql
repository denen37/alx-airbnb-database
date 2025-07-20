CREATE INDEX idx_created_at ON booking(created_at);

CREATE INDEX idx_price_per_night ON property(price_per_night);

CREATE UNIQUE INDEX idx_phone_number ON user(phone_number);

