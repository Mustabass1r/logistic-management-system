CREATE DATABASE LogisticManagement;
GO

USE LogisticManagement;
GO

-- ================================
-- TABLE CREATIONS
-- ================================

-- Admin Table
CREATE TABLE dbo.Admin (
    username VARCHAR(225) NOT NULL PRIMARY KEY,
    password VARCHAR(225)
);

-- City Table
CREATE TABLE dbo.City (
    city_name VARCHAR(255) NOT NULL PRIMARY KEY,
    latitude DECIMAL(9, 6) NOT NULL,
    longitude DECIMAL(9, 6) NOT NULL
);

-- Customer Table
CREATE TABLE dbo.Customer (
    customer_id INT IDENTITY(1000,1) PRIMARY KEY,
    customer_name VARCHAR(225) NOT NULL,
    address VARCHAR(225) NOT NULL,
    email VARCHAR(225),
    phone_number INT NOT NULL
);

-- Order Table
CREATE TABLE dbo.[Order] (
    order_id INT IDENTITY(100,1) PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    delivery_charges MONEY,
    Status VARCHAR(225)
);

-- Package Table
CREATE TABLE dbo.Package (
    package_id INT IDENTITY(10,1) PRIMARY KEY,
    order_id INT,
    description VARCHAR(225),
    weight DECIMAL(10, 2),
    length DECIMAL(10, 2),
    width DECIMAL(10, 2),
    height DECIMAL(10, 2),
    fragile BIT NOT NULL
);

-- Payment Table
CREATE TABLE dbo.Payment (
    payment_id INT IDENTITY(100,1) PRIMARY KEY,
    order_id INT,
    amount MONEY NOT NULL,
    payment_method VARCHAR(225) NOT NULL
);

-- Rate Table
CREATE TABLE dbo.Rate (
    rate_id INT IDENTITY(1,1) PRIMARY KEY,
    delivery_method VARCHAR(50) NOT NULL,
    weight_range_start DECIMAL(10, 2) NOT NULL,
    weight_range_end DECIMAL(10, 2) NOT NULL,
    rate_per_km DECIMAL(10, 2) NOT NULL
);

-- Route Table
CREATE TABLE dbo.Route (
    route_id INT IDENTITY(1,1) PRIMARY KEY,
    route_link VARCHAR(MAX)
);

-- Shipment Table
CREATE TABLE dbo.Shipment (
    shipment_id INT IDENTITY(1,1) PRIMARY KEY,
    package_id INT,
    customer_id INT,
    destination_address VARCHAR(225) NOT NULL,
    shipment_date DATE NOT NULL,
    estimated_delivery_date DATE,
    actual_delivery_date DATE,
    Status VARCHAR(225) NOT NULL,
    delivery_method VARCHAR(50),
    destination_city_name VARCHAR(255),
    source_city_name VARCHAR(255)
);

-- ShipmentVehicle Table
CREATE TABLE dbo.ShipmentVehicle (
    shipment_id INT,
    vehicle_id INT,
    load_date DATE,
    unload_date DATE,
    PRIMARY KEY (shipment_id, vehicle_id)
);

-- Vehicle Table
CREATE TABLE dbo.Vehicle (
    vehicle_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_number VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    vehicle_city_name VARCHAR(255)
);

-- VehicleRoute Table
CREATE TABLE dbo.VehicleRoute (
    vehicle_route_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT,
    route_id INT,
    assignment_date DATE NOT NULL
);

-- Warehouse Table
CREATE TABLE dbo.Warehouse (
    warehouse_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(255),
    city_name VARCHAR(255)
);

-- Warehouse Inventory Table
CREATE TABLE dbo.warehouse_inventory (
    package_id INT PRIMARY KEY,
    category VARCHAR(225),
    shelf_no INT NOT NULL,
    row_no INT NOT NULL,
    column_no INT NOT NULL,
    warehouse_id INT
);

-- Test Table (optional/sample)
CREATE TABLE dbo.test (
    testid INT PRIMARY KEY,
    name VARCHAR(225),
    age INT
);

-- ================================
-- FOREIGN KEYS
-- ================================

ALTER TABLE dbo.[Order] ADD FOREIGN KEY (customer_id) REFERENCES dbo.Customer(customer_id);

ALTER TABLE dbo.Package ADD FOREIGN KEY (order_id) REFERENCES dbo.[Order](order_id);

ALTER TABLE dbo.Payment ADD FOREIGN KEY (order_id) REFERENCES dbo.[Order](order_id);

ALTER TABLE dbo.Shipment ADD FOREIGN KEY (customer_id) REFERENCES dbo.Customer(customer_id);
ALTER TABLE dbo.Shipment ADD FOREIGN KEY (package_id) REFERENCES dbo.Package(package_id);
ALTER TABLE dbo.Shipment ADD FOREIGN KEY (source_city_name) REFERENCES dbo.City(city_name);
ALTER TABLE dbo.Shipment ADD FOREIGN KEY (destination_city_name) REFERENCES dbo.City(city_name);

ALTER TABLE dbo.ShipmentVehicle ADD FOREIGN KEY (shipment_id) REFERENCES dbo.Shipment(shipment_id);
ALTER TABLE dbo.ShipmentVehicle ADD FOREIGN KEY (vehicle_id) REFERENCES dbo.Vehicle(vehicle_id);

ALTER TABLE dbo.Vehicle ADD FOREIGN KEY (vehicle_city_name) REFERENCES dbo.City(city_name);

ALTER TABLE dbo.VehicleRoute ADD FOREIGN KEY (vehicle_id) REFERENCES dbo.Vehicle(vehicle_id);
ALTER TABLE dbo.VehicleRoute ADD FOREIGN KEY (route_id) REFERENCES dbo.Route(route_id);

ALTER TABLE dbo.Warehouse ADD FOREIGN KEY (city_name) REFERENCES dbo.City(city_name);

ALTER TABLE dbo.warehouse_inventory ADD FOREIGN KEY (package_id) REFERENCES dbo.Package(package_id);
ALTER TABLE dbo.warehouse_inventory ADD FOREIGN KEY (warehouse_id) REFERENCES dbo.Warehouse(warehouse_id);
