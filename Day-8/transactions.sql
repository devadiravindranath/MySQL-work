-- Step 1: Create Database
CREATE DATABASE  BankDB;
USE BankDB;

-- Step 2: Create Table
CREATE TABLE Accounts (
    Acc_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);

-- Step 3: Insert Sample Data
INSERT INTO Accounts VALUES
(101, 'Arjun', 15000.00),
(102, 'Priya', 10000.00);

select * from accounts;

select @@autocommit;
set autocommit = 0;

START transaction;
-- deducted
update accounts
set balance = balance-5000
where acc_No = 101;
-- added
update accounts
set balance = balance + 5000
where acc_no = 102;

select * from accounts;

commit;

select * from accounts;

start transaction;

-- deduct 2000 from arjun
update accounts
set balance = balance-2000
where acc_no = 101;

-- check before rollback
select * from accounts;

-- cancel transaction(rollback means undo the transaction)
rollback;


-- 
start transaction;

-- step1: deduct 1000

update accounts
set balance = balance - 1000
where acc_no = 101;

select * from accounts;

-- create savepoint

savepoint after_deduction;

-- step 2 : add 1000
update accounts
set balance = balance +1000
where acc_no = 102;
select * from accounts;

-- suppose something goes wrong
-- rollback only to savepoint

rollback to after_deduction;
-- final commit
commit;
 -- final data check 
select * from accounts;

