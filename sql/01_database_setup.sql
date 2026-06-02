/*
Create database for the project
This database will store all tables related to the analysis
*/

CREATE DATABASE olist_operations;
USE olist_operations;



CREATE TABLE customers (
    customer_id VARCHAR(50),
    customer_unique_id VARCHAR(50),
    customer_zip_code_prefix VARCHAR(10),
    customer_city VARCHAR(100),
    customer_state CHAR(2)
);

CREATE TABLE order_payments (
    order_id VARCHAR(50),
    payment_sequential INT,
    payment_type VARCHAR(50),
    payment_installments INT,
    payment_value DECIMAL(10,2)
);

CREATE TABLE products (
    product_id VARCHAR(50),
    product_category_name VARCHAR(100),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);

CREATE TABLE sellers (
    seller_id VARCHAR(50),
    seller_zip_code_prefix VARCHAR(10),
    seller_city VARCHAR(100),
    seller_state CHAR(2)
);

CREATE TABLE geolocation (
    geolocation_zip_code_prefix VARCHAR(10),
    geolocation_lat DECIMAL(10,8),
    geolocation_lng DECIMAL(11,8),
    geolocation_city VARCHAR(100),
    geolocation_state CHAR(2)
);

CREATE TABLE product_category_translation (
    product_category_name VARCHAR(100),
    product_category_name_english VARCHAR(100)
);
