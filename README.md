# Logistics Management System

This is a web-based Logistics Management System built using **ASP.NET MVC** and **MS SQL Server**. It allows administrators to efficiently manage **orders**, **customers**, **shipments**, **warehouse inventory**, **packages**, and **payments**. The system supports **order tracking**, **payment processing**, and real-time **observer notifications**.

---

## Features

### Order Management
- Create, edit, and complete orders.
- Track order statuses (e.g., *Processing*, *Completed*).
- Link orders with customers, packages, and payments.

### Customer Management
- Add and manage customer details (names, contact info, addresses).
- View customer-specific orders, payments, and shipments.

### Warehouse Management
- Manage warehouse inventory and package storage.
- Track package movements.
- Support package-specific handling (e.g., fragile, perishable).
- Integrate with shipment schedules for storage optimization.

### Vehicle & Route Management
- Manage delivery vehicle fleet.
- Assign vehicles to shipments based on weight/destination.
- Track availability and maintenance.
- Optimize delivery routes.

### Package Management
- Capture package details (dimensions, weight, contents).
- Handle special handling requirements.
- Associate packages with customers and orders.
- End-to-end tracking from creation to delivery.

### Shipment Management
- Manage shipments, including source and destination.
- Estimate delivery times.
- Link with customers and packages.

### Payment Processing
- Process and track payments per order/customer.
- Update order statuses based on payment state.
- Support multiple payment methods.

### Observer Pattern Notifications
- Notify observers on:
  - Order creation
  - Package updates
  - Shipment creation
  - Payment processing
- Ensure real-time system updates.

### Admin Login
- Secure login system for administrators.
- Session tracking and role-based access control.

---

## Technologies Used

- Backend: ASP.NET MVC (C#)
- Frontend: Razor Views, HTML, CSS, JavaScript
- Database: MS SQL Server with Entity Framework (Database First)
- Design Pattern: Observer Pattern

---

## Prerequisites

- Visual Studio 2022 or later
- .NET Framework 4.7.2 or later
- SQL Server (LocalDB or full version)

---

## Installation

### 1. Clone the Repository
   ```bash
   git clone https://github.com/Mustabass1r/logistic-management-system.git
   cd logistic-management-system
   ```
### 2. Open the project in Visual Studio.

### 3. Restore NuGet packages:
 - Go to Tools > NuGet Package Manager > Manage NuGet Packages for Solution.
 - Restore all missing packages.
   
### 4. Update the database connection string:
 - Open Web.config and update the <connectionStrings> section with your database credentials.

### 5. Run database migrations:
 - Open the Package Manager Console in Visual Studio.
 - Run the following command:
   ```bash
   Update-Database
### 6. Build and run the project:
 - Press F5 or click Start in Visual Studio.

## Database Setup (Using SQL Script)

If you're not using Entity Framework migrations, use the provided SQL script to manually create necessary tables.

### Run the SQL Script
 - Open SQL Server Management Studio (SSMS).
 - Connect to your local SQL Server instance.
 - Run the script Scripts/CreateDatabase.sql (included in the repo).  
This will:

 - Create the database LogisticsDB

 - Set up all required tables (Customers, Orders, Packages, Shipments, Payments, etc.)
