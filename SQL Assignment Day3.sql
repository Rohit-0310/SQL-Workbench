create database School;

use School;

create table StudentScores(StudentID INT Primary key, MathScore INT, ScienceScore INT, TotalClasses INT,DaysAbsent INT);

Insert into StudentScores(StudentID,MathScore,ScienceScore,TotalClasses,DaysAbsent) 
values(1,85,90,30,5),(2,75,80,25,3),(3,95,85,28,6),(4,60,70,32,7),(5,80,80,30,2);

select * from StudentScores;

/*
Easy SQL Questions (5-6 questions)
1. Calculate the total score for each student by adding the MathScore and ScienceScore.
2. Calculate the number of classes each student actually attended.
3. Find the total study hours for each student, assuming each class equals 2 study hours.
4. Calculate the average score for each student (MathScore + ScienceScore) / 2.
5. Retrieve the total score of each student where the combined score is greater than 160.
6. Find students who attended more than 25 classes.
*/
-- 1. Calculate the total score for each student by adding the MathScore and ScienceScore.??

select StudentID, (MathScore + ScienceScore) as TotalScore from StudentScores;

-- 2. Calculate the number of classes each student actually attended.?
select StudentID, (TotalClasses - DaysAbsent) as ActuallyAttended from StudentScores;

-- 3. Find the total study hours for each student, assuming each class equals 2 study hours.
select StudentID, ((TotalClasses - DaysAbsent) *2) as TotalStudyHours from StudentScores;

-- 4. Calculate the average score for each student (MathScore + ScienceScore) / 2.??
select StudentID, ((MathScore + ScienceScore)/2) as AverageScore from StudentScores;

-- 5. Retrieve the total score of each student where the combined score is greater than 160.??
select StudentID, (MathScore + ScienceScore) as TotalScore from StudentScores where((MathScore + ScienceScore) > 160) ;

-- 6. Find students who attended more than 25 classes.??

select * from StudentScores where (TotalClasses - DaysAbsent) > 25;

create table Products(ProductID INT Primary key, ProductName varchar(20), Price INT, Quantity INT,Discount decimal(5,2));

Insert into Products(ProductID, ProductName, Price, Quantity, Discount) 
values(1,'Pen',10,50,10),(2,'Notebook',20,30,5),(3,'Eraser',5,100,0),(4,'Marker',15,40,20);

select * from Products;

-- Medium Difficulty SQL Questions (4 questions)

-- Calculate the discounted price for each product and find products where the discounted price is greater than 15.

select ProductID, ProductName, Price,Quantity, Discount, (Price -(Price * Discount /100)) as DiscountedPrice
from Products where ((Price - (Price * Discount / 100)) > 15);

-- Find products with total inventory value (Price × Quantity) greater than 600.

select  ProductID, ProductName, Price, Quantity, Discount, (Price * Quantity) as TotalInventoryValue
from Products where (Price * Quantity) > 600;

-- Retrieve products where the price after discount is less than 10.

select  *, (Price -(Price * Discount /100)) as DiscountedPrice from Products 
where  ((Price - (Price * Discount / 100)) < 10);

-- Find products where the price after discount is between 5 and 15.

select  *, (Price -(Price * Discount /100)) as DiscountedPrice from Products 
where  ((Price - (Price * Discount / 100)) < 15 AND (Price - (Price * Discount / 100)) > 5);




-- Hard SQL Questions (2 questions)



-- Q1: Find the student(s) who attended the maximum number of classes, and also calculate their total score.

select *,(MathScore + ScienceScore) as TotalScore,
 (TotalClasses - DaysAbsent) as ActuallyAttended from StudentScores 
 where (TotalClasses - DaysAbsent) = (select MAX(TotalClasses - DaysAbsent) from StudentScores);


-- Q2: Find products where the price after discount is greater than 10 but less than 20, 
-- and the total inventory value (Price × Quantity) exceeds 600.

select *, (Price -(Price * Discount /100)) as DiscountedPrice,
 (Price * Quantity) as TotalInventoryValue from Products 
where  (Price - (Price * Discount / 100)) between 10 AND 20
 AND (Price * Quantity) >= 600;





