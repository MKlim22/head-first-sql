# 03 — Data Modification (UPDATE & DELETE)

This module focuses on modifying and removing existing data in SQL tables.
It introduces the `UPDATE` and `DELETE` statements and shows how to use them
safely and effectively with `WHERE` conditions.

## What’s covered
- updating existing records using `UPDATE`
- changing one or multiple columns at once
- using basic expressions in `UPDATE` statements
- updating multiple rows with logical operators (`AND`, `OR`)
- deleting rows using `DELETE`
- importance of using `WHERE` to avoid unwanted changes
- previewing affected rows with `SELECT` before running `UPDATE` or `DELETE`

## Files
- `update_delete.sql` — example SQL statements demonstrating how to safely update and delete records, including checking which rows will be affected before making changes

## Notes
This section emphasizes safe data modification. Before running `UPDATE` or `DELETE`, it is recommended to run a `SELECT` statement with the same `WHERE` condition to verify which rows will be affected.