CREATE TABLE products (
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price NUMERIC(10,2)
);
CREATE TABLE customers (
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50)
);
CREATE TABLE sales (
sale_id SERIAL PRIMARY KEY,
product_id INT REFERENCES products(product_id),
customer_id INT REFERENCES customers(customer_id),
sale_date DATE,
quantity INT,
amount NUMERIC(10,2)
);
INSERT INTO products (product_name, category, price) VALUES
('Laptop','Electronics',50000),
('Smartphone','Electronics',30000),
('Headphones','Accessories',2000),
('Keyboard','Accessories',1500),
('Mouse','Accessories',800);
INSERT INTO customers (customer_name, city) VALUES
('Rahul','Chennai'),
('Priya','Coimbatore'),
('Arun','Salem'),
('Sneha','Erode'),
('Karthik','Namakkal');
INSERT INTO sales (product_id, customer_id, sale_date, quantity, amount) VALUES
(1,1,'2025-01-10',1,50000),
(2,2,'2025-01-12',1,30000),
(3,1,'2025-02-05',2,4000),
(4,3,'2025-02-15',1,1500),
(5,4,'2025-03-01',1,50000),
(2,5,'2025-03-10',1,30000),
(5,2,'2025-03-20',3,2400);