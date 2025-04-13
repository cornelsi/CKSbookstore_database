 USE bookstoredb;

-- 1. View all books
SELECT * FROM book;

-- 2. View all customers
SELECT * FROM customer;

-- 3. List all orders with customer names
SELECT 
    co.order_id,
    c.first_name,
    c.last_name,
    co.order_date
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id;

-- 4. Orders and the books they contain
SELECT 
    co.order_id,
    c.first_name,
    c.last_name,
    b.title,
    ol.quantity,
    ol.price
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id;

-- 5. Books and their authors
SELECT 
    b.title,
    a.first_name AS author_first_name,
    a.last_name AS author_last_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- 6. Orders with shipping method and status
SELECT 
    co.order_id,
    c.first_name,
    sm.method_name AS shipping_method,
    os.status_name AS order_status
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN shipping_method sm ON co.shipping_method_id = sm.method_id
JOIN order_status os ON co.status_id = os.status_id;

-- 7. Order status history (tracking)
SELECT 
    oh.order_id,
    os.status_name,
    oh.changed_at
FROM order_history oh
JOIN order_status os ON oh.status_id = os.status_id
ORDER BY oh.changed_at;

-- 8. Customers with their current addresses
SELECT 
    c.first_name,
    c.last_name,
    a.street,
    a.city,
    cn.country_name,
    ast.status_name
FROM customer c
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN country cn ON a.country_id = cn.country_id
JOIN address_status ast ON ca.status_id = ast.status_id
WHERE ast.status_name = 'current';

-- 9. Total sales per book
SELECT 
    b.title,
    SUM(ol.quantity * ol.price) AS total_sales
FROM order_line ol
JOIN book b ON ol.book_id = b.book_id
GROUP BY b.title
ORDER BY total_sales DESC;
