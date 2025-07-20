SELECT b.*, u.*, p.*, py.* FROM booking b
LEFT JOIN user u
ON u.user_id = b.user_id
LEFT JOIN property p
ON p.property_id = b.property_id
LEFT JOIN payment py
ON py.booking_id = b.booking_id
WHERE b.user_id = 'u1111111-1111-4111-a111-111111111120'
ORDER BY b.created_at DESC


EXPLAIN ANALYZE SELECT b.*, u.*, p.*, py.* FROM booking b
LEFT JOIN user u
ON u.user_id = b.user_id
LEFT JOIN property p
ON p.property_id = b.property_id
LEFT JOIN payment py
ON py.booking_id = b.booking_id
WHERE b.user_id = 'u1111111-1111-4111-a111-111111111120'
ORDER BY b.created_at DESC