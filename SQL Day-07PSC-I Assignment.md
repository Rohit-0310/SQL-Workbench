# Easy Level
1. Understanding JOINS (Theoretical)
    Explain the difference between INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN with real-world examples.
2. Customers & Orders
    Given tables:
        customers(customer_id, name, email)
        orders(order_id, customer_id, total_amount, order_date)
    Write an SQL query to:
        Retrieve all customers who have placed an order.
        List orders along with the customer names.
        Find customers who haven’t placed any orders.
3. Employees & Departments
    Given tables:
        employees(emp_id, name, department_id, salary)
        departments(department_id, dept_name)
    Write a query to:
        Retrieve all employees and their department names, ensuring employees without a department are still listed.
        Find departments that have no employees.
4. Filtering with Aggregation & JOIN
    Given tables:
        students(student_id, name)
        courses(course_id, title)
        enrollments(student_id, course_id, grade)
    Write a query to:
        Retrieve the average grade per course.
        List students who are not enrolled in any courses.
        Find students who scored above the course average grade.
# Medium Level (Complex JOINS & Aggregations)
1. Combining Multiple JOINS: Employee & Manager Details
    Given tables:
        employees(emp_id, name, department_id, salary, manager_id)
        departments(department_id, dept_name, manager_id)
        managers(manager_id, manager_name, bonus)
    Write an SQL query to:
        Retrieve all employees with their department name and manager details.
        Find departments that do not have a manager assigned.
        Retrieve employees who earn more than their department’s average salary.
2. Product Sales Analysis with JOINS
    Given tables:
        products(product_id, product_name, category)
        orders(order_id, customer_id, order_date)
        order_items(order_item_id, order_id, product_id, quantity, price)
    Write SQL queries to:
        Retrieve all products that have never been sold.
        Find the top 3 best-selling products based on total quantity sold.
        Get the total revenue per product category.
3. Advanced Filtering with JOINS: Employee Performance
    Given tables:
        employees(emp_id, name, salary, department_id)
        departments(department_id, dept_name, manager_id)
        projects(project_id, project_name, budget)
        employee_projects(emp_id, project_id, role)
    Write SQL queries to:
        Retrieve all employees and the projects they are working on.
        Find employees who are not assigned to any project.
        List projects that have no employees assigned.
4. Customer Order Behavior Analysis
    Given tables:
        customers(customer_id, name, email)
        orders(order_id, customer_id, total_amount, order_date)
    Write SQL queries to:
        Find customers who have placed more than 5 orders.
        Retrieve the total amount spent per customer.
        Get customers who haven’t placed any orders in the last 6 months.
5. Mastering Aggregations with HAVING & JOINS
    Given a sales table with:
        sale_id, product_name, quantity, price, region
    Write queries to:
        Find total revenue per region, but only for regions where revenue exceeds $10,000.
        Retrieve the lowest revenue-generating product.
        Get the monthly revenue for the past 6 months.
# Hard Level (Advanced JOINS & Real-World Scenarios)
1. Mastering SQL Joins: Employees, Departments, and Managers
    Given tables:
        employees(emp_id, name, department_id, salary)
        departments(department_id, dept_name, manager_id)
        managers(manager_id, manager_name, bonus)
    Write SQL queries to:
        Retrieve all employees with their department names and managers.
        Find employees who earn more than their department’s average salary.
        Calculate the total salary expense per manager, including bonus amounts.
2. Complex Many-to-Many Relationship: Student-Course Enrollments
    Given tables:
        students(student_id, name)
        courses(course_id, title, credits)
        enrollments(student_id, course_id, grade)
    Write SQL queries to:
        Retrieve all students along with their enrolled courses.
        Find students who are enrolled in more than 3 courses.
        Get the highest and lowest grades for each course.
3. E-commerce Data Analysis with JOINS & Aggregation
    Given tables:
        customers(customer_id, name, email)
        orders(order_id, customer_id, total_amount, order_date)
        order_items(order_item_id, order_id, product_id, quantity, price)
        products(product_id, product_name, category, supplier_id)
    * Wrie SQL queries to:
        Find the total revenue per customer, including product details.
        Retrieve the top 5 customers based on total spending.
        Get the most profitable product category.
        Find customers who purchased products from at least 3 different categories.