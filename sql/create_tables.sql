/*
Create database for the project
This database will store all tables related to the analysis
*/

CREATE DATABASE saas_analytics;
USE saas_analytics;

-- Customers table stores user information

CREATE TABLE saas_analytics.customer_raw (
    CustomerID VARCHAR(50),
    Country VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(100),
    ZipCode VARCHAR(20),
	Latitude DECIMAL(10,6),
	Longitude DECIMAL(10,6),
    Gender VARCHAR(10),
    SeniorCitizen VARCHAR(10),
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    TenureMonths INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(50),
    InternetService VARCHAR(50),
    OnlineSecurity VARCHAR(50),
    OnlineBackup VARCHAR(50),
    DeviceProtection VARCHAR(50),
    TechSupport VARCHAR(50),
    StreamingTV VARCHAR(50),
    StreamingMovies VARCHAR(50),
    Contract VARCHAR(50),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(100),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    ChurnLabel VARCHAR(10),
    ChurnValue INT,
    ChurnScore INT,
    CLTV INT,
    ChurnReason TEXT
);

--- The incident log table records customer issues, how they were handled by support, and the time taken to resolve them.

CREATE TABLE saas_analytics.incident_raw (
    number VARCHAR(50),
    incident_state VARCHAR(50),
    active BOOLEAN,
    reassignment_count INT,
    reopen_count INT,
    sys_mod_count INT,
    made_sla BOOLEAN,
    caller_id VARCHAR(50),
    opened_by VARCHAR(50),
    opened_at DATETIME,
    sys_created_by VARCHAR(50),
    sys_created_at DATETIME,
    sys_updated_by VARCHAR(50),
    sys_updated_at DATETIME,
    contact_type VARCHAR(50),
    location VARCHAR(100),
    category VARCHAR(100),
    subcategory VARCHAR(100),
    u_symptom VARCHAR(100),
    cmdb_ci VARCHAR(100),
    impact VARCHAR(20),
    urgency VARCHAR(20),
    priority VARCHAR(20),
    assignment_group VARCHAR(100),
    assigned_to VARCHAR(100),
    knowledge BOOLEAN,
    u_priority_confirmation BOOLEAN,
    notify VARCHAR(50),
    problem_id VARCHAR(50),
    rfc VARCHAR(50),
    vendor VARCHAR(100),
    caused_by VARCHAR(50),
    closed_code VARCHAR(100),
    resolved_by VARCHAR(100),
    resolved_at DATETIME,
    closed_at DATETIME
);
