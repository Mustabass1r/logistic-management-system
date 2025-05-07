# Logistics Management System

This is a web-based Logistics Management System built using ASP.NET MVC. The system allows administrators to manage orders, customers, shipments, warehouse, packages, and payments efficiently. It also includes features for order tracking, payment processing, and observer notifications.

## Features

**Order Management:**
 - Create, edit, and complete orders.
 - Track the status of orders (e.g., "Processing", "Completed").
 - Associate orders with customers, packages, and payments.
**Customer Management:**
 - Add and manage customer details, including names, contact information, and addresses.
 - Link customers to their respective orders, shipments, and payments.
**Warehouse Management:**
 - Manage inventory and package storage within the warehouse.
 - Track the movement of packages in and out of the warehouse.
 - Ensure proper handling of packages based on their type (e.g., fragile, perishable).
 - Integrate with shipment schedules to optimize storage and retrieval processes.
**Vehicle Management:**
 - Manage the fleet of vehicles used for deliveries.
 - Assign vehicles to specific shipments based on delivery requirements (e.g., size, weight and destination).
 - Track vehicle availability and maintenance schedules.
 - Optimize delivery routes to reduce costs and improve efficiency.
**Package Management:**
 - Capture detailed package information, including dimensions, weight, and contents.
 - Associate packages with specific orders and customers.
 - Handle special package requirements (e.g., fragile items, temperature-sensitive goods).
 - Track the status of packages from creation to delivery.
**Shipment Management:**
 - Create and manage shipment details, including source and destination cities.
 - Calculate estimated delivery dates based on delivery methods and routes.
 - Link shipments to packages and customers for end-to-end tracking.
**Payment Processing:**
 - Process payments for orders and associate them with specific customers and shipments.
 - Track payment amounts, methods, and statuses.
 - Update order statuses based on payment completion.
 **Observer Pattern for Notifications:**
 - Notify observers when key events occur, such as:
        - Order creation.
        - Package detail capture.
        - Shipment creation.
        - Payment processing.
 - Ensure real-time updates for administrators and other stakeholders.
**Admin Login:**
 - Secure login system for administrators.
 - Session management to track logged-in users.
 - Restrict access to sensitive features for unauthorized users.

## Technologies Used

- **Backend**: ASP.NET MVC
- **Frontend**: Razor Views, HTML, CSS, JavaScript
- **Database**: Entity Framework with SQL Server
- **Design Patterns**: Observer Pattern

## Prerequisites

- Visual Studio 2022 or later
- .NET Framework 4.7.2 or later
- SQL Server (LocalDB or full version)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/LogisticsManagement.git
   cd LogisticsManagement
Open the project in Visual Studio.

Restore NuGet packages:

Go to Tools > NuGet Package Manager > Manage NuGet Packages for Solution.
Restore all missing packages.
Update the database connection string:

Open Web.config and update the <connectionStrings> section with your database credentials.
Run database migrations:

Open the Package Manager Console in Visual Studio.
Run the following command:
Update-Database
Build and run the project:

Press F5 or click Start in Visual Studio.

Usage
Admin Login:

Use the login page to access the admin dashboard.
Default credentials (if applicable):
Username: admin
Password: password
Order Management:

Navigate to the "Orders" section to create, edit, or complete orders.
Customer Management:

Add customer details when creating an order.
Shipment and Package Management:

Capture shipment and package details for each order.
Payment Processing:

Process payments and associate them with orders.