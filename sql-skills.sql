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

