
use ecommerce_db;


 CREATE TABLE users (
 id SERIAL PRIMARY KEY,
 name VARCHAR(100) not null,
 email VARCHAR(100) UNIQUE
 );
 
 
 
 CREATE TABLE products (
 id SERIAL PRIMARY KEY,
 name VARCHAR(100) not null,
 quantity DECIMAL(3),
 product_type VARCHAR(20)
 );
 
 
CREATE TABLE orders (
id SERIAL PRIMARY KEY,
product_name int REFERENCES products(id),
user int REFERENCES users(id),
quantity INT not null

);


-- A Primary Key is a column that uniquely identifies each record in a database. It MUST NOT contain duplicate or NULL values.
-- A Foreign is a column in one table that references the primary key of another table, creating a relationship between the two or multiple tables.


SHOW TABLES;
