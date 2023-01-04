/* Shein E-commerce Platform Database, Team 3
   Zhiqing Wang, Wenwei Li,  Chengran He, Jiayue Han, Xinan Wang
   DDL for Shein Database */

CREATE DATABASE SHEINTEAM3;

USE SHEINTEAM3;


-- CustomerProfile
CREATE TABLE dbo.CustomerProfile(
CustomerID int IDENTITY NOT NULL PRIMARY KEY,
CustomerFirstName varchar(40) NOT NULL,
CustomerLastName varchar(40) NOT NULL,
Gender varchar(1) NOT NULL,
BirthDate date NOT NULL,
LoginEmail varchar(100) NOT NULL,
Country varchar(20) NOT NULL,
State varchar(20) NOT NULL,
City varchar(20) NOT NULL,
PostCode int NOT NULL,
StreetNumber int NOT NULL,
PaymentSaved varchar(3) NOT NULL);

 -- when needed, DROP TABLE dbo.CustomerProfile;

SELECT * FROM dbo.CustomerProfile;

SET IDENTITY_INSERT dbo.CustomerProfile ON;

INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (10, 'Emily','Johnson','F','02-06-1988','Emaily0206@gmail.com','USA','WA','Bothell','98021','387','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (11, 'Madison','Brown','M','05-08-1992','MadisonUSA@gmail.com','USA','WA','Bellevue','98006','274','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (12, 'Emma','Garcia','F','11-06-1998','Emma1106@gmail.com','USA','WA','Seattle','98109','857','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (13, 'Olivia','Davis','F','05-04-1994','19940504USA@gmail.com','USA','WA','Kirkland','98034','472','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (14, 'Hannah','Rodriguez','F','06-06-1985','Hannah123@gmail.com','USA','WA','Renton','98055','591','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (15, 'Abigail','Martinez','F','08-09-1978','Abigailgood@gmail.com','USA','CA','Temecula','92591','874','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (16,'Jay','Zhou','M','05-20-1990','Jayzhou@gmail.com','USA','AZ','Tucson','85705','853','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (17, 'Simon','Gong','M','11-24-1990','Simonsuperstar@gmail.com','USA','UT','Altamont','84001','985','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (18,  'Serein','Miller','F','06-12-1998','Serein987@gmail.com','USA','ID','Ketchum','83340','942','YES');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (19, 'Nancy','Lewis','F','09-06-1998','Emma1106@gmail.com','USA','MT','Bozeman','59715','738','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (20, 'Gary','Gao','M','07-02-1990','GavinGao@gmail.com','USA','WY','Powell','82435','473','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (21, 'Charis','Gao','M','07-08-1988','Charis@gmail.com','USA','WY','Powell','82435','473','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (22, 'Alice','Gu','F','12-12-1994','AliceXS@gmail.com','USA','WA','Seattle','98105','79','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (23, 'Felix','He','M','09-02-1994','FelixDF@gmail.com','USA','WA','Seattle','98105','87','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (24, 'Jerry','Hong','F','02-02-1999','Jerrydds@gmail.com','USA','WY','Powell','82435','198','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (25, 'Jay','Brown','M','01-19-1999','JayHDE@gmail.com','USA','WY','Powell','82435','42','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (26, 'Ruby','Brown','F','06-09-2000','RubyRan@gmail.com','USA','WA','Belleuve','98004','12','Yes');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (27, 'Jessica','Xia','F','06-09-1997','JessicaX@gmail.com','USA','WA','Belleuve','98004','13','No');
INSERT INTO dbo.CustomerProfile(CustomerID, CustomerFirstName, CustomerLastName, Gender, BirthDate, LoginEmail, Country, State, City, PostCode, StreetNumber, PaymentSaved) 
VALUES (28, 'Jim','Jiang','M','10-11-1993','JimJJ@gmail.com','USA','WY','Powell','82435','984','Yes');

-- check SELECT * FROM dbo.CustomerProfile;


-- Membership
CREATE TABLE dbo.Membership(
MembershipID int IDENTITY NOT NULL PRIMARY KEY,
CustomerID int NOT NULL REFERENCES dbo.CustomerProfile(CustomerID),
Membertype VARCHAR(30) NOT NULL,
MembershipStartDate date NOT NULL,
MembershipEndDate date NOT NULL,
Points int NOT NULL);

-- when needed, DROP TABLE dbo.Membership;

SET IDENTITY_INSERT dbo.CustomerProfile OFF;
SET IDENTITY_INSERT dbo.Membership ON;

INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1001, 10, 'White', '01-01-2022', '01-01-2023', 45);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1002, 11, 'Red', '01-01-2022', '01-01-2023', 300);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1003, 12, 'Black', '03-02-2022', '03-02-2023', 30);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1004, 13, 'Black', '01-08-2022', '04-08-2022', 13);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1005, 14, 'White', '01-08-2022', '02-08-2022', 10);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1006, 14, 'Red', '02-15-2022', '02-15-2023', 500);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1007, 15, 'Black', '12-21-2021', '12-21-2021', 1000);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1008, 17, 'White', '03-09-2022', '06-09-2022', 10);
INSERT INTO dbo.Membership(MembershipID, CustomerID, Membertype, MembershipStartDate, MembershipEndDate, Points)
VALUES (1009, 19, 'Red', '03-25-2022', '03-25-2023', 780);

-- check SELECT * FROM dbo.Membership;


-- ReferralHistory
CREATE TABLE dbo.ReferralHistory(
ReferralID int IDENTITY PRIMARY KEY,
CustomerID int NOT NULL REFERENCES dbo.CustomerProfile(CustomerID),
ReferredCustomerID int REFERENCES dbo.CustomerProfile(CustomerID),
ReceivedCashRewards int,
ReferralDate date);

-- when needed DROP TABLE dbo.ReferralHistory;


SET IDENTITY_INSERT dbo.Membership OFF;
SET IDENTITY_INSERT dbo.ReferralHistory ON;


INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1234, 11, 20, 10, '12-08-2021');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1235, 11, 13, 10, '12-10-2021');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1236, 13, 17, 10, '12-09-2021');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1237, 10, 19, 10, '11-09-2021');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1238, 10, 11, 10, '10-08-2021');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1239, 10, 14, 10, '01-15-2022');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1240, 10, 18, 10, '11-21-2021');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1241, 20, 22, 20, '02-21-2022');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1242, 20, 23, 20, '02-22-2022');
INSERT INTO dbo.ReferralHistory(ReferralID, CustomerID, ReferredCustomerID, ReceivedCashRewards, ReferralDate)
VALUES (1243, 23, 25, 30, '03-21-2022');

-- check SELECT * FROM dbo.ReferralHistory;

-- CustomerDefaultPayment
CREATE TABLE dbo.CustomerDefaultPayment(
DefaultPaymentID int IDENTITY NOT NULL PRIMARY KEY,
CustomerID int NOT NULL REFERENCES dbo.CustomerProfile(CustomerID),
DefaultPaymentMethod varchar(30) NOT NULL);

-- when needed DROP TABLE dbo.CustomerDefaultPayment;

SET IDENTITY_INSERT dbo.ReferralHistory OFF;
SET IDENTITY_INSERT dbo.CustomerDefaultPayment ON;

/* check
select CustomerID
from dbo.CustomerProfile
where PaymentSaved = 'Yes';
 */

INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (1, 10, 'CreditCard');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (2, 11, 'CreditCard');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (3, 13, 'Paypal');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (4, 16, 'ApplyPay');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (5, 17, 'ApplyPay');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (6, 18, 'WechatPay');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (7, 20, 'AliPay');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (8, 21, 'Paypal');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (9, 23, 'Paypal');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (10, 24, 'Paypal');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (11, 26, 'ApplyPay');
INSERT INTO dbo.CustomerDefaultPayment(DefaultPaymentID, CustomerID, DefaultPaymentMethod)
VALUES (12, 28, 'CreditCard');

-- check SELECT * FROM dbo.CustomerDefaultPayment;

-- wishlist
CREATE TABLE dbo.WishList(
	WishListID INT IDENTITY NOT NULL PRIMARY KEY,
	CustomerID INT NOT NULL REFERENCES dbo.CustomerProfile(CustomerID),
	WishListCreateDate DATE NOT NULL,
	WishListItemCnt INT NOT NULL);


-- when needed, DROP TABLE dbo.WishList;

SET IDENTITY_INSERT dbo.CustomerDefaultPayment OFF;
SET IDENTITY_INSERT dbo.WishList ON;

INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (108, 10, '2021-11-01', 5);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (109, 11, '2022-04-02', 7);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (110, 12, '2022-03-02', 4);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (111, 14, '2022-03-08', 11);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (112, 15, '2022-04-01', 6);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (113, 16, '2022-02-25', 10);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (114, 17, '2022-04-13', 3);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (115, 18, '2022-03-01', 16);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (116, 20, '2022-03-18', 1);
INSERT INTO dbo.WishList(WishListID, CustomerID,WishListCreateDate,WishListItemCnt) VALUES (117, 22, '2022-04-13', 2);


-- check SELECT * FROM dbo.WishList;



-- ProductCategory
CREATE TABLE dbo.ProductCategory(
CategoryID int IDENTITY NOT NULL PRIMARY KEY,
CategoryName varchar(40) NOT NULL);

SET IDENTITY_INSERT dbo.WishList OFF;
SET IDENTITY_INSERT dbo.ProductCategory ON;

INSERT INTO dbo.ProductCategory (CategoryID, CategoryName)
VALUES (1001, 'Tops');
INSERT INTO dbo.ProductCategory (CategoryID, CategoryName)
VALUES
       (1002, 'Dresses'),
       (1003, 'Bottoms'),
       (1004, 'TwoPeiecesSets'),
       (1005, 'Jumpsuits'),
       (1006, 'Sweatshirts'),
       (1007, 'Sweaters'),
       (1008, 'Coats'),
       (1009, 'Suits'),
       (1010, 'ActiveWear'),
       (1011, 'Denim'),
       (1012, 'BeachWear'),
       (1013, 'IntiMates'),
       (1014, 'Sleep'),
       (1015, 'Cosplay'),
       (1016, 'Wedding'),
       (1017, 'Materinity'),
       (1018, 'SheinCollections')
       ;

-- check SELECT * FROM ProductCategory;

CREATE TABLE dbo.ShoppingCart(
CartID int IDENTITY NOT NULL PRIMARY KEY,
CustomerID INT NOT NULL REFERENCES dbo.CustomerProfile(CustomerID),
CartPrice float NOT NULL,
CartItemCnt int NOT NULL,
CartStartStamp date NOT NULL,
CartEndStamp date NOT NULL);


SET IDENTITY_INSERT dbo.ProductCategory OFF;
SET IDENTITY_INSERT dbo.ShoppingCart ON;

INSERT INTO dbo.ShoppingCart (CartID, CustomerID, CartPrice, CartItemCnt,CartStartStamp, CartEndStamp)
VALUES (101, 10, 10, 1, '12-20-2021', '12-21-2021');
INSERT INTO dbo.ShoppingCart (CartID, CustomerID, CartPrice, CartItemCnt,CartStartStamp, CartEndStamp)
VALUES
       ('102', '10', 700, 2, '12-22-2021', '12-28-2021');
      
INSERT INTO dbo.ShoppingCart (CartID, CustomerID, CartPrice, CartItemCnt,CartStartStamp, CartEndStamp)
VALUES ('103', '10', 280, 2, '12-29-2021', '01-02-2022'),
       ('104', '11', 560, 4, '01-20-2022', '01-21-2022'),
       ('105', '11', 87, 1, '02-25-2022', '02-25-2022'),
       ('106', '11', 174, 2, '03-02-2022', '03-04-2022'),
       ('107', '12', 120, 1, '12-25-2021', '12-25-2021'),
       ('108', '13', 174, 2, '12-24-2021', '02-25-2022'),
       ('109', '14', 87, 1, '12-18-2021', '01-01-2022'),
       ('110', '14', 275, 5, '01-03-2022', '01-03-2022'),
       ('111', '15', 245, 3, '01-01-2022', '01-01-2022'),
       ('112', '15', 11, 1, '02-14-2022', '02-14-2022'),
       ('113', '15', 111, 3, '03-03-2021', '03-03-2022'),
       ('114', '15', 89, 1, '03-14-2022', '04-01-2022'),
       ('115', '16', 300, 4, '01-30-2022', '02-25-2022'),
       ('116', '16', 75, 1, '02-26-2022', '02-27-2022'),
       ('117', '16', 87, 1, '03-20-2022', '03-25-2022'),
       ('118', '17', 870, 10, '12-30-2021', '12-30-2021'),
       ('119', '18', 1044, 12, '01-13-2022', '01-14-2022'),
       ('120', '18', 20, 2, '02-04-2022', '02-04-2022'),
       ('121', '18', 30, 3, '03-28-2022', '03-30-2022'),
       ('122', '18', 240, 2, '04-01-2022', '04-02-2022'),
       ('123', '18', 55, 5, '04-08-2022', '04-10-2022'),
       ('124', '18', 185, 2, '04-09-2022', '04-09-2022'),
       ('125', '19', 550, 5, '12-17-2021', '12-18-2021'),
       ('126', '20', 38, 1, '12-31-2021', '12-31-2021');

-- check SELECT * FROM ShoppingCart;
 

-- ShoppingCartProduct

CREATE TABLE dbo.ShoppingCartProduct(
CartID int NOT NULL REFERENCES dbo.ShoppingCart(CartID),
ProductID int NOT NULL REFERENCES dbo.ProductDetail(ProductID)
CONSTRAINT PKShoppingCartProduct PRIMARY KEY CLUSTERED 
(CartID,ProductID));

SELECT * FROM ProductDetail;

INSERT INTO dbo.ShoppingCartProduct (CartID, ProductID)
VALUES ('101', '200001'), -- 10001 Product UnitPrice 10
       ('102', '200002'), -- 10002 Product UnitPrice 350
       ('103', '200003'), -- 10003 Product UnitPrice 140
       ('104', '200003'), -- same above
       ('105', '200004'), -- 10004 Product UnitPrice 87
       ('106', '200004'), -- same above
       ('107', '200005'), -- 10005 Product UnitPrice 120
       ('108', '200004'), -- same with 10004 Product
       ('109', '200004'), -- same above
       ('110', '200005'), -- same with 10005 Product
       ('110', '200006'), -- 10006 Product UnitPrice 30
       ('110', '200007'), -- 10007 Product UnitPrice 20
       ('110', '200008'), -- 10008 Product UnitPrice 15
       ('110', '200009'), -- 10009 Product UnitPrice 90
       ('111', '200010'), -- 10010 Product UnitPrice 110
       ('111', '200011'), -- 10011 Product UnitPrice 55
       ('111', '200012'), -- 10012 Product UnitPrice 80
       ('112', '200013'), -- 10013 Product UnitPrice 11
       ('113', '200013'), -- same above
       ('113', '200014'), -- 10014 Product UnitPrice 89
       ('114', '200014'), -- same above
       ('115', '200015'), -- 10015 Product UnitPrice 75
       ('116', '200015'), -- same above
       ('117', '200004'), -- same with 10004 Product
       ('118', '200004'), -- same with 10004 Product
       ('119', '200004'), -- same with 10004 Product
       ('120', '200001'), -- same with 10001 Product
       ('121', '200001'), -- same with 10004 Product
       ('122', '200005'), -- same with 10005 Product
       ('123', '200013'), -- same with 10013 Product
       ('124', '200015'), -- same with 10015 Product
       ('124', '200016'), -- 10016 Product UnitPrice 110
       ('125', '200016'), -- same with 10016 Product
       ('126', '200017'); -- 10017 Product UnitPrice 38

-- check SELECT * FROM ShoppingCartProduct;

-- WishListProduct
CREATE TABLE dbo.WishListProduct (
	WishListID INT NOT NULL REFERENCES dbo.WishList(WishListID),
	ProductID INT NOT NULL REFERENCES dbo.ProductDetail(ProductID)
	CONSTRAINT PKWishListProduct PRIMARY KEY CLUSTERED (WishListID,ProductID));

-- check SELECT * FROM dbo.WishListProduct;

INSERT INTO dbo.WishListProduct (WishListID, ProductID)
VALUES ('108', '200001'),
       ('109', '200002'),
       ('110', '200003'),
       ('111', '200003'),
       ('112', '200017'),
       ('113', '200013'),
       ('114', '200008'),
       ('115', '200009'),
       ('116', '200005'),
       ('117', '200017');
 
 -- SalesProduct
 CREATE TABLE dbo.SalesProduct(
	SalesID INT IDENTITY NOT NULL PRIMARY KEY,
	ProductID INT NOT NULL REFERENCES dbo.ProductDetail(ProductID),
	SalesStartDate DATE NOT NULL,
	SalesEndDate DATE NOT NULL,
	Discount INT NOT NULL,
	Inventory INT NOT NULL,
	FinalSale VARCHAR(20) NOT NULL);

DROP TABLE SalesProduct;

SET IDENTITY_INSERT dbo.WishList OFF;
SET IDENTITY_INSERT dbo.SalesProduct ON;

INSERT INTO dbo.SalesProduct(SalesID, ProductID, SalesStartDate, SalesEndDate, Discount, Inventory, FinalSale)
VALUES(312, 200004, '2022-01-01', '2020-01-05', 0.8, 55, 'N'),
      (313, 200001,'2022-04-28', '2018-05-05', 0.6, 450, 'Y'),
      (314, 200003, '2021-12-25', '2021-12-26', 0.9, 2080, 'N'),
      (315, 200014, '2021-12-31', '2022-01-10', 0.7, 874, 'Y'),
      (316, 200011, '2021-11-15', '2021-12-28', 0.9, 1297, 'N'),
      (317, 200012, '2022-01-01', '2022-01-15', 0.65, 3782, 'Y'),
      (318, 200010, '2022-02-14', '2022-02-27',0.85, 324, 'Y'),
      (319, 200010, '2022-03-17', '2022-04-17', 0.7, 765, 'N'),
      (320, 200017, '2021-12-17', '2022-01-05', 0.78, 1055, 'N'),
      (321, 200015, '2022-03-01', '2022-04-01', 0.65, 666, 'Y');


-- SheinOrder 
CREATE TABLE dbo.SheinOrder 
(
OrderID INT IDENTITY NOT NULL PRIMARY KEY,
CustomerID INT NOT NULL REFERENCES dbo.CustomerProfile,
OrderDate date,
);
-- when needed, DROP TABLE dbo.SheinOrder;
SELECT * FROM SheinOrder;

SET IDENTITY_INSERT dbo.SheinOrder ON;

INSERT INTO dbo.SheinOrder(OrderID,CustomerID,OrderDate)
VALUES(10001, 10, '01-01-2019');

INSERT INTO dbo.SheinOrder(OrderID,CustomerID,OrderDate)
VALUES(10002, 11, '01-05-2022'),
(10003, 12, '2022-01-06'),
(10004, 13, '2022-01-07'),
(10005, 14, '2022-01-08'),
(10006, 15, '2022-01-09'),
(10007, 16, '2022-02-03'),
(10008, 17, '2022-02-24'),
(10009, 18, '2022-03-01'),
(10010, 19, '2022-03-04'),
(10011, 20, '2022-03-05'),
(10012, 21, '2022-03-06'),
(10013, 22, '2022-03-07'),
(10014, 23, '2022-03-08'),
(10015, 24, '2022-03-09'),
(10016, 25, '2022-03-10'),
(10017, 26, '2022-03-11'),
(10018, 27, '2022-03-12'),
(10019, 28, '2022-03-13');
SET IDENTITY_INSERT dbo.SheinOrder OFF;

--Productdetail
CREATE TABLE ProductDetail
(ProductID int IDENTITY NOT NULL PRIMARY KEY,
--SalesID INT NOT NULL REFERENCES dbo.SalesProduct(SalesID),
CategoryID INT NOT NULL REFERENCES dbo.ProductCategory(CategoryID),
ProductName VARCHAR(100),
ProductPrice MONEY,
Description VARCHAR(400),
Inventory INT
);

-- check SELECT * FROM ProductDetail;
-- when needed, DROP TABLE ProductDetail;

SET IDENTITY_INSERT dbo.ProductDetail ON;

INSERT INTO dbo.ProductDetail(ProductID,CategoryID,ProductName,ProductPrice,Description,Inventory)--SalesID,
VALUES('200001','1001','MOTF PREMIUM MULBERRY BLEND SILK STRAIGHT T-SHIRT','10','Color:White,Style:Casual,
Pattern Type:Figure,Neckline:Round Neck,Details:Pocket,Sleeve Length:Short Sleeve','500'); --'1001',

INSERT INTO dbo.ProductDetail(ProductID,CategoryID,ProductName,ProductPrice,Description,Inventory)--SalesID,
VALUES('200002','1001','Solid Crop Mesh Cami Top','350','Color:Baby Blue,Style:Sexy,Pattern Type:	Plain,
Details:Contrast Lace, Bow, Sheer,Type:	Cami,Neckline:Spaghetti Strap','208'),--'1002'
('200003','1002','SHEIN X Lee Chester Splash Ink Print Cross Wrap Cut Out Bodycon Dress','140','SHEIN X Lee Chester
SHEIN X spotlights the latest indie designers to fashion lovers around the world.','104'), --'1003'
('200004','1002','SHEIN X Bianca Isabela Colorblock Cut Out Fake Button Fringe Trim Dress','87','SHEIN X Bianca Isabela
SHEIN X spotlights the latest indie designers to fashion lovers around the world.','134'), --'1004',
('200005','1003','2 In 1 Galaxy Mesh Skirt','120','Color:	Black,Style:	Sexy,Pattern Type:	Galaxy,Details:	Sheer,
Type:	A Line,Waist Line:	High Waist','234'), --'1005'
('200006','1003','SHEIN Elastic Waist M-slit Thigh Skirt','30','Color:	Black,
Style:	Sexy,Pattern Type:	Plain,Details:	Wrap, Split Thigh','535'), --'1006'
('200007','1004','Plaid Double Breasted Pea Coat','20','Details:Double Button,Type:	Regular,
Neckline:Lapel,Sleeve Length:	Long Sleeve,Sleeve Type:	Regular Sleeve','324'), --'1007
('200008','1004','DAZY Plaid Lapel Neck Single Button Overcoat','15','Color:	Multicolor,Style:	Casual,
Pattern Type:	Plaid,Details:	Pocket,Type:	Regular,Neckline:	Lapel','643'), --1008'
('200009','1004','DAZY Houndstooth Drop Shoulder Flap Pocket Belted Overcoat','90','Color:	Mocha Brown,
Style:	Casual,Pattern Type:	Houndstooth,Details:	Button Front, Pocket, Belted,Type:	Regular,Neckline:	Collar','745'), --'1009'
('200010','1009','SHEIN Allover Floral Print Lapel Neck Blazer & Shorts','110','Color:	Multicolor,
Style:	Elegant,Pattern Type:	All Over Print, Floral,Details:	Belted,Top Type:	Regular,Pants & Tops Composition:	100% Polyester','645'); --'1010'
INSERT INTO dbo.ProductDetail(ProductID,CategoryID,ProductName,ProductPrice,Description,Inventory)--SalesID,
VALUES('200011','1001','Solid Crop Mesh Cami Top','55','Color:Baby Blue,Style:Sexy,Pattern Type:	Plain,
Details:Contrast Lace, Bow, Sheer,Type:	Cami,Neckline:Spaghetti Strap','207'),--'1002'
('200012','1002','SHEIN X Lee Chester Splash Ink Print Cross Wrap Cut Out Bodycon Dress','80','SHEIN X Lee Chester
SHEIN X spotlights the latest indie designers to fashion lovers around the world.','103'), --'1003'
('200013','1002','SHEIN X Bianca Isabela Colorblock Cut Out Fake Button Fringe Trim Dress','11','SHEIN X Bianca Isabela
SHEIN X spotlights the latest indie designers to fashion lovers around the world.','133'), --'1004',
('200014','1003','2 In 1 Galaxy Mesh Skirt','89','Color:	Black,Style:	Sexy,Pattern Type:	Galaxy,Details:	Sheer,
Type:	A Line,Waist Line:	High Waist','233'), --'1005'
('200015','1003','SHEIN Elastic Waist M-slit Thigh Skirt','75','Color:	Black,
Style:	Sexy,Pattern Type:	Plain,Details:	Wrap, Split Thigh','534'), --'1006'
('200016','1004','Plaid Double Breasted Pea Coat','110','Details:Double Button,Type:	Regular,
Neckline:Lapel,Sleeve Length:	Long Sleeve,Sleeve Type:	Regular Sleeve','323'), --'1007
('200017','1004','DAZY Plaid Lapel Neck Single Button Overcoat','38','Color:	Multicolor,Style:	Casual,
Pattern Type:	Plaid,Details:	Pocket,Type:	Regular,Neckline:	Lapel','643'); --1008'

--OrderProduct
CREATE TABLE OrderProduct
(
OrderID int NOT NULL REFERENCES dbo.SheinOrder(OrderID),
ProductID int NOT NULL REFERENCES dbo.ProductDetail(ProductID)
CONSTRAINT PKOrderProduct PRIMARY KEY CLUSTERED 
(OrderID,ProductID),
ProductQty smallint NOT NULL
);

-- check SELECT * FROM OrderProduct;
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10001','200001','5');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10002','200002','1');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10003','200003','5');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10004','200004','3');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10005','200005','2');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10006','200006','1');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10007','200007','4');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10008','200008','6');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10009','200009','2');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10010','200010','2');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10011','200011','4');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10012','200012','3');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10013','200013','2');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10014','200014','4');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10015','200015','3');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10016','200016','6');
INSERT INTO dbo.OrderProduct(OrderID,ProductID,ProductQty)
VALUES('10017','200017','1');

-- ReturnOrder
CREATE TABLE ReturnOrder
(
ReturnID INT IDENTITY NOT NULL PRIMARY KEY,
OrderID INT NOT NULL REFERENCES dbo.SheinOrder(OrderID),
ReturnMethod varchar(20),
Received bit
);

SET IDENTITY_INSERT dbo.ReturnOrder ON;

INSERT INTO dbo.ReturnOrder(ReturnID, OrderID, ReturnMethod,Received)
VALUES('8447982', '10001', 'InStore','1'),
('8447983', '10002', 'Mail','1'),
('8447984', '10003', 'InStore','1'),
('8447985', '10004', 'Mail', '0'),
('8447986', '10005', 'InStore','1'),
('8447987', '10006', 'Mail','1'),
('8447988', '10007', 'InStore','1'),
('8447989', '10008', 'Mail','0'),
('8447990', '10009', 'InStore','1'),
('8447991', '10010', 'InStore','1');

SELECT * FROM ReturnOrder;

ALTER TABLE ReturnOrder 
ADD ReturnRequestDate date;

UPDATE ReturnOrder SET ReturnRequestDate = '2022-01-02' WHERE ReturnID = 8447982;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-01-06' WHERE ReturnID = 8447983;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-01-12' WHERE ReturnID = 8447984;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-01-12' WHERE ReturnID = 8447985;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-01-09' WHERE ReturnID = 8447986;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-01-15' WHERE ReturnID = 8447987;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-02-18' WHERE ReturnID = 8447988;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-03-01' WHERE ReturnID = 8447989;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-03-01' WHERE ReturnID = 8447990;
UPDATE ReturnOrder SET ReturnRequestDate = '2022-03-12' WHERE ReturnID = 8447991;


SET IDENTITY_INSERT dbo.ReturnOrder OFF;


-- ReturnProduct
CREATE TABLE dbo.ReturnProduct(
ReturnID int NOT NULL REFERENCES dbo.ReturnOrder(ReturnID),
ProductID int NOT NULL REFERENCES dbo.ProductDetail(ProductID)
CONSTRAINT PKReturnProduct PRIMARY KEY CLUSTERED,
ReturnQty smallint NOT NULL,
ReturnReason varchar(100) NOT NULL);

-- check SELECT * FROM ReturnProduct;
INSERT INTO dbo.ReturnProduct(ReturnID,ProductID,ReturnQty,ReturnReason)
VALUES('8447982','200001','1','Items get damaged'),
('8447983','200002','1','no longer needed the product'),
('8447984','200003','2','The product did not match the description'),
('8447985','200004','1','The product did not meet the customer’s expectations'),
('8447986','200005','1','The product did not match the description'),
('8447987','200006','1','no longer needed the product'),
('8447988','200007','1','The product did not meet the customer’s expectations'),
('8447989','200008','1','The product did not meet the customer’s expectations'),
('8447990','200009','1','Items get damaged'),
('8447991','200010','1','no longer needed the product');


-- ShipmentInfo
CREATE TABLE ShipmentInfo
(
ShipmentID INT IDENTITY NOT NULL PRIMARY KEY, 
OrderID INT NOT NULL REFERENCES dbo.SheinOrder(OrderID),
ShipmentMethod varchar(30),
StartDate date, 
DeliverDate date, 
ShipmentPrice float, 
ShipCountry varchar(20),
ShipState varchar(20),
ShipCity varchar(20),
ShipPostCode char(5),
ShipAddressNumber varchar(30),
DeliverLastName varchar(20),
DeliverFirstName varchar(20),
ContactPhone char(11),
ContactEmail varchar(100)
);

-- check SELECT * FROM ShipmentInfo;
SET IDENTITY_INSERT dbo.ShipmentInfo ON;

INSERT INTO dbo.ShipmentInfo(ShipmentID, OrderID, ShipmentMethod, StartDate, DeliverDate,
ShipmentPrice, ShipCountry, ShipState, ShipCity, ShipPostCode, ShipAddressNumber, 
DeliverLastName, DeliverFirstName, ContactPhone, ContactEmail)
VALUES('223456', '10001', 'Ground', '2019-01-02', '2019-01-05','7.00', 'United States', 'CA',
'Berkeley', '94708', '1168', 'Lee', 'Pororo', '5102987465', 'pororolee@gmail.com'),
('223457', '10002', 'Overnight', '2022-01-05', '2022-01-06', '18.00', 'United States', 'CA',
'Oakland', '94702', '2247', 'Sponge', 'Bob', '5109827766', 'spongebob@gmail.com'),
('223458', '10003', 'Ground', '2022-01-06', '2022-01-12', '7.00', 'United States', 'CA',
'Daly City', '94014', '1063', 'Kim', 'Bibigo', '2098775163', 'bibigokim@gmail.com'),
('223459', '10004', 'Ground', '2022-01-07', '2022-01-12', '7.00', 'United States', 'CA',
'Sunnyvale', '94043', '2253', 'Patrick', 'Star', '4088573433', 'patrickstar@gmail.com'),
('223460', '10005', 'Overnight', '2022-01-08', '2022-01-09', '18.00', 'United States', 'CA',
'Napa Valley', '94558', '1083', 'Squid', 'Ward', '2534337083', 'squidward@gmail.com'),
('223461', '10006', 'Ground', '2022-01-09', '2022-01-15', '7.00', 'United States', 'CA',
'Saratoga', '95070', '2020', 'Sandy', 'Cheeks', '3106548777', 'Sandycheeks@gmail.com'),
('223462', '10007', 'Ground', '2022-02-03', '2022-02-18', '7.00', 'United States', 'CA',
'San Jose', '94088', '2024', 'Mr', 'Crab', '8449087665', 'Mrcrab@gmail.com'),
('223463', '10008', 'Ground', '2022-02-24', '2022-03-01', '7.00', 'United States', 'CA',
'Redwood City', '94061', '1023', 'Mrs', 'Puff', '2067458989', 'mrspuff@gmail.com'),
('223464', '10009', 'Sameday', '2022-03-01', '2022-03-01', '20.00', 'United States', 'CA',
'Sausalito', '94965', '2543', 'Kim', 'Poby', '5108997654', 'pobykim@gmail.com'),
('223465', '10010', 'Ground', '2022-03-08', '2022-03-12', '7.00', 'United States', 'CA',
'Tiburon', '94966', '2774', 'Park', 'Loopy', '5047689762', 'loopypark@gmail.com');

UPDATE ShipmentInfo SET StartDate = '2022-01-01', DeliverDate = '2022-01-02' WHERE ShipmentID = 223456;

SET IDENTITY_INSERT dbo.ShipmentInfo OFF;

-- ReturnShipInfo
CREATE TABLE ReturnShipInfo
(
ShipmentID INT IDENTITY NOT NULL PRIMARY KEY,
ReturnID int NOT NULL REFERENCES ReturnOrder(ReturnID),
StartDate date,
DeliverDate date, 
ReturnShipPrice float
);

SET IDENTITY_INSERT dbo.ReturnShipInfo ON;

INSERT INTO dbo.ReturnShipInfo(ShipmentID, ReturnID, StartDate, DeliverDate, ReturnShipPrice)
VALUES
('223466','8447982','2022-01-05', '2022-01-09', '5.00'),
('223467', '8447983','2022-01-09', '2022-01-14', '5.00'),
('223468', '8447984',  '2022-01-22', '2022-01-26','5.00'),
('223469', '8447985',  '2022-01-23', '2022-01-30', '5.00'),
('223470', '8447986', '2022-01-25', '2022-01-31', '5.00'),
('223471','8447987',  '2022-01-19', '2022-01-26','5.00'),
('223472', '8447988',  '2022-02-27', '2022-03-02','5.00'),
('223473', '8447989',  '2022-03-26', '2022-03-31','5.00'), 
('223474', '8447990',  '2022-03-21', '2022-03-28','5.00'),
('223475', '8447991',  '2022-03-22', '2022-03-28', '5.00');

SET IDENTITY_INSERT dbo.ReturnShipInfo OFF;

-- check SELECT * FROM ReturnShipInfo;


--OrderPaymentInfo
CREATE TABLE OrderPaymentInfo
(
PaymentID INT IDENTITY NOT NULL PRIMARY KEY,
OrderID INT NOT NULL REFERENCES dbo.SheinOrder(OrderID),
PaymentDate date, 
PaymentMethod varchar(20),
Success bit 
);

SET IDENTITY_INSERT dbo.OrderPaymentInfo ON;

INSERT INTO dbo.OrderPaymentInfo(PaymentID, OrderID, PaymentDate, PaymentMethod, Success)
VALUES('2259061', '10001', '2019-01-02', 'credit', '1'),
('2259062', '10002', '2019-01-05', 'paypal', '0'),
('2259063', '10003', '2019-01-06', 'credit', '1'),
('2259064', '10004', '2019-01-07', 'credit', '1'),
('2259065', '10005', '2019-01-08', 'paypal', '1'),
('2259066', '10006', '2019-01-09', 'credit', '0'),
('2259067', '10007', '2019-02-03', 'credit', '1'),
('2259068', '10008', '2019-02-24', 'paypal', '1'),
('2259069', '10009', '2019-03-01', 'credit', '1'),
('2259070', '10010', '2019-08-04', 'credit', '1');



SET IDENTITY_INSERT dbo.OrderPaymentInfo OFF;

-- check SELECT * FROM OrderPaymentInfo;







