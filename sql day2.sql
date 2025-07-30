create database Company;
use Company;
create table employee(id INT,name VARCHAR(100),dept VARCHAR(100), salary int);
select * from employee;
INSERT INTO employee VALUES (101, 'geeks', 'hr',50000),(102, 'amreen', 'it',45000),(103, 'john', 'ece',70000),
(104, 'sneha', 'hr',35000),(105, 'rahul', 'it',100000),(106, 'aarti', 'civil',20000),(107, 'amy','mech',25000),
(108, 'harry', 'hr',60000),(109, 'reem', 'it',100000),(110, 'jane', 'ece',20000),(111, 'naine', 'hr',50000),
(112, 'robert', 'it',85000),(113, 'grenger','civil',100000),(114, 'amy','mech',65000);
select * from employee;
select name, id, dept,salary, nth_value(salary,2) over(partition by dept order by salary desc rows between unbounded preceding and unbounded following) from employee;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
select max(salary),dept from employee where salary<(select max(salary) from employee);
select id,name,dept from employee where name like "a%";
update employee set name ="ahan" where id=114;
SET SQL_SAFE_UPDATES = 0;
UPDATE employee SET name = 'ahan' WHERE id = 114;
update employee set salary='100000' where dept ='hr';
select * from employee;
use Company;
select count(*) from employee where dept='it';
SELECT * FROM employee ORDER BY salary desc;
SET SQL_SAFE_UPDATES = 0;
select * from employee limit 5;