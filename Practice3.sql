use Practice;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Country VARCHAR(50)
);
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES 
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico');
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES 
(10308, 2, '1996-09-18'),
(10309, 3, '1996-09-19'), 
(10310, 1, '1996-09-20'); 

select orders.orderid,customers.customerName,orders.orderdate from 
orders inner join customers on orders.customerid = customers.customerid;

select orders.orderid,customers.customerName,orders.orderdate from 
orders left join customers on orders.customerid = customers.customerid;

select orders.orderid,customers.customerName,orders.orderdate from 
orders right join customers on orders.customerid = customers.customerid;

select orders.orderid,customers.customerName,orders.orderdate from 
orders cross join customers on orders.customerid = customers.customerid;

select orders.orderid,customers.customerName,orders.orderdate from 
orders self join customers on orders.customerid = customers.customerid;

SELECT A.CustomerName AS Customer1,B.CustomerName AS Customer2,A.Country FROM Customers A JOIN Customers B ON 
    A.Country = B.Country AND A.CustomerID <> B.CustomerID;
    
CREATE TABLE Cus (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

INSERT INTO Cus (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');


CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country)
VALUES 
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA'),
(3, 'Grandma Kelly''s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA');

select city from cus where Customerid = 1 union select city from suppliers where supplierID = 2;

SELECT City, Country FROM Cus
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT City, Country FROM Cus
WHERE Country='Germany'
UNION 
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

CREATE TABLE Sales (
    Product VARCHAR(50),
    Region VARCHAR(50),
    Amount INT
);
INSERT INTO Sales (Product, Region, Amount) VALUES
('Pen', 'East', 10),
('Pen', 'West', 15),
('Pencil', 'East', 5),
('Pen', 'East', 20);

select Product,sum(amount) as Total_amount
from Sales group by Product ;

use practice;
select count(Supplierid),ContactName,Postalcode,address from Suppliers
group by Contactname,Postalcode,address order by count(Supplierid) desc;
