-- List all tables in the database
SELECT name FROM sqlite_master WHERE type='table';-- Query 1: Cities with most users
SELECT city, COUNT(*) as total_users FROM users GROUP BY city ORDER BY total_users DESC;
