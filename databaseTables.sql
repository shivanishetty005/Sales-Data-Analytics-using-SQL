/*
=========================================================
DATABASE STRUCTURE EXPLORATION
=========================================================
Objective:
- View all tables available in the current database.
- Examine the schema of a specific table.
- Understand the available columns and their properties.

System Views:
- INFORMATION_SCHEMA.TABLES
- INFORMATION_SCHEMA.COLUMNS
=========================================================
*/

-- Display all tables present in the database
SELECT
    TABLE_CATALOG,
    TABLE_SCHEMA,
    TABLE_NAME,
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;


-- Display column details for the 'dim_customers' table
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
