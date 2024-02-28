-- This script will rollback the database to its V1 state
USE
eCommerceDB;
GO

-- Drop the CheckRating constraint, that ensure that the rating is between 1 and 10
ALTER TABLE ProductRating
    DROP CONSTRAINT CHK_RatingRange;

-- Drop ProductId constraint on ProductRating table
ALTER TABLE ProductRating
    DROP CONSTRAINT FK_Product_ProductRating;

-- Drop the ProductRating table
DROP TABLE ProductRating;


