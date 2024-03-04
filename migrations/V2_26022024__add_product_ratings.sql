USE eCommerceDB;
GO

-- Create Product rating table
CREATE TABLE ProductRating
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Rating FLOAT,
    ProductId INT
);

-- Add CHECK constraint to ensure Rating is between 1 and 10
ALTER TABLE ProductRating
    ADD CONSTRAINT CHK_RatingRange
        CHECK (Rating BETWEEN 1 AND 10);

-- Add foreign key constraint to link ProductRating and Product tables
ALTER TABLE ProductRating
    ADD CONSTRAINT FK_Product_ProductRating
        FOREIGN KEY (ProductId) REFERENCES Product(Id);