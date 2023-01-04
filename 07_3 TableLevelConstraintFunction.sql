-- Table-level CHECK Constraints based on a function
USE SHEINTEAM3;

select * from ReturnShipInfo;

-- Create table-level check function that a return shipment can't be issued if a return request date is larger than 30 day
-- from the order deliver day
GO 
CREATE FUNCTION CheckReturnShipRequest (@RetID int)
RETURNS int
AS
BEGIN
   DECLARE @Flag int;
   IF (select orderMainTain
       from (select rs.ReturnID, DATEDIFF(Day, ro.ReturnRequestDate, si.DeliverDate) as orderMaintain
			 from ReturnShipInfo rs
		     join ReturnOrder ro
   			 on rs.ReturnID = ro.ReturnID
			 join ShipmentInfo si
			 on si.OrderID = ro.OrderID) t
		where t.ReturnID = @RetID) > 30
   SET @Flag = 0
   ELSE SET @Flag = 1
   RETURN @Flag
END;
GO 


-- Add table-level CHECK constraint based on the new function for the Reservation table
ALTER TABLE ReturnShipInfo ADD CONSTRAINT BanReturnShipRequest CHECK (dbo.CheckReturnShipRequest(ReturnID) = 0);

-- check
SET IDENTITY_INSERT dbo.SheinOrder ON;

INSERT INTO dbo.SheinOrder(OrderID,CustomerID,OrderDate)
VALUES(10020, 28, '12-01-2021');

SET IDENTITY_INSERT dbo.SheinOrder OFF;
SET IDENTITY_INSERT dbo.ShipmentInfo ON;

INSERT INTO dbo.ShipmentInfo(ShipmentID, OrderID, ShipmentMethod, StartDate, DeliverDate,
ShipmentPrice, ShipCountry, ShipState, ShipCity, ShipPostCode, ShipAddressNumber, 
DeliverLastName, DeliverFirstName, ContactPhone, ContactEmail)
VALUES('223466', '10020', 'Ground', '2021-12-02', '2022-01-05','7.00', 'United States', 'CA',
'Berkeley', '94708', '1168', 'Lee', 'Pororo', '5102987465', 'pororolee@gmail.com');

SET IDENTITY_INSERT dbo.ShipmentInfo OFF;
SET IDENTITY_INSERT dbo.ReturnOrder ON;


INSERT INTO dbo.ReturnOrder(ReturnID,OrderID,ReturnMethod,Received, ReturnRequestDate)
VALUES('8447992','10020','Mail','0', '2022-04-15');


SET IDENTITY_INSERT dbo.ReturnOrder OFF;
SET IDENTITY_INSERT dbo.ReturnShipInfo ON;


-- error example, The Insert statement conflicted with the CHECK constraint "BanReturnShipRequest". 
-- The conflict occurred in database "SHEINTEAM3", table "dbo.ReturnShipInfo", column 'ReturnID'.
INSERT INTO dbo.ReturnShipInfo(ShipmentID, ReturnID, StartDate, DeliverDate, ReturnShipPrice)
VALUES
('223476','8447992','2022-04-16', Null, '5.00');


/* for house keeping
ALTER TABLE dbo.ReturnShipInfo   
DROP CONSTRAINT BanReturnShipRequest;

DROP FUNCTION dbo.CheckReturnShipRequest; */



--Check each row has unique customer name, this helps the company to calculate growth of new users more accurately. 
ALTER TABLE CustomerProfile ADD CONSTRAINT UniqueCustomer
UNIQUE(CustomerFirstName, CustomerLastName);

--check 
SET IDENTITY_INSERT dbo.CustomerProfile ON;

-- error example,Violation of UNIQUE KEY constraint 'UniqueCustomer'. Cannot insert duplicate key in object 'dbo.CustomerProfile'. 
-- The duplicate key value is (Emily, Johnson).
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, 
LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES(31, 'Emily','Johnson','F','02-06-1988','Emaily0206@gmail.com','USA','WA','Bothell','98021','387','Yes');









