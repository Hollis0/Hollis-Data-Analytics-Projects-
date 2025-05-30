/*
ALTER TABLE retail_sales
RENAME quantiy to quantity;
*/

/*
Select * 
From retail_sales
*/

/*
SELECT *
FROM retail_sales
LIMIT 10
*/

/*
SELECT
  COUNT(*)
FROM retail_sales
*/

/* Data Cleansing */ 

/*
SELECT * FROM retail_sales
WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;
*/

/*
DELETE FROM retail_sales
WHERE
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR
	category IS NULL
	OR
	quantity IS NULL
	OR
	cogs IS NULL 
	OR 
	total_sale IS NULL;
*/

/* How many sales we have? 

SELECT COUNT(*) as total_sale 
FROM retail_sales

*/

/* How mamy unique customers we have? 

SELECT COUNT(DISTINCT customer_id) as total_sale
FROM retail_sales
*/

/* What departments are there?
SELECT DISTINCT category 
FROM retail_sales
*/

/* Write a SQL query to retrieve all columns for sales made on '2022-11-05 
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';
*/

/* Write a SQL query to calculate the total sales (total_sale) for each category. 

SELECT 
	category,
	SUM(total_sale) as net_sale,
	COUNT(*) as total_orders
FROM retail_sales
GROUP BY 1;

*/

/* Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

SELECT
	ROUND(AVG(age), 2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty' 
*/

/* Write a SQL query to find all transactions where the total_sale is greater than 1000. 

SELECT *
FROM retail_sales
WHERE total_sale > 1000;
*/

/* Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT 
	category,
	gender,
	COUNT(*) as total_trans
FROM retail_sales
GROUP BY
	category,
	gender
ORDER BY 1
*/

/* Write a SQL query to find the top 5 customers based on the highest total sales

SELECT 
	customer_id,
	SUM(total_sale) as total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC 
LIMIT 5 
*/

/* Write a SQL query to find the number of unique customers who purchased items from each category. 

SELECT
	category,
	COUNT(DISTINCT customer_id) as cnt_unique_cs
FROM retail_sales
GROUP BY category
*/