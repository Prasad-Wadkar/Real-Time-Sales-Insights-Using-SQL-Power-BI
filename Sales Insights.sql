### Data Analysis Using SQL
# currency
'USD'
# currency
'USD\r'
# currency
'INR'
# currency
# currency
'INR\r'
1. Show all customer records

    `SELECT * FROM customers;`

1. Show total number of customers

    `SELECT count(*) FROM customers;`

1. Show transactions for Chennai market (market code for chennai is Mark001

    `SELECT * FROM transactions where market_code='Mark001';`

1. #Show distrinct product codes that were sold in chennai

SELECT distinct product_code FROM transactions where market_code='Mark001';

1. #Show transactions where currency is US dollars

SELECT * from transactions where currency="USD";

1. #Show transactions in 2020 join by date table

SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

1. #Show total revenue in year 2020,

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";
	
1. #Show total revenue in year 2020, January Month,

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

1. #Show total revenue in year 2020 in Chennai

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";

SELECT sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on 
sales.date.date=sales.transactions.order_date 
where sales.date.year=2020 and sales.transactions.market_code='Mark001';

select sum(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.date where date.year= 2020 and date.month_name='May';
and (transactions.currency='USD\r' or transactions.currency='INR\r');

