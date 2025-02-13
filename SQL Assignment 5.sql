create database RetailSalesData;

use RetailSalesData;

select * from groceryData;

-- 1. Basic GROUP BY and Aggregation
-- Find the total sale_amount per category.

select category, sum(sales) as total_sale_amount from groceryData
group by category;

-- 2. Basic ORDER BY
-- Retrieve all sales ordered by sale_amount in descending order.

select * from groceryData order by sales desc;

-- List all sales in the 'Food Grains' category, sorted in ascending orde by order_id.

-- ALTER TABLE groceryData
-- CHANGE COLUMN `ï»¿Order ID` orderId varchar(20);

select * from groceryData where category = 'Food Grains' order by orderId;




