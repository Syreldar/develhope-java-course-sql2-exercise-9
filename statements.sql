CREATE TABLE Customers (
  customer_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (customer_id)
);

INSERT INTO Customers (first_name, last_name, email)
VALUES 
('Enrico', 'Drago', 'enrico.drago3@gmail.com'),
('Carlo', 'Casiglia', 'carlo.casiglia2@gmail.com');

UPDATE Customers 
SET first_name = 'Harry'
WHERE customer_id = 1;

DELETE FROM Customers
WHERE customer_id = 2;

TRUNCATE TABLE Customers;

CREATE TABLE Customers (
  customer_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (customer_id)
);

CREATE TABLE Products (
  product_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL,
  product_description VARCHAR(255) NOT NULL,
  product_price DECIMAL(10, 2) NOT NULL,
  product_quantity INT NOT NULL,
  PRIMARY KEY (product_id)
);

CREATE TABLE Orders (
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL,
  expected_arrival_time DATE,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Product_Orders (
  product_order_id INT NOT NULL AUTO_INCREMENT,
  order_id INT NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  total_revenue DOUBLE,
  PRIMARY KEY (product_order_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
