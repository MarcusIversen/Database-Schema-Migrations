-- Create eCommerceDB database
CREATE
DATABASE eCommerceDB;
GO

USE eCommerceDB;
GO

-- Create Product table
CREATE TABLE Product
(
    Id    INT PRIMARY KEY IDENTITY(1,1), -- Primary key for Product table
    Name  NVARCHAR(255) NOT NULL,        -- Name of the product
    Price DECIMAL(10, 2) NOT NULL        -- Price of the product
);