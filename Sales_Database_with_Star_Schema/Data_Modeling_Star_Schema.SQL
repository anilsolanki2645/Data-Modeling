-- Create Date Dimension Table
CREATE TABLE Date (
    date_id INT PRIMARY KEY,
    date DATE,
    day_of_week VARCHAR(10),
    month VARCHAR(10),
    year INT
);

-- Create Product Dimension Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

-- Create Store Dimension Table
CREATE TABLE Store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

-- Create Customer Dimension Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

-- Create Sales Fact Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    date_id INT,
    product_id INT,
    store_id INT,
    customer_id INT,
    amount_sold DECIMAL(10, 2),
    FOREIGN KEY (date_id) REFERENCES Date(date_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (store_id) REFERENCES Store(store_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
