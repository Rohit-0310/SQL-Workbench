create database RetailSalesData;

use RetailSalesData;

select * from groceryData;


-- ALTER TABLE groceryData
-- CHANGE COLUMN `ï»¿orderID` orderId varchar(20);


-- 1. Basic GROUP BY and Aggregation
-- Find the total sale_amount per category.

select category, sum(sales) as total_sale_amount from groceryData
group by category;

-- 2. Basic ORDER BY
-- Retrieve all sales ordered by sale_amount in descending order.

select * from groceryData order by sales desc;

-- List all sales in the 'Food Grains' category, sorted in ascending orde by order_id.

select * from groceryData where category = 'Food Grains' order by orderId;

-- 3. Basic LIMIT Clause
-- Retrieve the top 5 most expensive sales.
select * from groceryData 
order by sales desc
limit 5;


-- Fetch any 10 random sales transactions.

select * from groceryData 
order by rand() 
limit 10;

-- . Combining ORDER BY and LIMIT
-- Retrieve the top 3 highest revenue-generating customer_name.

-- orderId, Customer Name, Category, Sub Category, City, Order Date, Region, Sales, Discount, Profit, State

select customerName, sum(sales) as totalRevenue
from groceryData
group by customerName
order by totalRevenue desc
LIMIT 3;


-- 5. Basic Execution Order Understanding
-- Write a query that first filters sales above $3000, then groups by category, and orders by total sales.

select category, sum(sales) as total_sales
from groceryData
where sales > 3000
group by category
order by total_sales desc;

-- 6. Basic GROUP BY with Filtering
-- Retrieve total sales per region, but only include regions where total sales exceed $10,000.

select region, SUM(sales) as total_sales
from groceryData
group by region
having total_sales > 10000
order by total_sales desc;


-- Medium Level
-- 7. GROUP BY with Multiple Aggregations
-- Find the highest, lowest, and average sale_amount per category.

select category, 
max(sales) as highest_sale,
min(sales) as lowest_sale,
avg(sales) as average_sale
from groceryData
group by category;



-- 8. Advanced ORDER BY & LIMIT Use Case
-- Retrieve the 5 most recent sales.

select * from groceryData 
order by orderDate desc
limit 5;

-- Get the top 3 largest transactions per region.

with rankedTransactions as (
    select region, orderId, sales,
           rank() over(partition by region order by sales desc) as sales_rank
    from groceryData
)
select region, orderId, sales
from RankedTransactions
where sales_rank <= 3
order by region, sales_rank;


-- 9. Logical Optimization of Query Execution
-- Retrieve the top 10 regions contributing to total sales.


select region, sum(sales) as total_sales
from groceryData
group by region
order by total_sales desc
limit 10;


-- 10. Advanced GROUP BY with HAVING
-- Retrieve category with total sales exceeding $20,000.

select * from groceryData;

select category, sum(sales) as total_sales
from groceryData
group by category having total_sales > 20000;


-- Sort by total sales in descending order and return the top 3 categories.

select category, sum(sales) as total_sales
from groceryData
group by category 
having total_sales > 20000
order by total_sales desc
limit 3;

-- 11. Complex GROUP BY, HAVING, ORDER BY, and LIMIT
-- Find the top 3 regions where total sales exceeded 2,000, sorted in descending order.

select region, sum(sales) as total_sales
from groceryData
group by region having total_sales > 20000
order by total_sales desc
limit 3;

-- Retrieve categories with the highest sales per region.




-- 12. Challenging Query Optimization Task
-- Optimize a query to get the top 3 transactions(sales) in terms of sale_amount.

select * from groceryData
order by sales desc
limit 3;

