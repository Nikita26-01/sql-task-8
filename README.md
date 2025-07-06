# Task 8 - Stored Procedures and Functions

## Objective
Learn how to modularize SQL logic using stored procedures and functions.

## Tools Used
- MySQL Workbench
- (Optional) DB Browser for SQLite 

## Files
- `task8.sql`: Contains table creation, data insertion, one stored procedure, and one user-defined function.

---

## Created SQL Blocks

### Stored Procedure: `IncreaseSalary`
**Purpose:** Increases salary of a given employee by a given percentage.

**Syntax:**
```sql
CALL IncreaseSalary(2, 10);
