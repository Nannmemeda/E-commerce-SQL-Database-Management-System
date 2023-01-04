USE SHEINTEAM3;


-- Create age computed column for customer
ALTER TABLE dbo.CustomerProfile 
ADD Age AS DATEDIFF(hour,BirthDate,GETDATE())/8766;

SELECT Max(Age)
FROM CustomerProfile;


-- Compute OrderAmount for an Order produced by customer             
CREATE FUNCTION CalcOrderAmount(@OrdID INT)
RETURNS MONEY
AS
   BEGIN
      DECLARE @total MONEY =
         (SELECT OrderAmount
          FROM (SELECT o.OrderID, p.ProductPrice * op.ProductQty as OrderAmount
              FROM SheinOrder o
              JOIN OrderProduct op
              ON o.OrderID = op.OrderID
              JOIN ProductDetail p
              ON op.ProductID = p.ProductID) t
          WHERE OrderID =@OrdID);
      SET @total = ISNULL(@total, 0);
      RETURN @total;
END;

-- Add a computed column to the SheinOrder
ALTER TABLE SheinOrder
ADD OrderAmount AS (dbo.CalcOrderAmount(OrderID));

-- See what the computed column looks like
SELECT TOP 10 *
FROM SheinOrder
ORDER BY OrderAmount DESC;

-- Clean up what we just created
ALTER TABLE SheinOrder DROP COLUMN OrderAmount;

DROP FUNCTION dbo.CalcOrderAmount;














