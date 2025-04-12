-- we shall add the queries on our database here
-- 1. publisher table data
INSERT INTO publisher (publisherName)
VALUES
('Penguin Random House'),
('HarperCollins'),
('Simon & Schuster'),
('Hachette Book Group'),
('Macmillan'),
('New Africa Books'),
('Parrésia Publishers'),
('Cassava Republic Pressl'),
('University Press plc'),
('Alpha Book Publisher'),
('Kachifo Limited'),
('The Arcane Press'),
('Wits University Press');

-- 2. book_language table data
INSERT INTO book_language (language_name)
VALUES
('English'),
('French'),
('Spanish'),
('German'),
('Chineese'),
('Italian');


-- 3. Book table data

INSERT INTO book (title, publisher_id, language_id, price, publication_year)
VALUES
('The Great Gatsby', 1, 1, 10.99, 1925),   
('To Kill a Mockingbird', 2, 1, 7.99, 1960),   
('1984', 3, 1, 8.99, 1949),  
('Pride and Prejudice', 4, 1, 6.99, 1813),   
('Half of a Yellow Sun', 5, 1, 12.99, 2006),  
('Hamlet', 6, 1, 5.99, 1609),  
('Things Fall Apart', 7, 1, 9.99, 1958),   
('Ake: The Years of Childhood', 8, 1, 11.99, 1981),   
('Efuru', 9, 1, 7.99, 1966),   
('So Long a Letter', 10, 1, 8.99, 1979),   
('Moby Dick', 11, 1, 10.99, 1851),   
('The Beautiful and Damned', 1, 1, 9.99, 1922),   
('Go Set a Watchman', 2, 1, 10.99, 2015),   
('Animal Farm', 3, 1, 6.99, 1945),   
('Sense and Sensibility', 4, 1, 7.99, 1811),   
('Americanah', 5, 1, 12.99, 2013),  
('Macbeth', 6, 1, 5.99, 1620),   
('No Longer at Ease', 7, 1, 8.99, 1960),  
('The Man Died: Prison Notes of Wole Soyinka', 8, 1, 13.99, 1972),  
('The River and the Source', 9, 1, 9.99, 1995),   
('Scarlet Song', 10, 1, 7.99, 1981);  

--4. Authors table data
INSERT INTO author (first_name, last_name)
VALUES
('F. Scott', 'Fitzgerald'),
('Harper', 'Lee'),
('George', 'Orwell'),
('Jane', 'Austen'),
('Chiamanda', 'Adichie'),
('William', 'Shakespheare'),
('Chinua', 'Achebe'),
('Wole', 'Soyinka'),
('Flora', 'Nwapa'),
('Mariama ', 'Bâ'),
('Herman', 'Melville');

-- 5. Book_Author table data
INSERT INTO book_author (book_id, author_id)
VALUES
(1, 1),  -- 'The Great Gatsby' by F. Scott Fitzgerald
(2, 2),  -- 'To Kill a Mockingbird' by Harper Lee
(3, 3),  -- '1984' by George Orwell
(4, 4),  -- 'Pride and Prejudice' by Jane Austen
(5, 5),  -- 'Half of a Yellow Sun' by Chimamanda Ngozi Adichie
(6, 6),  -- 'Hamlet' by William Shakespeare
(7, 7),  -- 'Things Fall Apart' by Chinua Achebe
(8, 8),  -- 'Ake: The Years of Childhood' by Wole Soyinka
(9, 9),  -- 'Efuru' by Flora Nwapa
(10, 10), -- 'So Long a Letter' by Mariama Bâ
(11, 11), -- 'Moby Dick' by Herman Melville
(12, 1),  -- 'The Beautiful and Damned' by F. Scott Fitzgerald
(13, 2),  -- 'Go Set a Watchman' by Harper Lee
(14, 3),  -- 'Animal Farm' by George Orwell
(15, 4),  -- 'Sense and Sensibility' by Jane Austen
(16, 5),  -- 'Americanah' by Chimamanda Ngozi Adichie
(17, 6),  -- 'Macbeth' by William Shakespeare
(18, 7),  -- 'No Longer at Ease' by Chinua Achebe
(19, 8),  -- 'The Man Died: Prison Notes of Wole Soyinka' by Wole Soyinka
(20, 9);  -- 'The River and the Source' by Flora Nwapa

--6.  Customer table data
INSERT INTO customer (first_name, last_name)
VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Michael', 'Johnson'),
('Emily', 'Davis'),
('Robert', 'Brown'),
('Linda', 'Williams'),
('David', 'Jones'),
('Sarah', 'Miller'),
('James', 'Wilson'),
('Mary', 'Taylor'),
('William', 'Anderson'),
('Elizabeth', 'Thomas'),
('Joseph', 'Jackson'),
('Patricia', 'White'),
('Charles', 'Harris'),
('Nancy', 'Martin'),
('Daniel', 'Thompson'),
('Barbara', 'Garcia'),
('Matthew', 'Martinez'),
('Dorothy', 'Rodriguez'),
('Christopher', 'Lee'),
('Sophia', 'Gonzalez'),
('Thomas', 'Perez'),
('Olivia', 'Young'),
('Mark', 'King');


--7 country table data
INSERT INTO country (country_name)
VALUES
('United States'),
('United Kingdom'),
('Canada'),
('Nigeria'),
('South Africa'),
('Rwanda'),
('Australia'),
('India');

--8 Address table data
INSERT INTO address (street, city, country_id)
VALUES
('123 Maple Street', 'New York', 1), -- United States
('456 Oak Avenue', 'Los Angeles', 1), -- United States
('789 Pine Road', 'Chicago', 1), -- United States
('101 High Street', 'London', 2), -- United Kingdom
('202 King Road', 'Manchester', 2), -- United Kingdom
('303 Queen Street', 'Liverpool', 2), -- United Kingdom
('12 Bay Street', 'Toronto', 3), -- Canada
('34 Lakeview Drive', 'Vancouver', 3), -- Canada
('56 River Lane', 'Montreal', 3), -- Canada
('15 Freedom Boulevard', 'Lagos', 4), -- Nigeria
('78 Peace Avenue', 'Abuja', 4), -- Nigeria
('123 Victory Street', 'Port Harcourt', 4), -- Nigeria
('120 Sandton Drive', 'Johannesburg', 5), -- South Africa
('56 Garden Road', 'Cape Town', 5), -- South Africa
('88 Blue Mountain Street', 'Durban', 5), -- South Africa
('23 Kigali Heights', 'Kigali', 6), -- Rwanda
('45 Nyamirambo Road', 'Kigali', 6), -- Rwanda
('67 Nyarugenge Avenue', 'Kigali', 6), -- Rwanda
('25 Sydney Road', 'Sydney', 7), -- Australia
('48 Melbourne Street', 'Melbourne', 7), -- Australia
('32 Brisbane Avenue', 'Brisbane', 7), -- Australia
('78 Delhi Street', 'New Delhi', 8), -- India
('56 Mumbai Road', 'Mumbai', 8), -- India
('92 Bangalore Lane', 'Bangalore', 8); -- India

-- -- 9. Address Status table data
INSERT INTO address_status (status_name)
VALUES
('Active'),
('Inactive'),
('Pending');

-- 10. customer_address table data
-- Since Each customer is assigned an `address_id` and a `status_id, i will make use of the exisiting id`

INSERT INTO customer_address (customer_id, address_id, status_id)
VALUES
-- United States (Customer 1 to 5)
(1, 1, 1),  -- Customer 1, Address 1, Active status
(2, 2, 1),  -- Customer 2, Address 2, Active status
(3, 3, 1),  -- Customer 3, Address 3, Active status
(4, 4, 1),  -- Customer 4, Address 4, Active status
(5, 5, 1),  -- Customer 5, Address 5, Active status

-- United Kingdom (Customer 6 to 10)
(6, 6, 1),  -- Customer 6, Address 6, Active status
(7, 7, 1),  -- Customer 7, Address 7, Active status
(8, 8, 1),  -- Customer 8, Address 8, Active status
(9, 1, 1),  -- Customer 9, Address 1 (reuse), Active status
(10, 2, 1), -- Customer 10, Address 2 (reuse), Active status

-- Canada (Customer 11 to 15)
(11, 3, 1),  -- Customer 11, Address 3 (reuse), Active status
(12, 4, 1),  -- Customer 12, Address 4 (reuse), Active status
(13, 5, 1),  -- Customer 13, Address 5 (reuse), Active status
(14, 6, 1),  -- Customer 14, Address 6 (reuse), Active status
(15, 7, 1),  -- Customer 15, Address 7 (reuse), Active status

-- Nigeria (Customer 16 to 20)
(16, 8, 1),  -- Customer 16, Address 8 (reuse), Active status
(17, 1, 1),  -- Customer 17, Address 1 (reuse), Active status
(18, 2, 1),  -- Customer 18, Address 2 (reuse), Active status
(19, 3, 1),  -- Customer 19, Address 3 (reuse), Active status
(20, 4, 1),  -- Customer 20, Address 4 (reuse), Active status

-- South Africa, Rwanda, Australia, India (Customer 21 to 25)
(21, 5, 1),  -- Customer 21, Address 5 (reuse), Active status
(22, 6, 1),  -- Customer 22, Address 6 (reuse), Active status
(23, 7, 1),  -- Customer 23, Address 7 (reuse), Active status
(24, 8, 1),  -- Customer 24, Address 8 (reuse), Active status
(25, 1, 1);  -- Customer 25, Address 1 (reuse), Active status


-- 11. Shipping Method
INSERT INTO shipping_method (method_name, cost)
VALUES
('Standard Shipping', 5.00),
('Express Shipping', 10.00),
('International Shipping', 25.00),
('Local Courier', 3.00),
('Pickup Station', 0.00);

-- 12. Order Status
INSERT INTO order_status (status_name)
VALUES
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled');


-- 13. Customer Order
INSERT INTO cust_order (customer_id, shipping_method_id, status_id, order_date)
VALUES
(1, 1, 1, '2025-04-10'),
(2, 2, 2, '2025-04-11'),
(3, 3, 3, '2025-04-12'),
(4, 1, 4, '2025-04-12'),
(5, 4, 5, '2025-04-13');

-- 14. Order Line

INSERT INTO order_line (order_id, book_id, quantity, price)
VALUES
(1, 1, 2, 14.99),
(2, 2, 1, 9.99),
(3, 3, 3, 12.50),
(4, 4, 1, 18.00),
(5, 5, 2, 7.75);

-- 15. Order History
INSERT INTO order_history (order_id, status_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 1),
(5, 1),
(5, 5);