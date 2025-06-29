-- Insert sample users into the User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role) 
VALUES 
-- Original Set (renumbered to avoid duplicates)
('u0000001-0000-4000-a000-000000000001', 'John', 'Doe', 'john.doe1@example.com', MD5(RAND()), '123-456-7890', 'guest'),
('u0000002-0000-4000-a000-000000000002', 'Jane', 'Smith', 'jane.smith2@example.com', MD5(RAND()), '234-567-8901', 'host'),
('u0000003-0000-4000-a000-000000000003', 'Alice', 'Johnson', 'alice.johnson3@example.com', MD5(RAND()), '345-678-9012', 'admin'),
('u0000004-0000-4000-a000-000000000004', 'Bob', 'Brown', 'bob.brown4@example.com', MD5(RAND()), '456-789-0123', 'guest'),
('u0000005-0000-4000-a000-000000000005', 'Charlie', 'Davis', 'charlie.davis5@example.com', MD5(RAND()), '567-890-1234', 'host'),
('u0000006-0000-4000-a000-000000000006', 'David', 'Wilson', 'david.wilson6@example.com', MD5(RAND()), '678-901-2345', 'admin'),
('u0000007-0000-4000-a000-000000000007', 'Ella', 'Moore', 'ella.moore7@example.com', MD5(RAND()), '789-012-3456', 'guest'),
('u0000008-0000-4000-a000-000000000008', 'Frank', 'Taylor', 'frank.taylor8@example.com', MD5(RAND()), '890-123-4567', 'host'),
('u0000009-0000-4000-a000-000000000009', 'Grace', 'Anderson', 'grace.anderson9@example.com', MD5(RAND()), '901-234-5678', 'admin'),
('u0000010-0000-4000-a000-000000000010', 'Zoe', 'Martin', 'zoe.martin100@example.com', MD5(RAND()), '010-234-5678', 'guest'),
('u1111111-1111-4111-a111-111111111111', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_1', '+1234567890', 'guest'),
('u1111111-1111-4111-a111-111111111112', 'Bob', 'Smith', 'bob.smith@example.com', 'hashed_password_2', '+1234567891', 'host'),
('u1111111-1111-4111-a111-111111111113', 'Clara', 'Davis', 'clara.davis@example.com', 'hashed_password_3', '+1234567892', 'guest'),
('u1111111-1111-4111-a111-111111111114', 'David', 'Martin', 'david.martin@example.com', 'hashed_password_4', '+1234567893', 'host'),
('u1111111-1111-4111-a111-111111111115', 'Ella', 'Brown', 'ella.brown@example.com', 'hashed_password_5', '+1234567894', 'guest'),
('u1111111-1111-4111-a111-111111111116', 'Frank', 'Wilson', 'frank.wilson@example.com', 'hashed_password_6', '+1234567895', 'host'),
('u1111111-1111-4111-a111-111111111117', 'Grace', 'Clark', 'grace.clark@example.com', 'hashed_password_7', '+1234567896', 'guest'),
('u1111111-1111-4111-a111-111111111118', 'Henry', 'Lee', 'henry.lee@example.com', 'hashed_password_8', '+1234567897', 'host'),
('u1111111-1111-4111-a111-111111111119', 'Isabella', 'White', 'isabella.white@example.com', 'hashed_password_9', '+1234567898', 'guest'),
('u1111111-1111-4111-a111-111111111120', 'Jack', 'Young', 'jack.young@example.com', 'hashed_password_10', '+1234567899', 'host'),
('u1111111-1111-4111-a111-111111111121', 'Karen', 'Hall', 'karen.hall@example.com', 'hashed_password_11', '+1234567800', 'guest'),
('u1111111-1111-4111-a111-111111111122', 'Liam', 'Allen', 'liam.allen@example.com', 'hashed_password_12', '+1234567801', 'host'),
('u1111111-1111-4111-a111-111111111123', 'Mia', 'Scott', 'mia.scott@example.com', 'hashed_password_13', '+1234567802', 'admin'),
('u1111111-1111-4111-a111-111111111124', 'Noah', 'Walker', 'noah.walker@example.com', 'hashed_password_14', '+1234567803', 'guest'),
('u1111111-1111-4111-a111-111111111125', 'Olivia', 'Green', 'olivia.green@example.com', 'hashed_password_15', '+1234567804', 'host');


-- Insert sample users into the Property table
INSERT INTO Property (property_id, host_id, name, description, location_id, price_per_night) VALUES
('11111111-1111-1111-1111-111111111111', 'u1111111-1111-4111-a111-111111111112', 'Sunny Beach House', 'A cozy house by the sea with amazing sunrise views.', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 120.00),
('11111111-1111-1111-1111-111111111112', 'u1111111-1111-4111-a111-111111111114', 'Mountain Cabin Retreat', 'Rustic cabin in the mountains, perfect for a weekend escape.', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 95.50),
('11111111-1111-1111-1111-111111111113', 'u1111111-1111-4111-a111-111111111116', 'Downtown Studio', 'Modern studio apartment in the heart of the city.', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', 150.00),
('11111111-1111-1111-1111-111111111114', 'u1111111-1111-4111-a111-111111111118', 'Lakeview Cottage', 'Charming cottage with a view of the lake and private dock.', 'bbbbbbb4-bbbb-bbbb-bbbb-bbbbbbbbbbb4', 130.00),
('11111111-1111-1111-1111-111111111115', 'u1111111-1111-4111-a111-111111111120', 'Urban Loft', 'Spacious loft apartment with industrial decor.', 'bbbbbbb5-bbbb-bbbb-bbbb-bbbbbbbbbbb5', 170.00),
('11111111-1111-1111-1111-111111111116', 'u1111111-1111-4111-a111-111111111122', 'Desert Oasis', 'Private home with a pool in the desert.', 'bbbbbbb6-bbbb-bbbb-bbbb-bbbbbbbbbbb6', 110.00),
('11111111-1111-1111-1111-111111111117', 'u1111111-1111-4111-a111-111111111125', 'Historic Townhouse', 'Beautifully preserved townhouse with antique furnishings.', 'bbbbbbb7-bbbb-bbbb-bbbb-bbbbbbbbbbb7', 145.00),
('11111111-1111-1111-1111-111111111118', 'u1111111-1111-4111-a111-111111111112', 'Beachfront Villa', 'Luxury villa directly on the beach with private access.', 'bbbbbbb8-bbbb-bbbb-bbbb-bbbbbbbbbbb8', 250.00),
('11111111-1111-1111-1111-111111111119', 'u1111111-1111-4111-a111-111111111114', 'Suburban House', 'Family-friendly house in a quiet neighborhood.', 'bbbbbbb9-bbbb-bbbb-bbbb-bbbbbbbbbbb9', 80.00),
('11111111-1111-1111-1111-111111111120', 'u1111111-1111-4111-a111-111111111116', 'Country Farmstay', 'Experience the countryside on a working farm.', 'bbbbbbb0-bbbb-bbbb-bbbb-bbbbbbbbbbb0', 100.00),
('11111111-1111-1111-1111-111111111121', 'u1111111-1111-4111-a111-111111111118', 'Secluded Treehouse', 'Treehouse hidden in the forest with all modern amenities.', 'ccccccc1-cccc-cccc-cccc-ccccccccccc1', 140.00),
('11111111-1111-1111-1111-111111111122', 'u1111111-1111-4111-a111-111111111120', 'Eco Tiny Home', 'Environmentally friendly tiny house with solar panels.', 'ccccccc2-cccc-cccc-cccc-ccccccccccc2', 75.00),
('11111111-1111-1111-1111-111111111123', 'u1111111-1111-4111-a111-111111111122', 'Luxury Penthouse', 'Top floor penthouse with panoramic city views.', 'ccccccc3-cccc-cccc-cccc-ccccccccccc3', 300.00),
('11111111-1111-1111-1111-111111111124', 'u1111111-1111-4111-a111-111111111125', 'Ski Chalet', 'Warm and welcoming chalet near ski slopes.', 'ccccccc4-cccc-cccc-cccc-ccccccccccc4', 160.00),
('11111111-1111-1111-1111-111111111125', 'u1111111-1111-4111-a111-111111111112', 'Coastal Bungalow', 'Simple and serene bungalow steps from the beach.', 'ccccccc5-cccc-cccc-cccc-ccccccccccc5', 115.00);


-- Insert sample users into the Location table
INSERT INTO Location (location_id, city, state, country, zipcode) VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'Los Angeles', 'California', 'USA', '90001'),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'Denver', 'Colorado', 'USA', '80201'),
('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', 'New York', 'New York', 'USA', '10001'),
('bbbbbbb4-bbbb-bbbb-bbbb-bbbbbbbbbbb4', 'Seattle', 'Washington', 'USA', '98101'),
('bbbbbbb5-bbbb-bbbb-bbbb-bbbbbbbbbbb5', 'Austin', 'Texas', 'USA', '73301'),
('bbbbbbb6-bbbb-bbbb-bbbb-bbbbbbbbbbb6', 'Phoenix', 'Arizona', 'USA', '85001'),
('bbbbbbb7-bbbb-bbbb-bbbb-bbbbbbbbbbb7', 'Savannah', 'Georgia', 'USA', '31401'),
('bbbbbbb8-bbbb-bbbb-bbbb-bbbbbbbbbbb8', 'Miami', 'Florida', 'USA', '33101'),
('bbbbbbb9-bbbb-bbbb-bbbb-bbbbbbbbbbb9', 'Portland', 'Oregon', 'USA', '97201'),
('bbbbbbb0-bbbb-bbbb-bbbb-bbbbbbbbbbb0', 'Nashville', 'Tennessee', 'USA', '37201'),
('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'Asheville', 'North Carolina', 'USA', '28801'),
('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'Boise', 'Idaho', 'USA', '83701'),
('ccccccc3-cccc-cccc-cccc-ccccccccccc3', 'Chicago', 'Illinois', 'USA', '60601'),
('ccccccc4-cccc-cccc-cccc-ccccccccccc4', 'Salt Lake City', 'Utah', 'USA', '84101'),
('ccccccc5-cccc-cccc-cccc-ccccccccccc5', 'Santa Barbara', 'California', 'USA', '93101');

-- Insert sample users into the Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status) VALUES
('d1111111-d111-4111-a111-111111111111', '11111111-1111-1111-1111-111111111111', 'u1111111-1111-4111-a111-111111111111', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
('d1111111-d112-4111-a111-111111111112', '11111111-1111-1111-1111-111111111112', 'u1111111-1111-4111-a111-111111111112', '2025-07-10', '2025-07-15', 477.50, 'pending'),
('d1111111-d113-4111-a111-111111111113', '11111111-1111-1111-1111-111111111113', 'u1111111-1111-4111-a111-111111111113', '2025-05-20', '2025-05-22', 300.00, 'confirmed'),
('d1111111-d114-4111-a111-111111111114', '11111111-1111-1111-1111-111111111114', 'u1111111-1111-4111-a111-111111111114', '2025-08-01', '2025-08-07', 910.00, 'canceled'),
('d1111111-d115-4111-a111-111111111115', '11111111-1111-1111-1111-111111111115', 'u1111111-1111-4111-a111-111111111115', '2025-09-15', '2025-09-20', 850.00, 'confirmed'),
('d1111111-d116-4111-a111-111111111116', '11111111-1111-1111-1111-111111111116', 'u1111111-1111-4111-a111-111111111116', '2025-05-01', '2025-05-03', 220.00, 'confirmed'),
('d1111111-d117-4111-a111-111111111117', '11111111-1111-1111-1111-111111111117', 'u1111111-1111-4111-a111-111111111117', '2025-06-10', '2025-06-14', 580.00, 'pending'),
('d1111111-d118-4111-a111-111111111118', '11111111-1111-1111-1111-111111111118', 'u1111111-1111-4111-a111-111111111118', '2025-07-01', '2025-07-03', 500.00, 'confirmed'),
('d1111111-d119-4111-a111-111111111119', '11111111-1111-1111-1111-111111111119', 'u1111111-1111-4111-a111-111111111119', '2025-05-25', '2025-05-28', 240.00, 'confirmed'),
('d1111111-d120-4111-a111-111111111120', '11111111-1111-1111-1111-111111111120', 'u1111111-1111-4111-a111-111111111120', '2025-10-05', '2025-10-08', 300.00, 'canceled'),
('d1111111-d121-4111-a111-111111111121', '11111111-1111-1111-1111-111111111121', 'u1111111-1111-4111-a111-111111111121', '2025-06-15', '2025-06-18', 420.00, 'confirmed'),
('d1111111-d122-4111-a111-111111111122', '11111111-1111-1111-1111-111111111122', 'u1111111-1111-4111-a111-111111111122', '2025-07-20', '2025-07-22', 150.00, 'confirmed'),
('d1111111-d123-4111-a111-111111111123', '11111111-1111-1111-1111-111111111123', 'u1111111-1111-4111-a111-111111111123', '2025-08-01', '2025-08-05', 1200.00, 'pending'),
('d1111111-d124-4111-a111-111111111124', '11111111-1111-1111-1111-111111111124', 'u1111111-1111-4111-a111-111111111124', '2025-09-10', '2025-09-15', 800.00, 'confirmed'),
('d1111111-d125-4111-a111-111111111125', '11111111-1111-1111-1111-111111111125', 'u1111111-1111-4111-a111-111111111125', '2025-10-01', '2025-10-04', 345.00, 'canceled');

-- Insert sample users into the PaymentMethod table
INSERT INTO PaymentMethod (payment_method_id, method_name) VALUES
('pm111111-aaaa-bbbb-cccc-111111111111', 'Credit Card'),
('pm222222-aaaa-bbbb-cccc-222222222222', 'Debit Card'),
('pm333333-aaaa-bbbb-cccc-333333333333', 'PayPal'),
('pm444444-aaaa-bbbb-cccc-444444444444', 'Bank Transfer'),
('pm555555-aaaa-bbbb-cccc-555555555555', 'Apple Pay');

-- Insert sample users into the Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_method_id) VALUES
('pay11111-aaaa-bbbb-cccc-000000000001', 'd1111111-d111-4111-a111-111111111111', 480.00, 'pm111111-aaaa-bbbb-cccc-111111111111'),
('pay11112-aaaa-bbbb-cccc-000000000002', 'd1111111-d112-4111-a111-111111111112', 477.50, 'pm333333-aaaa-bbbb-cccc-333333333333'),
('pay11113-aaaa-bbbb-cccc-000000000003', 'd1111111-d113-4111-a111-111111111113', 300.00, 'pm222222-aaaa-bbbb-cccc-222222222222'),
('pay11114-aaaa-bbbb-cccc-000000000004', 'd1111111-d114-4111-a111-111111111114', 910.00, 'pm444444-aaaa-bbbb-cccc-444444444444'),
('pay11115-aaaa-bbbb-cccc-000000000005', 'd1111111-d115-4111-a111-111111111115', 850.00, 'pm111111-aaaa-bbbb-cccc-111111111111'),
('pay11116-aaaa-bbbb-cccc-000000000006', 'd1111111-d116-4111-a111-111111111116', 220.00, 'pm333333-aaaa-bbbb-cccc-333333333333'),
('pay11117-aaaa-bbbb-cccc-000000000007', 'd1111111-d117-4111-a111-111111111117', 580.00, 'pm555555-aaaa-bbbb-cccc-555555555555'),
('pay11118-aaaa-bbbb-cccc-000000000008', 'd1111111-d118-4111-a111-111111111118', 500.00, 'pm222222-aaaa-bbbb-cccc-222222222222'),
('pay11119-aaaa-bbbb-cccc-000000000009', 'd1111111-d119-4111-a111-111111111119', 240.00, 'pm111111-aaaa-bbbb-cccc-111111111111'),
('pay11110-aaaa-bbbb-cccc-000000000010', 'd1111111-d120-4111-a111-111111111120', 300.00, 'pm444444-aaaa-bbbb-cccc-444444444444'),
('pay11121-aaaa-bbbb-cccc-000000000011', 'd1111111-d121-4111-a111-111111111121', 420.00, 'pm555555-aaaa-bbbb-cccc-555555555555'),
('pay11122-aaaa-bbbb-cccc-000000000012', 'd1111111-d122-4111-a111-111111111122', 150.00, 'pm222222-aaaa-bbbb-cccc-222222222222'),
('pay11123-aaaa-bbbb-cccc-000000000013', 'd1111111-d123-4111-a111-111111111123', 1200.00, 'pm111111-aaaa-bbbb-cccc-111111111111'),
('pay11124-aaaa-bbbb-cccc-000000000014', 'd1111111-d124-4111-a111-111111111124', 800.00, 'pm333333-aaaa-bbbb-cccc-333333333333'),
('pay11125-aaaa-bbbb-cccc-000000000015', 'd1111111-d125-4111-a111-111111111125', 345.00, 'pm444444-aaaa-bbbb-cccc-444444444444');

-- Insert sample users into the Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment) VALUES
('rev00001-aaaa-bbbb-cccc-000000000001', '11111111-1111-1111-1111-111111111111', 'u1111111-1111-4111-a111-111111111111', 5, 'Fantastic place! Very clean and well-located.'),
('rev00002-aaaa-bbbb-cccc-000000000002', '11111111-1111-1111-1111-111111111112', 'u1111111-1111-4111-a111-111111111112', 4, 'Great stay, but the WiFi was a bit slow.'),
('rev00003-aaaa-bbbb-cccc-000000000003', '11111111-1111-1111-1111-111111111113', 'u1111111-1111-4111-a111-111111111113', 5, 'Absolutely loved it! Will return again.'),
('rev00004-aaaa-bbbb-cccc-000000000004', '11111111-1111-1111-1111-111111111114', 'u1111111-1111-4111-a111-111111111114', 3, 'Decent value, but the kitchen wasn\'t well stocked.'),
('rev00005-aaaa-bbbb-cccc-000000000005', '11111111-1111-1111-1111-111111111115', 'u1111111-1111-4111-a111-111111111115', 5, 'Perfect for a weekend getaway. Very peaceful.'),
('rev00006-aaaa-bbbb-cccc-000000000006', '11111111-1111-1111-1111-111111111116', 'u1111111-1111-4111-a111-111111111116', 2, 'Wasn\'t as clean as expected. Check-in was confusing.'),
('rev00007-aaaa-bbbb-cccc-000000000007', '11111111-1111-1111-1111-111111111117', 'u1111111-1111-4111-a111-111111111117', 4, 'Nice decor and friendly host. A bit noisy at night.'),
('rev00008-aaaa-bbbb-cccc-000000000008', '11111111-1111-1111-1111-111111111118', 'u1111111-1111-4111-a111-111111111118', 5, 'Exceeded expectations! Very modern and clean.'),
('rev00009-aaaa-bbbb-cccc-000000000009', '11111111-1111-1111-1111-111111111119', 'u1111111-1111-4111-a111-111111111119', 3, 'Okay for the price, but furniture needs updating.'),
('rev00010-aaaa-bbbb-cccc-000000000010', '11111111-1111-1111-1111-111111111120', 'u1111111-1111-4111-a111-111111111120', 4, 'Good location and amenities.'),
('rev00011-aaaa-bbbb-cccc-000000000011', '11111111-1111-1111-1111-111111111121', 'u1111111-1111-4111-a111-111111111121', 5, 'This was our best Airbnb experience so far!'),
('rev00012-aaaa-bbbb-cccc-000000000012', '11111111-1111-1111-1111-111111111122', 'u1111111-1111-4111-a111-111111111122', 2, 'Photos were misleading, and the bed was uncomfortable.'),
('rev00013-aaaa-bbbb-cccc-000000000013', '11111111-1111-1111-1111-111111111123', 'u1111111-1111-4111-a111-111111111123', 4, 'Had a great time, just wish check-in was earlier.'),
('rev00014-aaaa-bbbb-cccc-000000000014', '11111111-1111-1111-1111-111111111124', 'u1111111-1111-4111-a111-111111111124', 5, 'Luxury feel with amazing views.'),
('rev00015-aaaa-bbbb-cccc-000000000015', '11111111-1111-1111-1111-111111111125', 'u1111111-1111-4111-a111-111111111125', 3, 'Not bad, but the neighbors were too loud.');

-- Insert sample users into the Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body) VALUES
('m0000001-aaaa-bbbb-cccc-000000000001', 'u1111111-1111-4111-a111-111111111111', 'u1111111-1111-4111-a111-111111111112', 'Hi Bob, is your apartment available next weekend?'),
('m0000002-aaaa-bbbb-cccc-000000000002', 'u1111111-1111-4111-a111-111111111112', 'u1111111-1111-4111-a111-111111111111', 'Yes, it is available. Do you have any special requests?'),
('m0000003-aaaa-bbbb-cccc-000000000003', 'u1111111-1111-4111-a111-111111111113', 'u1111111-1111-4111-a111-111111111114', 'Hello David, what\'s the check-in process like?'),
('m0000004-aaaa-bbbb-cccc-000000000004', 'u1111111-1111-4111-a111-111111111114', 'u1111111-1111-4111-a111-111111111113', 'Check-in is contactless, you\'ll receive a code the day before arrival.'),
('m0000005-aaaa-bbbb-cccc-000000000005', 'u1111111-1111-4111-a111-111111111115', 'u1111111-1111-4111-a111-111111111116', 'Is the property pet-friendly? I have a small dog.'),
('m0000006-aaaa-bbbb-cccc-000000000006', 'u1111111-1111-4111-a111-111111111116', 'u1111111-1111-4111-a111-111111111115', 'Yes, pets are welcome as long as they\'re house-trained.'),
('m0000007-aaaa-bbbb-cccc-000000000007', 'u1111111-1111-4111-a111-111111111117', 'u1111111-1111-4111-a111-111111111118', 'Hi Henry, can you confirm the booking from May 10th?'),
('m0000008-aaaa-bbbb-cccc-000000000008', 'u1111111-1111-4111-a111-111111111118', 'u1111111-1111-4111-a111-111111111117', 'Yes, I\'ve confirmed the booking. Looking forward to hosting you!'),
('m0000009-aaaa-bbbb-cccc-000000000009', 'u1111111-1111-4111-a111-111111111119', 'u1111111-1111-4111-a111-111111111120', 'Is parking available at your place?'),
('m0000010-aaaa-bbbb-cccc-000000000010', 'u1111111-1111-4111-a111-111111111120', 'u1111111-1111-4111-a111-111111111119', 'Yes, there is free parking on the premises.'),
('m0000011-aaaa-bbbb-cccc-000000000011', 'u1111111-1111-4111-a111-111111111121', 'u1111111-1111-4111-a111-111111111122', 'Do you allow early check-in? My flight lands at 9am.'),
('m0000012-aaaa-bbbb-cccc-000000000012', 'u1111111-1111-4111-a111-111111111122', 'u1111111-1111-4111-a111-111111111121', 'Sure, early check-in is possible if no one checks out that morning.'),
('m0000013-aaaa-bbbb-cccc-000000000013', 'u1111111-1111-4111-a111-111111111123', 'u1111111-1111-4111-a111-111111111124', 'Can you provide a baby crib for our stay?'),
('m0000014-aaaa-bbbb-cccc-000000000014', 'u1111111-1111-4111-a111-111111111124', 'u1111111-1111-4111-a111-111111111123', 'Yes, a baby crib will be available upon arrival.'),
('m0000015-aaaa-bbbb-cccc-000000000015', 'u1111111-1111-4111-a111-111111111125', 'u1111111-1111-4111-a111-111111111111', 'Thanks for your stay! Please leave a review if you enjoyed it.');
