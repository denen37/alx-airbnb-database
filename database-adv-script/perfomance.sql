SELECT b.*, u.*, p.*, py.* FROM booking b
LEFT JOIN user u
ON u.user_id = b.user_id
LEFT JOIN property p
ON p.property_id = b.property_id
LEFT JOIN payment py
ON py.booking_id = b.booking_id
ORDER BY b.created_at DESC