CREATE DATABASE ShopDB;
USE ShopDB;
CREATE TABLE customer (id INT PRIMARY KEY,name VARCHAR(50));
CREATE TABLE porder (id INT,product VARCHAR(50));
INSERT INTO customer VALUES(1, 'Amit'),(2, 'Neha'),(3, 'Raj');
select*from customer;
INSERT INTO porder VALUES(2, 'Laptop'),(3, 'Phone'),(4, 'Keyboard');
select*from porder;
SELECT *FROM customer c1 INNER JOIN porder p1 ON c1.id = p1.id;
SELECT *FROM customer c1 LEFT JOIN porder p1 ON c1.id = p1.id;
SELECT *FROM customer c1 LEFT JOIN porder p1 ON c1.id = p1.id UNION SELECT *FROM customer c1 RIGHT JOIN porder p1 ON c1.id = p1.id;
select *from customer c1 cross join porder p1;
select *from customer as c1 join customer as c2 on c1.id=c2.id;  






