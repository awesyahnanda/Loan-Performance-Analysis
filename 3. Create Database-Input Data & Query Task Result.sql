# SQL Code Query for BNC SQL Test

# Create database bnctest
create database bnctest;

use bnctest;

# Describe all table
show tables;
describe transaction_detail;
describe user_info;

# Cleaning inconsistency column name in transaction_detail table
ALTER TABLE transaction_detail
CHANGE ï»¿transaction_date transaction_date text;

# Cleaning inconsistency column name in user_info table
ALTER TABLE user_info
CHANGE ï»¿user_id user_id int;

# Transform data type transaction_date from text to date
UPDATE transaction_detail
SET transaction_date = STR_TO_DATE(transaction_date, '%m/%d/%Y');

ALTER TABLE transaction_detail
MODIFY COLUMN transaction_date DATE;

describe transaction_detail;

# Check all data
select*from transaction_detail;
select*from user_info;

# Test Query
select sum(transaction_amount)
from transaction_detail;
    
# Task 1 
# Show the total_transaction and total_transaction_amount per month per user_type from Jun-21 to Dec-21 from 'Retail' and 'Corporate' only
SELECT 	user_type, DATE_FORMAT(transaction_date, '%Y-%m') AS month, COUNT(transaction_id) AS total_transaction, 
		SUM(transaction_amount) AS total_transaction_amount
FROM	transaction_detail, user_info
WHERE	transaction_date BETWEEN '2021-06-01' AND '2021-12-31' 
		AND user_type IN ('Retail', 'Corporate')
GROUP BY 
    user_type, 
    DATE_FORMAT(transaction_date, '%Y-%m')
ORDER BY 
    user_type, 
    month;

# Task 2
# Show the number of users who has total_transaction_amount > 100,000,000 in Dec-22

SELECT 
COUNT(user_id) AS num_user
FROM 
transaction_detail
WHERE 
DATE_FORMAT(transaction_date, '%Y-%m') = '2022-12'
GROUP BY 
user_id
HAVING 
SUM(transaction_amount) > 100000000;

# Just the Trial & Error
select user_id, sum(transaction_amount)
from transaction_detail
where DATE_FORMAT(transaction_date, '%Y-%m') = '2022-12'
group by user_id;

select  COUNT(user_id) AS user_count
from transaction_detail
where transaction_amount > 100000000;

