CREATE DATABASE CafeDB

CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'C[0-9][0-9][0-9][0-9]'),
	CustomerName VARCHAR(255) NOT NULL
)

CREATE TABLE Staff(
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'S[0-9][0-9][0-9][0-9]'),
	StaffName VARCHAR(255) NOT NULL,
	StaffPosition VARCHAR(255) NOT NULL,
	StaffAbsen DATE,
	StaffCuti INT,
	StaffSalary INT
)

CREATE TABLE ProductMaterial(
	ProductMaterialID CHAR(5) PRIMARY KEY CHECK(ProductMaterialID LIKE 'PM[0-9][0-9][0-9]'),
	ProductMaterialName VARCHAR(255) NOT NULL,
	ProductMaterialPrice INT,
	ProductMaterialStock INT
)

CREATE TABLE Product(
	ProductID CHAR(5) PRIMARY KEY CHECK(ProductID LIKE 'P[0-9][0-9][0-9][0-9]'),
	ProductMaterialID CHAR(5) FOREIGN KEY REFERENCES ProductMaterial(ProductMaterialID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	ProductName VARCHAR(255) NOT NULL,
	ProductPrice INT NOT NULL,
	ProductStock INT NOT NULL,
)


CREATE TABLE TransactionDetail(
	TransactionID CHAR(5) PRIMARY KEY CHECK(TransactionID LIKE 'T[0-9][0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID) ON
UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	ProductID CHAR(5) FOREIGN KEY REFERENCES Product(ProductID) ON
UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) ON
UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionTotal INT NOT NULL,
	TransactionQty INT NOT NULL,
	TransactionDate Date NOT NULL,
	PaymentType VARCHAR(255) NOT NULL
)