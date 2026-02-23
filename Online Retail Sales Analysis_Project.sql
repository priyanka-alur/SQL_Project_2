CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    product_category VARCHAR(30),
    quantity INT,
    price INT,
    total_amount INT
);
INSERT INTO online_sales VALUES
(201, '2024-01-05', 'Ravi', 'Bangalore', 'Electronics', 1, 45000, 45000),
(202, '2024-01-07', 'Anita', 'Hyderabad', 'Furniture', 1, 30000, 30000),
(203, '2024-01-10', 'Suresh', 'Bangalore', 'Electronics', 2, 30000, 60000),
(204, '2024-01-12', 'Meena', 'Chennai', 'Clothing', 3, 5000, 15000),
(205, '2024-01-15', 'Ravi', 'Bangalore', 'Furniture', 1, 40000, 40000),
(206, '2024-01-18', 'Anita', 'Hyderabad', 'Electronics', 1, 55000, 55000),
(207, '2024-01-20', 'Kiran', 'Chennai', 'Clothing', 4, 5000, 20000),
(208, '2024-01-22', 'Deepak', 'Mumbai', 'Electronics', 1, 70000, 70000),
(209, '2024-01-25', 'Pooja', 'Mumbai', 'Furniture', 1, 35000, 35000),
(210, '2024-01-28', 'Asha', 'Bangalore', 'Clothing', 2, 6000, 12000);

-- Task 1: Display all sales records

select * from online_sales

-- Task 2: Display all sales from  from Bangalore

SELECT * FROM online_sales
WHERE city = 'Bangalore';

-- Task 3: Display sales where 
-- product category is Electronics 
-- AND total amount is greater than 50,000

select * from online_sales
where product_category = 'Electronics' and total_amount > 50000;

-- Task 4: Display sales where product category is Furniture OR Clothing
select * from online_sales
where product_category in ('Furniture','Clothing')

-- Task 5: Display all sales sorted by total_amount (descending)

select * from online_sales
order by total_amount desc

-- Task 6: Find the highest value order

select top 1 * from online_sales
order by total_amount desc

-- Task 7: Find the top 3 highest value orders

select top 3 * from online_sales
order by total_amount desc

-- Task 8: Find the number of orders per product category
select * from online_sales

select product_category, count(*) as no_of_orders
from online_sales
group by product_category;

-- Task 9: Find the average order value per product category

select product_category, avg(total_amount) as avg_order_value
from online_sales
group by product_category;

-- Task 10 (Important – Business logic):
-- Show only those product categories where
-- average order value is greater than 40,000

select product_category, avg(total_amount) as avg_order_value
from online_sales
group by product_category
having avg(total_amount) > 40000;