CREATE USER 'Store_Manager'@'%' IDENTIFIED BY '1234';
CREATE USER 'Seller1'@'%' IDENTIFIED BY '12345';
CREATE USER 'Seller2'@'%' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON bookstoredb.* TO 'Store_Manager'@'%';
GRANT SELECT, INSERT, UPDATE ON bookstoredb.* TO 'Seller1'@'%';
GRANT SELECT ON bookstoredb.* TO 'Seller2'@'%';
FLUSH PRIVILEGES;