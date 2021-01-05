--CREATE TABLE

create table Employee(Emp_id int primary key,Emp_Name varchar(50),Post varchar(60),Salary int);
select * from Employee;

--INSERT VALUES IN Employee TABLE
insert into Employee values(21,'Prasad','Data Scientist',78000);
insert into Employee values(22,'Pravin','Data Analytics',62000);
insert into Employee values(23,'Akash','Data Engineer',71000);
insert into Employee values(24,'Avinash','Data Visualization',58000);
insert into Employee values(25,'Sandy','SAP Devloper',42000);
select * from Employee;

--READ RECORD IN TABLE
select * from employee;
select EMP_NAME,POST from employee;
select emp_id from employee;
select salary from employee where emp_id=24;

--UPDATE RECORD IN TABLE
update employee set Post='SAP-HR' where Emp_id=25;
update employee set salary=98000 where post='Data Visualization';
select * from employee;

--DELETE RECORD FROM TABLE
delete from employee where emp_id=25;
delete from employee where Salary=71000;
select * from employee;

-- Where Clause
select emp_name,Post from employee where emp_id=22;
select emp_name,Post from employee where post='Data Scientist';

-- Operators(AND,OR,NOT) with Where Clause
-- AND Operator(Both Condition Must True)
select Emp_name from employee where emp_id=24 And salary=98000;
select Emp_name from employee where salary=78000 And emp_id=21;
select Emp_id from employee where Emp_name='Pravin' And post='Data Analytics';

-- OR Operator(One Condition Will Must True)
select Emp_id from employee where Emp_name='Prasad' or post='Data Analytics';
select Emp_name from employee where Emp_id=22 or post='Data Scientist';
select post from employee where Emp_name='Pravin' or salary=98000;

insert into employee values(&emp_id,&emp_name&post,&salary);
select * from employee;

--LIKE COMMAND
select * from employee where emp_name LIKE 'P%';
select * from employee where emp_name LIKE '%vin%';
select * from employee where emp_name LIKE '_r%';
select * from employee where emp_name LIKE '__a%';

--INSETE MORE RECORDS
insert into employee values(23,'Ashish','PSI',32000);
insert into employee values(98,'Kartik','Devloper',42000);
insert into employee values(26,'Ganesh','Doctor',65000);
insert into employee values(27,'Prakash','Engineer',87000);
insert into employee values(28,'Gitesh','Software Engineer',67000);
insert into employee values(29,'Swapnil','Artist',32000);
insert into employee values(30,'Anuja','Designer',23000);
insert into employee values(31,'Sakshi','Makeup Artist',93000);
insert into employee values(32,'Rageshri','Singer',42000);
insert into employee values(33,'Yogeshri','Housewife',54000);
select * from employee;

--ORDER BY COMMAND
Select * from employee order by emp_id;
select * from employee order by emp_id desc;
select * from employee order by emp_name asc;
select * from employee order by Salary asc;

--IN OPERATOR
select * from employee where post in ('Singer','PSI','Doctor');

--BETWEEN OPERATOR
select * from employee where emp_id BETWEEN 25 AND 33;
select * from employee where emp_id BETWEEN 25 AND 33;

--Pseudo Columns

select sysdate from dual;
select systimestamp from dual;
select uid from dual;
select user from dual;

--CREATE SEQUENCE
create sequence id_seq minvalue 1 maxvalue 9999 start with 1 cache 20; 

--USE SEQUENCE in Table
--Using Nextval
create table Tab1(id int,Name varchar(50));
insert into Tab1 values(id_seq.nextval,'Rohit');
insert into Tab1 values(id_seq.nextval,'Sachin');
insert into Tab1 values(id_seq.nextval,'Virat');
insert into Tab1 values(id_seq.nextval,'Dhoni');
insert into Tab1 values(id_seq.nextval,'Hardik');
insert into Tab1 values(id_seq.nextval,'Raina');

--Using Currval
insert into Tab1 values(id_seq.currval,'Ishant');
select * from Tab1;

--RENAME TABLE NAME 
SELECT * FROM Employee;
rename Employee to Employees;
SELECT * FROM Employees;

Select * from Tab1;
rename Tab1 to Cricket;
Select * from Cricket;

--DROP TABLE
drop table Cricket;
Select * from Cricket;

--SAVEPOINT,ROLLBACK & COMMIT Commands
savepoint s1;
create table Cricket(Id int,Name varchar(50));
insert into Cricket Values(10,'Sachin');
insert into Cricket Values(12,'Yuvraj');
insert into Cricket Values(8,'Dhoni');
insert into Cricket Values(3,'Raina');
insert into Cricket Values(18,'Virat');
select * from Cricket order by id asc;
Update Cricket set Name='M.S.Dhoni' where id=8;
delete from Cricket where id=18;
select * from cricket;

Roll back to s1; 

SELECT * FROM Cricket;
savepoint s2;
Create table tab1(id int,Name varchar(50));
insert into tab1 values(1,'Ram');
insert into tab1 values(2,'sham');
insert into tab1 values(3,'lakhan');
select * from tab1;
delete from tab1 where id=1;
commit;

roll back s2;
select * from tab1;
   
   

