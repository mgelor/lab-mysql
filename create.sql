
REATE DATABASE lab_mysql;
USE lab_mysql;

SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE cars (ID int PRIMARY KEY AUTO_INCREMENT, vin CHAR(20) NOT NULL UNIQUE, manufacturer VARCHAR(15) NOT NULL, model VARCHAR(10) NOT NULL,
year INT NOT NULL, color_hex CHAR(7) NOT NULL, price DECIMAL(7,1) NOT NULL, odometer DECIMAL(7,1), conditions CHAR(10));

CREATE TABLE invoices (ID int PRIMARY KEY AUTO_INCREMENT, invoice_number CHAR(9) NOT NULL UNIQUE, Date DATE NOT NULL, vin CHAR(20) NOT NULL,
consumer_ID CHAR(12) NOT NULL, staff_ID VARCHAR(10) NOT NULL, amount DECIMAL(7,1) NOT NULL, payment_type CHAR(12));

CREATE TABLE customers (ID int PRIMARY KEY AUTO_INCREMENT, customer_ID CHAR(5) NOT NULL UNIQUE, first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR (20) NOT NULL, phone VARCHAR(20), email VARCHAR(30), address VARCHAR (50) NOT NULL, city CHAR(20) NOT NULL, 
state CHAR(20), country CHAR(20), zip INT);

CREATE TABLE salesperson (ID int PRIMARY KEY AUTO_INCREMENT, staff_ID VARCHAR(5) NOT NULL UNIQUE, first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR (20) NOT NULL, store CHAR(25) NOT NULL, seniority INT NOT NULL, commission DECIMAL(7,2) NOT NULL, sales_completed INT NOT NULL);