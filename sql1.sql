CREATE DATABASE myStudent;
USE myStudent;
CREATE TABLE myStudent (id INT,name VARCHAR(100),dept VARCHAR(100));
INSERT INTO myStudent VALUES (101, 'geeks', 'cse'),(102, 'amreen', 'it'),(103, 'john', 'ece'),
(104, 'sneha', 'eee'),(105, 'rahul', 'mech'),(106, 'fatima', 'civil');
select * from mystudent;
ALTER TABLE mystudent ADD salary int;
select * from mystudent;
UPDATE myStudent SET salary = 50000 WHERE id = 101;
UPDATE myStudent SET salary = 48000 WHERE id = 102;
UPDATE myStudent SET salary = 47000 WHERE id = 103;
UPDATE myStudent SET salary = 53000 WHERE id = 104;
UPDATE myStudent SET salary = 46000 WHERE id = 105;
UPDATE myStudent SET salary = 52000 WHERE id = 106;
select* FROM myStudent;
set sql_safe_updates=0;
select max(salary) AS max_salary FROM myStudent;
select min(salary) AS max_salary FROM myStudent;

select sum(salary),dept from mystudent group by dept;
select sum(salary),dept from myStudent group by dept having sum(salary)>50000;
select * from myStudent where salary between 45000 and 50000;
