Create Database Shopping

Use Shopping
Create Table Customers
(
 CustomerId int Not Null,
 Age int,
 email varchar(20),
)


--Alter Table Customers 
--Alter Column CustomerId int NOT NULL
Alter Table Customers add Constraint pk Primary Key (CustomerId)


Alter Table Customers add constraint ageCheck Check(Age>18 and Age<30)


Alter table Customers add Constraint unq Unique(email)

Create Table Orders
(
CustomerId int
)



Alter table Orders
Add Constraint fk Foreign Key (CustomerId) references Customers(CustomerId)