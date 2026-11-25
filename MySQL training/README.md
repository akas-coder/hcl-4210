# MySQL Training Assessment

SQL solutions for the student practice assessment covering DDL, DML, DQL, TCL, DCL, data types and constraints.

## How to use
1. Open MySQL Workbench and connect to your MySQL server.
2. Run the files in the numbered order.
3. Execute each task section and verify the result before moving on.
4. The scripts use the database `school_db`.

## Folder structure
- `01_DDL` — database/table creation and schema changes
- `02_DML` — insert, update and delete operations
- `03_DQL` — filtering, sorting, aggregates, joins and subqueries
- `04_TCL` — transactions, rollback, commit and savepoints
- `05_DCL` — users, privileges and roles
- `06_DataTypes_Constraints` — data type choices and constraint examples

## Notes
- The DCL scripts require an account with permission to create users, roles and grant privileges.
- Replace the example passwords in the DCL script with your own secure passwords. Do not commit real passwords to a public repository.
- The duplicate-email and constraint-violation statements are intentionally invalid; run them individually to observe the expected errors.
- The student deletion test demonstrates the foreign-key restriction. If marks exist for student 6, MySQL prevents deleting that student unless dependent marks are deleted first.
- `CHECK` constraints are enforced in MySQL 8.0.16 and later.
