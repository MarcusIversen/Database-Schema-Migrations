CREATE
Database eCommerceDB;
GO

USE eCommerceDB;
GO

CREATE TABLE Product
(
    Id    INT PRIMARY KEY IDENTITY(1,1),
    Name  NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
);