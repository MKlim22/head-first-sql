# Head First SQL – Exercises

This repository contains my SQL practice based on the book  
**Head First SQL**.

The goal of this repository is to document my learning process and keep
SQL exercises structured, readable, and easy to revisit over time.

This is a **learning repository**, not a portfolio project.


## Structure

Each module is stored in a separate folder and focuses on a specific group
of SQL concepts.  
The exercises are written mainly as executable `.sql` files with comments
explaining each step.

### Modules

- **01-table-design**  
  Basic table creation, data types, and initial table structure.

- **02-basic-select-and-filtering**  
  SELECT queries with WHERE clauses, comparison operators, logical operators,
  pattern matching, and NULL handling (easy_drinks exercise).

- **03-data-modification**  
  Updating and deleting data using UPDATE and DELETE statements,
  with emphasis on safe usage and WHERE conditions.

- **04-table-design-and-keys**  
  Smart table design, atomic data, and primary keys.
  Improving existing tables without recreating them.

- **05-alter-and-string-functions**  
  Modifying table structure using ALTER TABLE (ADD, CHANGE, MODIFY, DROP)
  and working with string functions.
  Includes examples of updating data using existing columns.

- **06-advanced-select**  
  DISTINCT, ORDER BY, LIMIT, GROUP BY, aggregate functions, and more advanced filtering logic.

- **07-multi-table-database-design**  
  Normalization (1NF, 2NF, 3NF), relationships, and designing structured relational databases.

- **08-joins-and-multi-table-perations**  
  INNER JOIN, LEFT/RIGHT JOIN, NATURAL JOIN, CROSS JOIN, non-equi joins, and alias usage.

- **09-subqueries**  
  Single-value subqueries, correlated and non-correlated subqueries, EXISTS, NOT EXISTS, and execution logic.

- **10-outer-joins-unions**  
  LEFT/RIGHT OUTER JOIN, SELF JOIN, UNION / UNION ALL, INTERSECT, EXCEPT, and CREATE TABLE AS.

- **11-views-and-transactions**  
  Creating views, updatable views, transaction control (START TRANSACTION, COMMIT, ROLLBACK), storage engines, and ACID principles.

- **12-security**  
  User management, CREATE USER, GRANT, REVOKE, roles, WITH GRANT OPTION, WITH ADMIN OPTION, CASCADE vs RESTRICT, and the principle of least privilege.


## Technologies

- SQL (MySQL syntax)
- Git & GitHub


## Notes

Most explanations are included directly in the `.sql` files as comments.
This approach helps me understand not only *what* a command does,
but also *why* it is used.