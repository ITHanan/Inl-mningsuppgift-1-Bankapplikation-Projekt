

---- Create the Customers table

--CREATE TABLE Customers (
--    customerID INT PRIMARY KEY, -- Primary Key
--    customerName VARCHAR(255) NOT NULL, -- Customer's full name
--    customerEmail VARCHAR(255) NOT NULL UNIQUE -- Customer's email address (must be unique)
--);


---- Create the Accounts table

--CREATE TABLE Accounts (
--    accountID INT PRIMARY KEY, -- Unique identifier for each account
--    customerID INT NOT NULL, -- Links to a customer in the Customers table
--    accountType VARCHAR(50) NOT NULL, -- Type of account (e.g., Savings, Checking)
--    balance DECIMAL(18, 2) NOT NULL, -- Account balance (up to 18 digits, 2 decimal places)
--    FOREIGN KEY (customerID) REFERENCES Customers(customerID) -- Ensure customerID exists in Customers table
--);


---- Create the Transactions table

--CREATE TABLE Transactions (
--    transactionID INT PRIMARY KEY, -- Unique identifier for each transaction
--    transactionType VARCHAR(10) NOT NULL, -- Type of transaction (Credit or Debit)
--    timestamp DATETIME NOT NULL, -- Date and time of the transaction
--    amount DECIMAL(10, 2) NOT NULL, -- Transaction amount (up to 10 digits, 2 decimal places)
--    accountID INT NOT NULL, -- Links to an account in the Accounts table
--    FOREIGN KEY (accountID) REFERENCES Accounts(accountID) -- Ensure accountID exists in the Accounts table
--);

---- Insert 10 customers
--INSERT INTO Customers (customerID, customerName, customerEmail)
--VALUES
--(1, 'Alice Johnson', 'alice.johnson@example.com'),
--(2, 'Bob Smith', 'bob.smith@example.com'),
--(3, 'Charlie Brown', 'charlie.brown@example.com'),
--(4, 'Diana Prince', 'diana.prince@example.com'),
--(5, 'Edward White', 'edward.white@example.com'),
--(6, 'Fiona Davis', 'fiona.davis@example.com'),
--(7, 'George King', 'george.king@example.com'),
--(8, 'Hannah Lee', 'hannah.lee@example.com'),
--(9, 'Ian Moore', 'ian.moore@example.com'),
--(10, 'Jane Green', 'jane.green@example.com');


-- Insert 20 accounts, each linked to one of the customers
--INSERT INTO Accounts (accountID, customerID, accountType, balance)
--VALUES
--(1, 1, 'Savings', 1500.00),
--(2, 1, 'Checking', 300.00),
--(3, 2, 'Savings', 5000.00),
--(4, 2, 'Checking', 800.00),
--(5, 3, 'Savings', 2000.00),
--(6, 4, 'Checking', 1000.00),
--(7, 5, 'Savings', 700.00),
--(8, 6, 'Checking', 1200.00),
--(9, 6, 'Savings', 2200.00),
--(10, 7, 'Savings', 1500.00),
--(11, 8, 'Checking', 1800.00),
--(12, 9, 'Savings', 4000.00),
--(13, 10, 'Checking', 900.00),
--(14, 3, 'Savings', 2500.00),
--(15, 4, 'Checking', 600.00),
--(16, 5, 'Savings', 1100.00),
--(17, 7, 'Savings', 4500.00),
--(18, 8, 'Checking', 300.00),
--(19, 9, 'Savings', 6000.00),
--(20, 10, 'Savings', 750.00);

-- Insert 50 transactions, linked to existing accounts
--INSERT INTO Transactions (transactionID, transactionType, timestamp, amount, accountID)
--VALUES
---- Transactions for account 1
--(1, 'Deposit', '2025-01-01 10:00:00', 500.00, 1),
--(2, 'Withdrawal', '2025-01-02 14:00:00', 200.00, 1),
--(3, 'Deposit', '2025-01-05 09:00:00', 300.00, 1),
---- Transactions for account 2
--(4, 'Deposit', '2025-01-03 11:00:00', 100.00, 2),
--(5, 'Withdrawal', '2025-01-04 15:00:00', 50.00, 2),
---- Transactions for account 3
--(6, 'Deposit', '2025-01-01 12:00:00', 1000.00, 3),
--(7, 'Withdrawal', '2025-01-07 10:30:00', 500.00, 3),
--(8, 'Deposit', '2025-01-08 14:15:00', 800.00, 3),
---- Transactions for account 4
--(9, 'Deposit', '2025-01-02 09:00:00', 400.00, 4),
--(10, 'Withdrawal', '2025-01-05 16:30:00', 100.00, 4),
---- Transactions for other accounts
--(11, 'Deposit', '2025-01-06 11:00:00', 200.00, 5),
--(12, 'Withdrawal', '2025-01-09 14:00:00', 100.00, 5),
--(13, 'Deposit', '2025-01-10 08:00:00', 300.00, 6),
--(14, 'Deposit', '2025-01-12 09:00:00', 500.00, 7),
--(15, 'Withdrawal', '2025-01-13 10:00:00', 400.00, 8),
--(16, 'Deposit', '2025-01-15 11:30:00', 600.00, 9),
--(17, 'Deposit', '2025-01-14 15:00:00', 700.00, 10),
--(18, 'Withdrawal', '2025-01-14 15:30:00', 200.00, 11),
--(19, 'Deposit', '2025-01-10 14:30:00', 800.00, 12),
--(20, 'Withdrawal', '2025-01-11 16:00:00', 500.00, 13),
---- Fill in the remaining transactions for variety
--(21, 'Deposit', '2025-01-02 09:00:00', 300.00, 14),
--(22, 'Withdrawal', '2025-01-03 14:00:00', 200.00, 15),
--(23, 'Deposit', '2025-01-05 15:00:00', 600.00, 16),
--(24, 'Withdrawal', '2025-01-07 10:00:00', 400.00, 17),
--(25, 'Deposit', '2025-01-09 09:00:00', 500.00, 18),
--(26, 'Deposit', '2025-01-11 08:00:00', 900.00, 19),
--(27, 'Withdrawal', '2025-01-13 13:30:00', 200.00, 20),
--(28, 'Deposit', '2025-01-10 12:00:00', 800.00, 1),
--(29, 'Withdrawal', '2025-01-12 11:30:00', 150.00, 2),
--(30, 'Deposit', '2025-01-14 14:00:00', 1000.00, 3),
--(31, 'Withdrawal', '2025-01-15 10:30:00', 300.00, 4),
--(32, 'Deposit', '2025-01-01 09:30:00', 700.00, 5),
--(33, 'Deposit', '2025-01-02 13:00:00', 400.00, 6),
--(34, 'Withdrawal', '2025-01-03 08:30:00', 200.00, 7),
--(35, 'Deposit', '2025-01-04 10:00:00', 500.00, 8),
--(36, 'Deposit', '2025-01-05 11:00:00', 600.00, 9),
--(37, 'Deposit', '2025-01-06 09:00:00', 700.00, 10),
--(38, 'Withdrawal', '2025-01-07 12:30:00', 200.00, 11),
--(39, 'Deposit', '2025-01-08 14:00:00', 800.00, 12),
--(40, 'Withdrawal', '2025-01-09 15:30:00', 500.00, 13),
--(41, 'Deposit', '2025-01-10 16:00:00', 600.00, 14),
--(42, 'Withdrawal', '2025-01-11 14:00:00', 300.00, 15),
--(43, 'Deposit', '2025-01-12 12:00:00', 500.00, 16),
--(44, 'Withdrawal', '2025-01-13 11:30:00', 400.00, 17),
--(45, 'Deposit', '2025-01-14 10:30:00', 700.00, 18),
--(46, 'Withdrawal', '2025-01-15 14:30:00', 300.00, 19),
--(47, 'Deposit', '2025-01-14 08:00:00', 1000.00, 20),
--(48, 'Withdrawal', '2025-01-13 09:30:00', 200.00, 2),
--(49, 'Deposit', '2025-01-12 10:00:00', 800.00, 3),
--(50, 'Withdrawal', '2025-01-11 15:00:00', 400.00, 4);


--1- Hämta alla konton som tillhör en specifik kund.

--SELECT * 
--FROM Accounts
--WHERE customerID = 1; 

--2- Beräkna det totala saldot på alla konton för en kund.

--SELECT customerID, SUM(balance) AS totalBalance
--FROM Accounts
--WHERE customerID = 1
--GROUP BY customerID;


--3- Visa alla transaktioner för ett specifikt konto.

--SELECT * 
--FROM Transactions 
--WHERE accountID = 1; 

--4- Hitta de tre konton med högst saldo.

--SELECT TOP 3* FROM Accounts ORDER BY  balance DESC;

--5- Beräkna det totala beloppet av insättningar och uttag för ett specifikt konto.

--SELECT accountID,
--       SUM(CASE WHEN transactionType = 'Deposit' THEN Amount ELSE 0 END) AS totalDeposits,
--       SUM(CASE WHEN transactionType = 'Withdrawal' THEN Amount ELSE 0 END) AS totalWithdrawals
--FROM Transactions
--WHERE accountID = 1
--GROUP BY accountID;

--6- Hitta alla transaktioner som gjorts de senaste 30 dagarna.

--SELECT *
--FROM Transactions
--WHERE Timestamp >= DATEADD(DAY, -30, GETDATE());



-----------------------------------------------------------------------------------------

--DECLARE @i INT = 1;

--WHILE @i <= 100000
--BEGIN 
--    INSERT INTO Customers (customerID, customerName, customerEmail)
--    VALUES (
--        @i, -- Unique customerID
--        CONCAT('Customer_', @i), -- Simulated customer name
--        CONCAT('customer', @i, '@example.com') -- Simulated customer email
--    );

--    SET @i = @i + 1;
--END;

------------------------------------------------------------------------------------------------------------------------

--DECLARE @i INT = (SELECT ISNULL(MAX(accountID), 0) + 1 FROM Accounts); -- Start from the next ID

--WHILE @i <= (SELECT ISNULL(MAX(accountID), 0) + 100000 FROM Accounts)
--BEGIN 
--    INSERT INTO Accounts (accountID, customerID, accountType, balance)
--    VALUES (
--        @i, -- Unique accountID
--        ABS(CHECKSUM(NEWID())) % (SELECT MAX(customerID) FROM Customers) + 1, -- Random valid customerID
--        CASE WHEN RAND(@i) > 0.5 THEN 'Savings' ELSE 'Checking' END, -- Random account type
--        CAST(ABS(CHECKSUM(NEWID())) % 50000 + 1 AS DECIMAL(18, 2)) -- Random balance (1 to 50,000)
--    );

--    SET @i = @i + 1;
--END;





--------------------------------------------------------------------------------------------------------------------------
--DECLARE @i INT = (SELECT ISNULL(MAX(transactionID), 0) + 1 FROM Transactions); -- Start from the next ID

--WHILE @i <= (SELECT ISNULL(MAX(transactionID), 0) + 1000000 FROM Transactions)
--BEGIN 
--    INSERT INTO Transactions (transactionID, transactionType, timestamp, amount, accountID)
--    VALUES (
--        @i, -- Unique transactionID
--        CASE WHEN RAND(@i) > 0.5 THEN 'Credit' ELSE 'Debit' END, -- Randomly pick Credit or Debit
--        DATEADD(SECOND, ABS(CHECKSUM(NEWID())) % 31536000, '2023-01-01'), -- Random timestamp in 2023
--        CAST(ABS(CHECKSUM(NEWID())) % 10000 + 1 AS DECIMAL(10, 2)), -- Random amount (1 to 10,000)
--        ABS(CHECKSUM(NEWID())) % (SELECT MAX(accountID) FROM Accounts) + 1 -- Random valid accountID
--    );

--    SET @i = @i + 1;
--END;
---------------------------------------------------------------------------------------------------------------------------

--CREATE INDEX idx_CustomerEmail
--ON Customers (customerEmail);

;

--CREATE INDEX idx_CustomerID_Accounts 
--ON Accounts (customerID);

--CREATE INDEX idx_AccountType 
--ON Accounts (accountType);

--CREATE INDEX idx_AccountID_Transactions 
--ON Transactions (accountID);

--CREATE INDEX idx_TransactionType 
--ON Transactions (transactionType);

--CREATE INDEX idx_Timestamp 
--ON Transactions (timestamp);


--SET STATISTICS IO ON;
--SET STATISTICS TIME ON;

-- Query before adding indexes
--SELECT * 
--FROM Transactions 
--WHERE accountID = 1000;

-- Query after adding indexes
--SELECT * 
--FROM Transactions 
--WHERE accountID = 1000;

--SET STATISTICS IO OFF;
--SET STATISTICS TIME OFF;

--CREATE INDEX IDX_AccountIDwqm ON Accounts (AccountID);

--SELECT * FROM Accounts where AccountID = 500;

