
/* BASICS OF MYSQL */
show tables;
show databases;
create database Practice;
show databases;
use Practice;
show databases;


create table t1(
id int primary key,
age int check (age>20),
name varchar(50));

show tables;

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT CHECK (Age >= 0 AND Age <= 99),
    Phone int(10)
);

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23','9866598'),
       (2, 'Aman ', 'Chopra', 'Australia','21','98776543'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24','8976543'),
       (4, 'Aditya', 'Arpan', 'Austria','21','2345789'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','98609765');
       
create table sub as
select CustomerID,Country
from Customer;
select * from sub;
select * from Customer;

drop table t1;
show tables;
drop table if exists cat;

create table t3(
id int primary key,
name varchar(60) not null);

insert into t3(id ,name)values (6,'ara'),(2,'dd'),(8,'do');
select * from t3;

delete from t3 where id = 8;
rollback;
select * from t3;
start transaction;
delete from t3 where id = 6;
rollback;
select * from t3;
insert into t3 (id,name) values (10,'lll'),(12,'uuu');
commit;
delete from t3 where id = 12;
rollback;
select * from t3;

START TRANSACTION;

INSERT INTO t3 (id, name) VALUES (19, 'llnnl'), (18, 'uukku');
DELETE FROM t3 WHERE id = 19;
ROLLBACK;  
SELECT * FROM t3;

alter table t3 rename to t33;
select * from t33;
alter table t33 add f_name varchar(50);
alter table t33 rename column f_name to first_name;
select * from t33;

show tables;
show databases;
use practice;
show tables;
create table back as select * from customer;
create table b1 as select Age from customer where 1 = 2;
select * from customer;

CREATE TEMPORARY TABLE EmpDetails (
    id INT,
    name VARCHAR(25)
);

INSERT INTO EmpDetails VALUES (1, 'Lalit'), (2, 'Atharva');
SELECT * FROM EmpDetails;

create table Student(
id int primary key,
name varchar(70),
class integer);

insert into Student (id,name,class) values (108,'pramod',7),(109,'kiran',9);

Alter table Student
add (age int);

 ALTER TABLE Student 
 MODIFY name varchar(20);
 
 SELECT * FROM Student 
WHERE id = 108 AND name like  'p%';

