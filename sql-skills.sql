-- ARTISTS TABLE
INSERT INTO artist ( name ) 
VALUES ( 'David' ),
	( 'Jessica' ),
       ( 'Toledo' );
SELECT * FROM artist;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- EMPLOYEE TABLE
SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary';

select * from employee
where reports_to = 2;

SELECT COUNT(*) FROM employee 
WHERE city = 'Lethbridge';

-- INVOICE TABLE
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice 
WHERE total > 5;

SELECT COUNT(*) FROM invoice 
WHERE total < 5;

SELECT SUM(total) FROM invoice;

-- JOIN QUERIES
SELECT * FROM invoice_line
WHERE unit_price > .99;

SELECT invoice_date, first_name, last_name, total FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT al.title, ar.name FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

-- EXTRA CREDIT
-- ARTISTS
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';

-- EXTRA CREDIT
-- INVOICE
SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

-- EXTRA CREDIT
-- JOIN QUERIES
SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

SELECT t.name, a.title FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';