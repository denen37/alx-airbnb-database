-- Write a query using an INNER JOIN to retrieve all bookings and the respective users 
-- who made those bookings.


SELECT b.*, u.* FROM Booking AS b 
INNER JOIN User AS u 
ON b.user_id = u.user_id;


-- Write a query using a LEFT JOIN to retrieve all properties and their reviews, 
-- including properties that have no reviews

SELECT p.*, r.* FROM Property AS p
LEFT JOIN Review AS r 
ON p.property_id = r.property_id
ORDER BY p.property_id;

-- Write a query using a FULL OUTER JOIN to retrieve all users and all bookings,
-- even if the user has no booking or a booking is not linked to a user.

SELECT u.*, b.* FROM User AS u
FULL OUTER JOIN Booking AS b
ON u.user_id = b.user_id;