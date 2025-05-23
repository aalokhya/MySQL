SHOW ENGINES;

CREATE TABLE StudentDetails (
   Student_Id INT AUTO_INCREMENT,       
   First_name VARCHAR (100) NOT NULL,       
   Last_name VARCHAR (100) NOT NULL,      
   Date_Of_Birth DATE NOT NULL,       
   Class VARCHAR (10) NOT NULL,       
   Contact_Details BIGINT NOT NULL,      
   PRIMARY KEY(Student_Id )       
);

INSERT INTO     
StudentDetails(First_name , Last_name , Date_Of_Birth , Class, Contact_Details)    
VALUES 
('Amit', 'Jana', '2004-12-22', 'XI', 1234567890),    
('Manik', 'Aggarwal', '2006-07-04', 'IX', 1245678998),    
('Nitin', 'Das', '2005-03-14', 'X', 2245664909),    
('Priya', 'Pal', '2007-07-24', 'VIII', 3245642199),    
('Biswanath', 'Sharma', '2005-11-11', 'X', 2456789761),    
('Mani', 'Punia', '2006-01-20', 'IX', 3245675421),    
('Pritam', 'Patel', '2008-01-04', 'VII', 3453415421),    
('Sayak', 'Sharma', '2007-05-10', 'VIII' , 1214657890),
('Aki','suresh',CURRENT_DATE(),'X', 2389769);

SELECT * FROM StudentDetails ;

select distinct Class from StudentDetails;
select COUNT(distinct Class) from StudentDetails;

select first_name from StudentDetails where NOT first_name = "hello";
SELECT first_name, class 
FROM StudentDetails 
WHERE class BETWEEN 'VIII' AND 'X';
SELECT * FROM StudentDetails
WHERE first_name = 'Nithin' AND (class = 'X' OR class = 'VIII');
select  first_name,class from Studentdetails order by class asc;

CREATE USER gfguser1@localhost IDENTIFIED BY 'abcd';
SHOW GRANTS FOR gfguser1@localhost;
DROP USER 'gfguser1'@'localhost';

create database if not exists db1;
drop database db1;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');

select customerName,customerID from Customers where address is null;
select customerName,customerID from Customers where address is not null;

update Customers set Customername = "pink" where Customerid = 3;
select * from Customers;

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(50),
    Price DECIMAL(10, 2)
);
-- Insert values into Products table
INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18.00),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35);

select min(price) AS price_min
from products;

select max(price) AS price_max
from products;

SELECT COUNT(ProductID) as Count_p
FROM Products;

SELECT sum(Price) as total
FROM Products;

SELECT avg(Price) as Avg_P
FROM Products;

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a_%';

select * from customers
where Contactname LIKE 'a%o';

SELECT * FROM Customers
WHERE City LIKE 'ber%';

SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);




