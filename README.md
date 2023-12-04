
# SQL Challenge: Employee Database Analysis

## Overview

This project involves a retrospective analysis of employee data for Pewlett Hackard (a fictional company) from the 1980s and 1990s. The task is divided into three main parts: Data Modeling, Data Engineering, and Data Analysis. This project's end goal is to set up a database and perform analyses to answer specific questions about the employees.

## Data Modeling

An ERD of the employee database was created after inspecting the provided CSV files. The diagram is included in the EmployeeSQL directory and outlines the relationships between the tables.

## Data Engineering

The SQL table schemas for each CSV file are designed with appropriate data types, primary keys, foreign keys, and other constraints. Tables are created in a specific order to handle foreign keys properly. The schema is in the EmployeeSQL directory.

## Data Analysis

Several SQL queries were written to analyze the employee data:

- Retrieve employee details including salary.
- List employees hired in a specific year.
- Show managers for each department.
- Display department details for each employee.
- Identify employees with the first name 'Hercules' and last names starting with 'B'.
- List all employees in the Sales department.
- Count frequency of last names among employees.

The queries are stored in the EmployeeSQL directory.

## Instructions

To replicate the analysis:

1. Clone this repository to your local machine.
2. Navigate to the EmployeeSQL directory.
3. Use a database tool such as PostgreSQL to run the SQL scripts in the EmployeeSQL directory to set up the database.
4. To import the data into the database, you should import the data in the tables with the following order:
    a. Department
    b. Titles
    c. Employees
    d. Salaries
    e. Dept_emp
    f. Dept_manager
5. Execute the queries in the EmployeeSQL directory to perform the analysis.

