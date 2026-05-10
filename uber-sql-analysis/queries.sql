-- List all tables in the database
SELECT name FROM sqlite_master WHERE type='table'
SELECT * FROM {table} LIMIT 5
SELECT city, COUNT (*) as total_users FROM users GROUP BY city ORDER BY total_users DESC 
SELECT u.name, d.rating, d.vehicle_make, d.vehicle_model, d.vehicle_year FROM drivers d JOIN users u ON d.user_id = u.user_id ORDER BY d.rating DESC LIMIT 5
SELECT Round(AVG(total_fare), 2) as avg_fare, ROUND(MIN(total_fare), 2) as cheapest_trip, ROUND(MAX(total_fare), 2) as most_expensive_trip FROM trips
SELECT reason, COUNT(*) as total_cancellations FROM cancellations GROUP BY reason ORDER BY total_cancellations DESC 
SELECT method, COUNT(*) as total_payments, ROUND(SUM(amount), 2) as total_revenue FROM payments GROUP BY method ORDER BY total_payments DESC
