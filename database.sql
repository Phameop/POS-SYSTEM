CREATE DATABASE pos_db;
USE pos_db;

CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  selling_price DECIMAL(10,2),
  stock INT
);

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  phone VARCHAR(20)
);

CREATE TABLE transactions (
  transaction_id INT AUTO_INCREMENT PRIMARY KEY,
  total_amount DECIMAL(10,2),
  payment_status VARCHAR(50)
);

CREATE TABLE transaction_items (
  item_id INT AUTO_INCREMENT PRIMARY KEY,
  transaction_id INT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10,2)
);
