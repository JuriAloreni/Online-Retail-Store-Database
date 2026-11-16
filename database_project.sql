/* Customersجدول ال */
CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
password_hash VARCHAR(255) NOT NULL,
created_at DATE
);
/* بياناته */
INSERT INTO Customers VALUES (1, 'Sara Ahmed', 'sara@example.com', 'DEMO_HASH_001', DATE '2026-11-01');
INSERT INTO Customers VALUES (2, 'Nora Ali', 'nora@example.com', 'DEMO_HASH_002', DATE '2026-11-02');
INSERT INTO Customers VALUES (3, 'Maha Khalid', 'maha@example.com', 'DEMO_HASH_003', DATE '2026-11-03');
INSERT INTO Customers VALUES (4, 'Lama Saad', 'lama@example.com', 'DEMO_HASH_004', DATE '2026-11-04');
INSERT INTO Customers VALUES (5, 'Reem Omar', 'reem@example.com', 'DEMO_HASH_005', DATE '2026-11-05');
SELECT * FROM Customers;

/* categoriesجدول ال */
CREATE TABLE categories (
category_id INT PRIMARY KEY,
category_name VARCHAR(80) NOT NULL
);
/* بياناته */
INSERT INTO categories VALUES (1, 'Beauty and Care');
INSERT INTO categories VALUES (2, 'Furniture');
INSERT INTO categories VALUES (3, 'Electronics');
INSERT INTO categories VALUES (4, 'Clothing');
INSERT INTO categories VALUES (5, 'Books');
SELECT * FROM categories;

/* Productsجدول ال */
CREATE TABLE Products (
product_id INT PRIMARY KEY,
name VARCHAR2(150) NOT NULL,
price NUMBER(10,2) NOT NULL CHECK (price >= 0),
quantity_in_stock INT NOT NULL CHECK (quantity_in_stock >= 0),
category_id INT,
CONSTRAINT fk_product_category FOREIGN KEY (category_id) 
REFERENCES categories(category_id) 
ON DELETE SET NULL
);
/* بياناته */
INSERT INTO Products VALUES (1, 'Laptop Dell Inspiron', 2500.00, 15, 3);
INSERT INTO Products VALUES (2, 'Wireless Mouse', 75.50, 50, 3);
INSERT INTO Products VALUES (3, 'Office Desk Chair', 450.00, 10, 2);
INSERT INTO Products VALUES (4, 'Bluetooth Headphones', 199.99, 30, 3);
INSERT INTO Products VALUES (5, 'Skincare Serum', 85.00, 25, 1);
SELECT * FROM Products;
