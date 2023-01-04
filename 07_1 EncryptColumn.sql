/*users password column encryption*/
USE SHEINTEAM3;

CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = 'Project@12345ABC';

-- Create certificate to protect symmetric key
CREATE CERTIFICATE Project_Certificate
WITH SUBJECT = 'Project Test Certificate',
EXPIRY_DATE = '2026-12-31';

-- Create symmetric key to encrypt data
CREATE SYMMETRIC KEY Project_SymmetricKey
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE Project_Certificate;

-- Open symmetric key
OPEN SYMMETRIC KEY Project_SymmetricKey
DECRYPTION BY CERTIFICATE Project_Certificate;

-- Add EncryptedPassword to CustomerProfile

ALTER TABLE CustomerProfile  
ADD EncryptedPassword VARBINARY (250);

-- UPDATE Password

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS10')))
WHERE CustomerID = 10;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS11')))
WHERE CustomerID = 11;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS12')))
WHERE CustomerID = 12;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS13')))
WHERE CustomerID = 13;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS14')))
WHERE CustomerID = 14;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS15')))
WHERE CustomerID = 15;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS16')))
WHERE CustomerID = 16;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS17')))
WHERE CustomerID = 17;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS18')))
WHERE CustomerID = 18;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS19')))
WHERE CustomerID = 19;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS20')))
WHERE CustomerID = 20;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS21')))
WHERE CustomerID = 21;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS22')))
WHERE CustomerID = 22;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS23')))
WHERE CustomerID = 23;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS24')))
WHERE CustomerID = 24;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS25')))
WHERE CustomerID = 25;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS26')))
WHERE CustomerID = 26;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS27')))
WHERE CustomerID = 27;

UPDATE CustomerProfile
SET EncryptedPassword = ( EncryptByKey(Key_GUID(N'Project_SymmetricKey'), convert(varbinary, 'PassTS28')))
WHERE CustomerID = 28;

	

-- See what we have in the table
select * from CustomerProfile;

-- Use DecryptByKey to decrypt the encrypted data and see what we have in the table
select CustomerID, DecryptByKey(EncryptedPassword)
from CustomerProfile;

