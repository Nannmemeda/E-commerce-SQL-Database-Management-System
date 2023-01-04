USE SHEINTEAM3;
-- Customer Analysis

-- View for Customer age distribution

CREATE VIEW vwCustomerAgeDistribution
	AS
	SELECT TOP 100 Age, count(*) AS AgeDistribution
	FROM dbo.CustomerProfile
	GROUP BY Age 
	ORDER BY Age;

-- Alter view for Customer Age Raneg Distribution
ALTER VIEW vwCustomerAgeDistribution  
AS
select AgeRange, gender, Count(CustomerID) as Distribution
from (select CustomerID, gender,
	   case when Age >= 20 and Age < 30 then 'Age20To30'
	   		when Age >= 30 and Age < 40 then 'Age30To40'
	   		else 'AgeOver40'
	   	end as AgeRange
from CustomerProfile) t
group by t.AgeRange, t.gender;

-- View for Customer Gender distribution

CREATE VIEW vwCustomerGenderDistribution
	AS
	SELECT Gender, count(*) AS GenderDistribution
	FROM dbo.CustomerProfile
	GROUP BY Gender;

--View for Customer district distribution BY STATE


CREATE VIEW vwDistrictDistribution
	AS
	SELECT TOP 100 State, count(*) AS DistrictDistribution
	FROM dbo.CustomerProfile
	GROUP BY State
	ORDER BY State;


-- View for Customer product's category preference with age distribution 
	

CREATE VIEW vwProductCategoryWithAgeDistribution
	AS
	SELECT TOP 1000 pc.CategoryName, cp.Age, COUNT(*) AS Distribution
	FROM dbo.OrderProduct op 
	INNER JOIN dbo.SheinOrder so ON op.OrderID = so.OrderID 
	INNER JOIN dbo.CustomerProfile cp ON so.CustomerID = cp.CustomerID 
	INNER JOIN dbo.ProductDetail pd ON op.ProductID = pd.ProductID 
	INNER JOIN dbo.ProductCategory pc ON pd.CategoryID = pc.CategoryID 
	GROUP BY pc.CategoryName, cp.Age
	ORDER BY pc.CategoryName, cp.Age;

UPDATE ProductDetail SET ProductName = 'PlaidAlter Double Breasted Pea Coat' WHERE ProductID = 200016;
UPDATE ProductDetail SET ProductName = 'SHEIN XXX Lee Chester Splash Ink Print Cross Wrap Cut Out Bodycon Dress' WHERE ProductID = 200003;

ALTER VIEW vwProductCategoryWithAgeDistribution  
AS
SELECT TOP 1000 pc.CategoryName, t.gender, t.AgeRange, COUNT(*) AS Distribution
	FROM OrderProduct op 	
	INNER JOIN dbo.SheinOrder so ON op.OrderID = so.OrderID 
	INNER JOIN (select  c.CustomerID,
						c.gender,
			            case when c.Age >= 20 and c.Age < 30 then 'Age20To30'
			   		         when c.Age >= 30 and c.Age < 40 then 'Age30To40'
			   		         else 'AgeOver40'
			   	        end as AgeRange
           from dbo.CustomerProfile c) t
	      ON so.CustomerID = t.CustomerID 
	INNER JOIN dbo.ProductDetail pd ON op.ProductID = pd.ProductID 
	INNER JOIN dbo.ProductCategory pc ON pd.CategoryID = pc.CategoryID 
	GROUP BY pc.CategoryName, t.AgeRange, t.gender
	ORDER BY pc.CategoryName, t.AgeRange, t.gender;


-- View for Customer product (or category) preference with district distribution 

CREATE VIEW vwProductCategoryWithDistrictDistribution
	AS
	SELECT TOP 1000 pc.CategoryName, cp.State, COUNT(*) AS Distribution
	FROM dbo.OrderProduct op 
	INNER JOIN dbo.SheinOrder so ON op.OrderID = so.OrderID 
	INNER JOIN dbo.CustomerProfile cp ON so.CustomerID = cp.CustomerID 
	INNER JOIN dbo.ProductDetail pd ON op.ProductID = pd.ProductID 
	INNER JOIN dbo.ProductCategory pc ON pd.CategoryID = pc.CategoryID 
	GROUP BY pc.CategoryName, cp.State
	ORDER BY pc.CategoryName, cp.State;



-- Sales Trend Analysis, update sales trend since product values in productdetail have been updated


-- VIEW FOR TOP 5 Popular Products

CREATE VIEW TOP5PopularProduct AS
SELECT ProductID,ProductName, ProductQty FROM(
SELECT pd.ProductID,pd.ProductName,ProductQty,
RANK() OVER (ORDER BY ProductQty DESC) AS [Rank]
FROM dbo.ProductDetail pd
JOIN OrderProduct op 
ON pd.ProductID = op.ProductID 
JOIN dbo.SheinOrder so
ON op.OrderID = so.OrderID
GROUP BY pd.ProductID,pd.ProductName,ProductQty) temp
WHERE RANK < 6;

-- VIEW FOR TOP 5 Return Product

CREATE VIEW Top5ReturnProduct AS
SELECT ProductID,ProductName,ReturnQty FROM(
SELECT pd.ProductID,pd.ProductName,ReturnQty,
RANK() OVER (ORDER BY ReturnQty DESC) AS [Rank]
FROM dbo.ProductDetail pd
JOIN ReturnProduct rp
ON pd.ProductID = rp.ProductID 
JOIN dbo.ReturnOrder ro
ON ro.ReturnID = rp.ReturnID
GROUP BY pd.ProductID,pd.ProductName,ReturnQty) temp1
WHERE Rank < 6;

-- VIEW FOR TOP 5 Popular Products BY MONTH 

CREATE VIEW TOP5PopularProductByMonth AS
SELECT ProductID,ProductName,ProductQty,Month
FROM(
SELECT pd.ProductID,pd.ProductName,ProductQty,DATEPART(MONTH,PaymentDate) AS [Month],
RANK() OVER (PARTITION BY DATEPART(MONTH,PaymentDate) ORDER BY ProductQty DESC) AS 
ProductMonthRank 
FROM dbo.ProductDetail pd
JOIN OrderProduct op 
ON pd.ProductID = op.ProductID 
JOIN dbo.SheinOrder so
ON op.OrderID = so.OrderID
JOIN OrderPaymentInfo opi
ON opi.OrderID = so.OrderID
GROUP BY pd.ProductID,pd.ProductName,ProductQty,DATEPART(MONTH,PaymentDate)) TEMP 
WHERE ProductMonthRank<6;


ALTER VIEW TOP5PopularProduct AS
SELECT ProductID,ProductName, ProductQty FROM(
SELECT pd.ProductID,pd.ProductName,ProductQty,
DENSE_RANK() OVER (ORDER BY ProductQty DESC) AS [Rank]
FROM dbo.ProductDetail pd
JOIN OrderProduct op 
ON pd.ProductID = op.ProductID 
JOIN dbo.SheinOrder so
ON op.OrderID = so.OrderID
GROUP BY pd.ProductID,pd.ProductName,ProductQty) temp
WHERE RANK < 6;


ALTER VIEW Top5ReturnProduct AS
SELECT ProductID,ProductName,ReturnQty FROM(
SELECT pd.ProductID,pd.ProductName,ReturnQty,
RANK() OVER (ORDER BY ReturnQty DESC) AS [Rank]
FROM dbo.ProductDetail pd
JOIN ReturnProduct rp
ON pd.ProductID = rp.ProductID 
JOIN dbo.ReturnOrder ro
ON ro.ReturnID = rp.ReturnID
GROUP BY pd.ProductID,pd.ProductName,ReturnQty) temp1
WHERE Rank < 6;


Alter VIEW TOP5PopularProductByMonth AS
SELECT ProductID,ProductName,ProductQty,Month
FROM(
SELECT pd.ProductID,pd.ProductName,ProductQty,DATEPART(MONTH,PaymentDate) AS [Month],
RANK() OVER (PARTITION BY DATEPART(MONTH,PaymentDate) ORDER BY ProductQty DESC) AS 
ProductMonthRank 
FROM dbo.ProductDetail pd
JOIN OrderProduct op 
ON pd.ProductID = op.ProductID 
JOIN dbo.SheinOrder so
ON op.OrderID = so.OrderID
JOIN OrderPaymentInfo opi
ON opi.OrderID = so.OrderID
GROUP BY pd.ProductID,pd.ProductName,ProductQty,DATEPART(MONTH,PaymentDate)) TEMP 
WHERE ProductMonthRank<6;





