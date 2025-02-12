create database studentRecord;

use studentRecord;

create table students(
id int primary Key,
name varchar(25),
age int
);

Insert into students(id,name,age) 
values(1, 'Alice',22),
(2,'Bob',17),
(3, 'Chaelie', 20),
(4, 'Diana', 19);

select * from students;


create table orders(
order_id INT Primary key, 
customer_id INT, 
order_date date,
order_status varchar(25)
);

Insert into orders(order_id,customer_id,order_date,order_status) 
values(101, 1, '2025-01-10','Delivered'),
(102, 2,'2025-01-12','Cancelled'),
(103, 1, '2025-01-15', 'Delivered'),
(104, 3, '2025-01-18', 'Pending');

select * from orders;

delete from students where id = 2;

SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1;

update students set age = 21 where name = 'Chaelie';

select * from students;

select * from orders where order_date > '2025-01-12';

delete from orders where order_status = 'Cancelled';

select customer_id, COUNT(*) as total_orders
from orders group by customer_id order by total_orders ASC;

select s.id, s.name, s.age 
from students s left join orders o on s.id = o.customer_id
where o.customer_id is null;

