
-- SQL Implementation for E-Commerce Platform

-- Table: Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    address VARCHAR(100),
    phone_number VARCHAR(100)
);

-- Table: Product
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    SKU VARCHAR(100),
    description VARCHAR(100),
    price DECIMAL(10,2),
    stock INT,
    category_id INT
);

-- Table: Category
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Table: Order
CREATE TABLE `Order` (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_price DECIMAL(10,2),
    shipment_id INT
);

-- Table: Order_Item
CREATE TABLE Order_Item (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);

-- Table: Cart
CREATE TABLE Cart (
    cart_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT
);

-- Table: Wishlist
CREATE TABLE Wishlist (
    wishlist_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT
);

-- Table: Payment
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    payment_method VARCHAR(100),
    payment_date DATETIME,
    amount DECIMAL(10,2)
);

-- Table: Shipment
CREATE TABLE Shipment (
    shipment_id INT PRIMARY KEY,
    shipment_date DATETIME,
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(20),
    country VARCHAR(50),
    zip_code VARCHAR(10)
);
