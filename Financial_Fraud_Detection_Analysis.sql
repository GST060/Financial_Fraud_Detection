Select * From bank_detail limit 10;

-- Q1) What is the total number of transactions and total transaction amount processed 
-- through each transaction channel (ATM, Online, POS)?
Select channel, Count(*) as total_transaction, 
ROUND(SUM(transaction_amount)::numeric,2) as total_amount from bank_detail
group by channel
order by channel desc;

-- Q2) Which 10 accounts have the highest number of transactions in the dataset?
Select account_id, Count(transaction_amount) as total_transaction from bank_detail
group by account_id
order by total_transaction desc limit 10 ;

-- Q3) Which accounts have transactions coming from more than one location?
Select account_id, COUNT(DISTINCT location) as location_count from bank_detail
where transaction_type = 'Credit' 
group by account_id
having COUNT(DISTINCT location) > 1 ;

-- Q4) Which devices are used by transactions from multiple different accounts?
Select device_id, COUNT(DISTINCT account_id) as total_account from bank_detail
group by device_id 
having COUNT(DISTINCT account_id) > 1 ;

-- Q5) Which transactions have an amount significantly higher than the average transaction amount across all transactions?
Select account_id, transaction_amount from bank_detail
where transaction_amount > (select AVG(transaction_amount) + STDDEV(transaction_amount) from bank_detail) ;

-- Q6) Which accounts perform transactions using multiple devices?
Select account_id, COUNT(DISTINCT device_id) as total_devices from bank_detail
group by account_id
having COUNT(DISTINCT device_id) > 1 ;

-- Q7) What is the average transaction amount for each transaction type (Deposit, Withdrawal, Transfer, Payment)?
Select transaction_type, ROUND(AVG(transaction_amount)::numeric,2) as average_amount from bank_detail
group by transaction_type ;

-- Q8) Which accounts have the highest average transaction amounts?
with avg_transaction as (
Select account_id, ROUND(AVG(transaction_amount)::numeric,2) as avg_amount from bank_detail
group by account_id
)

Select account_id, avg_amount from avg_transaction
where avg_amount = (Select MAX(avg_amount) from avg_transaction)

--                   OR

Select account_id, ROUND(AVG(transaction_amount)::numeric,2) as avg_amount from bank_detail
group by account_id
order by avg_amount desc limit 1 ;

-- Q9) Which transactions were made after unusually high numbers of login attempts?
-- higher login attemps means more than average 
Select transaction_id, account_id, transaction_amount, login_attempts from bank_detail
where login_attempts > (Select AVG(login_attempts) from bank_detail)
order by login_attempts desc ;

-- Q10) Which locations have the highest total transaction amounts?
Select location, ROUND(SUM(transaction_amount)::numeric,2) as total_amount from bank_detail
group by location
order by total_amount desc limit 1 ;

-- Q11) Which accounts made multiple transactions within a very short time period?
with transaction_diff as (
Select transaction_id, account_id, transaction_date,
LAG(transaction_date) OVER (PARTITION BY account_id order by transaction_date) as previous_transaction
from bank_detail
)

Select transaction_id, account_id, transaction_date, previous_transaction,
transaction_date - previous_transaction as time_diff from transaction_diff
where previous_transaction IS NOT NULL
and transaction_date - previous_transaction < INTERVAL '30 minutes' ;

-- Q12) What is the average transaction amount grouped by customer occupation?
Select customer_occupation, ROUND(AVG(transaction_amount)::numeric,2) as avg_transaction_amount from bank_detail
group by customer_occupation ;

-- Q13) Which accounts have transactions where the transaction amount is a large proportion of the account balance?
Select account_id, transaction_amount, account_balance from bank_detail
where transaction_amount > 0.5 * account_balance ;

--                   OR
Select account_id, transaction_amount, account_balance from bank_detail
where transaction_amount >= 0.8 * account_balance ;

-- Q14) What is the distribution of transactions across different customer age groups?
Select CASE 
          WHEN customer_age BETWEEN 18 and 25 THEN '18-25'
		  WHEN customer_age BETWEEN 26 and 35 THEN '26-35'
		  WHEN customer_age BETWEEN 36 and 45 THEN '36-45'
		  WHEN customer_age BETWEEN 46 and 60 THEN '46-60'
		  ELSE 'Above 60'
		END as age_group,
		ROUND(SUM(transaction_amount)::numeric,2) as total_amount
from bank_detail
group by age_group
order by total_amount desc ;

-- Q15) Which accounts show a combination of high transaction frequency and multiple devices used? 
Select account_id, COUNT(transaction_id) as transaction_count, COUNT(DISTINCT device_id) as device_count
from bank_detail group by account_id
Having COUNT(transaction_id) > 10 AND COUNT(DISTINCT device_id) > 1 ;

--          OR  (With ranking high frequency account)

Select account_id, COUNT(transaction_id) as transaction_count, COUNT(DISTINCT device_id) as device_count
from bank_detail group by account_id
order by transaction_count desc, device_count desc limit 20 ; 

