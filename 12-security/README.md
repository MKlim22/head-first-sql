# 12 – Security, Users, Privileges & Roles

This module focuses on database security, user management, and access control.

It introduces core concepts required to manage database users safely and to enforce controlled data access using privileges and roles.

The goal of this chapter is to understand how to protect data, delegate permissions properly, and follow the principle of least privilege.

---

## Topics Covered

- CREATE USER
- GRANT
- REVOKE
- WITH GRANT OPTION
- WITH ADMIN OPTION
- Roles
- CASCADE vs RESTRICT
- Principle of Least Privilege

---

## Files

### `01_create_user.sql`

Demonstrates:
- Creating new users
- Setting passwords
- Managing authentication basics

Focus: secure user creation.

---

### `02_grant_basic.sql`

Demonstrates:
- Granting SELECT, INSERT, UPDATE, DELETE
- Column-level privileges
- Database-wide privileges
- Granting to multiple users

Focus: controlled privilege assignment.

---

### `03_revoke.sql`

Demonstrates:
- Removing privileges
- REVOKE GRANT OPTION
- CASCADE vs RESTRICT behavior

Focus: privilege revocation and dependency handling.

---

### `04_roles.sql`

Demonstrates:
- Creating roles
- Assigning privileges to roles
- Assigning roles to users
- WITH ADMIN OPTION
- Role revocation

Focus: scalable permission management.

---

### `05_be_greg_exercise.sql`

Scenario-based exercise simulating a database administrator task.

Focus: applying user creation, privilege delegation, and role usage in a realistic case.

---

### `06_be_greg_solution.sql`

Complete solution to the security scenario exercise.

Focus: practical implementation of least privilege and delegation logic.

---

## Key Concepts

- Each user should have an individual account.
- Privileges can be granted and revoked at table, database, and column levels.
- WITH GRANT OPTION allows a user to pass privileges to others.
- WITH ADMIN OPTION allows a user to delegate roles.
- CASCADE removes dependent privileges.
- RESTRICT prevents removal if dependencies exist.
- Roles simplify large-scale privilege management.
- Always follow the principle of least privilege.

This chapter strengthens understanding of database-level security, access control, and administrative responsibility.