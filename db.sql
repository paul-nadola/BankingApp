-- create database demo_bank_v1;
-- use demo_bank_v1;

-- -- USERS TABLE STRUCTURE

-- create table users (
-- 	user_id int not NULL AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(56) NOT NULL,
--     last_name VARCHAR(56) NOT NULL,
--     email VARCHAR(255) NOT NULL UNIQUE,
--     password VARCHAR(255) NOT NULL,
--     token VARCHAR(255) NULL,
--     code INT NULL,
--     verified INT DEFAULT 0,
--     verified_at DATETIME,
--     created_at TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT NOW()
    
-- );


-- -- BANK ACCOUNTS TABLE

-- CREATE TABLE accounts(
-- 	account_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     account_number VARCHAR(100) NOT NULL,
--     account_name VARCHAR(255) NOT NULL,
--     account_type VARCHAR(50) NOT NULL,
--     balance DECIMAL(13, 2) DEFAULT 0,
--     created_at TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT NOW(),
--     FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE CASCADE
-- );


-- -- TRANSACTION HISTORY TABLE

-- CREATE TABLE transaction_history (
-- 	transaction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     account_id INT,
--     transaction_type VARCHAR(50) NOT NULL,
--     amount DECIMAL(13, 2),
--     source VARCHAR(50) NOT NULL,
--     status VARCHAR(50) NULL, -- success/ failed.
--     reason_code VARCHAR(50) NOT NULL, -- Insufficient funds...
--     created_at TIMESTAMP,
--     FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
-- );

-- -- PAYMENT TABLE STRUCTURE
-- CREATE TABLE payments (
-- 	payment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     account_id INT,
--     beneficiary VARCHAR(255) NULL,
--     beneficiary_acc_no VARCHAR(255) NULL,
--     amount DECIMAL(13, 2) NULL,
--     reference_no VARCHAR(100) NULL,
--     status VARCHAR(50) NULL, -- success/ failed.
--     reason_code VARCHAR(50) NOT NULL, -- Insufficient funds...
--     created_at TIMESTAMP,
--     FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
-- );


-- -- TRANSACTION HISTORY VIEW
-- SELECT
-- 	t.transaction_id,
-- 	a.account_id,
--     u.user_id,
--     t.transaction_type,
--     t.amount,
--     t.source,
--     t.status,
--     t.reason_code,
--     t.created_at
-- FROM
-- 	transaction_history AS t
-- INNER JOIN
-- 	accounts as a
-- ON
-- 	t.account_id = a.account_id
-- INNER JOIN
-- 	users as u
-- ON
-- 	a.user_id = u.user_id
-- ;

-- -- PAYMENT HISTORY VIEW:
-- SELECT
-- 	p.payment_id,
--     a.account_id,
--     u.user_id,
--     p.beneficiary,
--     p.beneficiary_acc_no,
--     p.amount,
--     p.status,
--     p.reference_no,
--     p.reason_code,
--     p.created_at
-- FROM
-- 	payments AS p
-- INNER JOIN
-- 	accounts as a
-- ON
-- 	p.account_id = a.account_id
-- INNER JOIN
-- 	users as u
-- ON
-- 	u.user_id = a.user_id
-- ;
