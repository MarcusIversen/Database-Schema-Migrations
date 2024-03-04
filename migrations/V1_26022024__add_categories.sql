USE
eCommerceDB;
GO

-- Add CategoryId column to Product table
ALTER TABLE Product
    ADD CategoryId INT;

-- Create category table
CREATE TABLE Category
(
    Id   INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
);

-- Add foreign key constraint to link Product and Category tables
ALTER TABLE Product
    ADD CONSTRAINT FK_Product_Category
        FOREIGN KEY (CategoryId) REFERENCES Category (Id);