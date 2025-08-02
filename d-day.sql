create database demo;
use demo;
CREATE TABLE employee (id INT PRIMARY KEY,name VARCHAR(50),department varchar(30),salary decimal(10,2),joindate date);
insert into employee values(101, 'geeks', 'hr',50000,'2025-10-12'),(102, 'amreen', 'it',45000,'2025-11-21'),
(103, 'john', 'ece',70000,'2025-9-24'),(104, 'sneha', 'hr',35000,'2025-7-10'),(105, 'rahul', 'it',100000,'2025-8-06'),
(106, 'aarti', 'civil',20000,'2025-8-05'),(107, 'amy','mech',25000,'2025-10-10'),
(108, 'harry', 'hr',60000,'2025-12-12'),(109, 'reem', 'it',100000,'2025-10-5'),(110, 'jane', 'ece',20000,'2025-2-28');
select*from employee;
select id,name,department,salary,row_number()over(order by salary desc) as row_num from employee;
select id,name,department,salary,row_number()over(PARTITION BY department ORDER BY salary DESC) as row_num from employee;
update employee set department ="civil" where id=103;
select id, name,department,salary,rank() over(order by salary desc)as highest_sales_rank,
dense_rank()over(order by salary desc)as highest_sales_dense_rank from employee;
select id,name,department,salary,lag(salary)over(partition by department) as lag_salary,
lead(salary)over(partition by department)As lead_salary from employee;
select id,name,salary,joindate,lag(salary) over (order by joindate)-salary as diff_salary from employee;
