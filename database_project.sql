/* Customersجدول ال */
CREATE TABLE Customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE,
password_hash VARCHAR(255) NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
/* بياناته */
INSERT INTO Customers (name, email, password_hash)
VALUES
('Sara Ahmed', 'sara@example.com', 'DEMO_HASH_001'),
('Nora Ali', 'nora@example.com', 'DEMO_HASH_002'),
('Maha Khalid', 'maha@example.com', 'DEMO_HASH_003'),
('Lama Saad', 'lama@example.com', 'DEMO_HASH_004'),
('Reem Omar', 'reem@example.com', 'DEMO_HASH_005'),
SELECT * FROM Customers;

/* categoriesجدول ال */
CREATE TABLE categories (
category_id INT PRIMARY KEY,
category_name VARCHAR(80) NOT NULL
);
/* بياناته */
INSERT INTO categories (category_id, category_name)
VALUES 
(1, 'Beauty and Care'),
(2, 'Furniture'),
(3, 'Electronics'),
(4, 'Clothing'),
(5, 'Books'),
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
INSERT INTO Products (product_id, name, price, quantity_in_stock, category_id)
VALUES
(1, 'Laptop Dell Inspiron', 2500.00, 15, 3),
(2, 'Wireless Mouse', 75.50, 50, 3),
(3, 'Office Desk Chair', 450.00, 10, 2),
(4, 'Bluetooth Headphones', 199.99, 30, 3),
(5, 'Skincare Serum', 85.00, 25, 1),
SELECT * FROM Products;
