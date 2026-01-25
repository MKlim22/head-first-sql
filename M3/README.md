# Module 3 – UPDATE and DELETE

This module focuses on modifying and removing existing data in SQL tables.
It introduces the `UPDATE` and `DELETE` statements and shows how to use them
safely and effectively with `WHERE` conditions.

## What is covered

- updating existing records using `UPDATE`
- changing one or multiple columns at once
- using basic math operations in `UPDATE` statements
- updating multiple rows with logical operators (`AND`, `OR`)
- deleting rows using `DELETE`
- importance of using `WHERE` to avoid unwanted changes
- previewing data with `SELECT` before `UPDATE` or `DELETE`

## Files

- `update_delete.sql` – example SQL statements demonstrating how to update and delete records, including safe practices such as checking affected rows before making changes.
- `alter_primary_key.sql` - examples of modifying table structure using `ALTER TABLE`,
including adding a `PRIMARY KEY` and using `AUTO_INCREMENT` on an existing table.

## Notes

This module emphasizes safe data modification.
Before running `UPDATE` or `DELETE`, it is recommended to run a `SELECT`
statement with the same `WHERE` condition to verify which rows will be affected.

## ALTER TABLE and PRIMARY KEY

In this part of the module, the focus shifts from modifying data (`UPDATE`, `DELETE`) to modifying table structure using `ALTER TABLE`.

Topics covered:
- adding a new column to an existing table
- adding a `PRIMARY KEY` to an existing table
- using `AUTO_INCRMENT` for generating unique identifiers
- understanding why a primary key must be `NOT NULL` and unique

The examples demonstrate how to improve an existing table withouth dropping and recreating it.