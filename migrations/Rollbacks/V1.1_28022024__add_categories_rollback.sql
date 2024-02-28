-- This script will rollback the database to its initial state
USE
eCommerceDB;
GO

-- Drop CategoryId constraint on Product table
ALTER TABLE Product
    DROP CONSTRAINT FK_Product_Category;

-- Drop CategoryId column from Product table, 
ALTER TABLE Product
    DROP COLUMN CategoryId;

-- Drop Category table
DROP TABLE Category;