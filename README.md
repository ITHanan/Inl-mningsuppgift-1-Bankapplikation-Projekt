# Inl-mningsuppgift-1-Bankapplikation-Projekt


### README - Brief Explanation of the Assignment

#### Project: Banking Application

**Objective**:
The goal of this project is to design and implement a database for a banking system. The project requires designing the entities and relationships between the data, implementing SQL queries, optimizing performance using indexing, and ensuring data integrity.

#### Scenario:
The scenario involves designing and implementing a banking system that handles:
- **Customers**: Information about the bank’s clients.
- **Accounts**: Different types of accounts that customers can own (e.g., savings accounts, checking accounts).
- **Transactions**: A record of deposits, withdrawals, and transfers between accounts.

#### Requirements:
1. **Database Design**:
   - Create an **Entity-Relationship (ER) Diagram** for the system, including:
     - **Entities**: Customers, Accounts, Transactions.
     - **Relationships**:
       - A customer can have multiple accounts (1:N).
       - Each account can have multiple transactions (1:N).

2. **Normalization**:
   - **Normalize** the database to **Third Normal Form (3NF)** to eliminate redundancy and ensure data integrity.

3. **SQL Implementation**:
   - Implement the **normalized schema** using SQL queries to create the required tables.

4. **Populate the Database**:
   - Add **at least 10 customers**, **20 accounts**, and **50 transactions** to the database. *(ChatGPT was used to generate SQL queries for populating the database).

5. **SQL Queries**:
   - Create and execute the following SQL queries:
     - Retrieve all accounts belonging to a specific customer.
     - Calculate the total balance of all accounts for a specific customer.
     - Show all transactions for a specific account.
     - Find the top three accounts with the highest balance.
     - Calculate the total amount of deposits and withdrawals for a specific account.
     - Find all transactions made in the last 30 days.

6. **Indexing (VG)**:
   - Add **appropriate indexing** on columns like `AccountID` and `CustomerID`, and measure query performance with and without indexing using **Execution Plans**.

#### Notes:
- The project focuses on applying database design and SQL programming skills.
- Emphasis is placed on performance optimization through indexing and ensuring the database is organized correctly.
