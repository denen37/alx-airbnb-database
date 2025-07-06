-- Write a query to find the total number of bookings made by each user, 
-- using the COUNT function and GROUP BY clause.

SELECT u.user_id, u.first_name, u.last_name, COUNT(b.booking_id) AS total_bookings
FROM user u
LEFT JOIN booking b ON u.user_id = b.user_id
GROUP BY b.user_id
ORDER BY total_bookings DESC;


-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings 
-- they have received.

SELECT p.property_id, p.name, COUNT(b.booking_id) AS total_bookings,
RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS property_rank
FROM property p
LEFT JOIN booking b 
ON p.property_id = b.property_id
GROUP BY p.property_id, p.name
ORDER BY total_bookings DESC;