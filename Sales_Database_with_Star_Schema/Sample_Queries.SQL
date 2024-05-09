-- [1] Query to Retrieve Total Sales Amount for Each Product Category:

SELECT p.category, SUM(s.amount_sold) AS total_sales
FROM Sales s
JOIN Product p ON s.product_id = p.product_id
GROUP BY p.category;

-- [2] Query to Find Top 5 Selling Products:

SELECT p.product_name, SUM(s.amount_sold) AS total_sales
FROM Sales s
JOIN Product p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 5;

-- [3] Query to Calculate Average Unit Price of Products by Brand:

SELECT p.brand, AVG(p.unit_price) AS avg_unit_price
FROM Product p
GROUP BY p.brand;

-- [4] Query to List Customers Who Spent More Than $1000:

SELECT c.customer_name, SUM(s.amount_sold) AS total_spent
FROM Sales s
JOIN Customer c ON s.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING total_spent > 1000;

-- [5] Query to Retrieve Sales Amount by Day of the Week:

SELECT d.day_of_week, SUM(s.amount_sold) AS total_sales
FROM Sales s
JOIN Date d ON s.date_id = d.date_id
GROUP BY d.day_of_week;

-- [6] Query to Find Customers Who Purchased a Specific Product:

SELECT DISTINCT c.customer_name
FROM Sales s
JOIN Customer c ON s.customer_id = c.customer_id
WHERE s.product_id = (SELECT product_id FROM Product WHERE product_name = 'Laptop');

-- [7] Query to Get Product Details for Sales Made on a Specific Date:

SELECT p.product_name, s.amount_sold
FROM Sales s
JOIN Product p ON s.product_id = p.product_id
JOIN Date d ON s.date_id = d.date_id
WHERE d.date = '2024-01-01';

-- [8] Query to Retrieve Monthly Sales Trend:

SELECT CONCAT(d.year, '-', d.month) AS month_year, SUM(s.amount_sold) AS total_sales
FROM Sales s
JOIN Date d ON s.date_id = d.date_id
GROUP BY month_year
ORDER BY d.year, d.month;

-- [9] Query to Find Product with the Highest Unit Price:

SELECT product_name, unit_price
FROM Product
WHERE unit_price = (SELECT MAX(unit_price) FROM Product);

-- [10] Query to Calculate Total Sales for Each Store in a Specific City:

SELECT st.store_name, SUM(s.amount_sold) AS total_sales
FROM Sales s
JOIN Store st ON s.store_id = st.store_id
WHERE st.city = 'New York City'
GROUP BY st.store_name;

