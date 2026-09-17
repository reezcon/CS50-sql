# CS50 SQL

Solutions and practice work for [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

**About**

This repo tracks my progress through CS50-SQL. I am reinforcing my foundational SQL skills a step toward a backend developer career. 

| Week | Topic | Status |
|------|-------|--------|
| 0 | Quering | ✅ Done |
| 1 | Relating | 🔄 In progress |
| 2 | Designing  | ⬜ Not started |
| 3 | Writing | ⬜ Not started |
| 4 | Viewing | ⬜ Not started |
| 5 | Optimising | ⬜ Not started |
| 6 | Scaling | ⬜ Not started |

## Structure

```
cs50-sql/
├── week1/
├── week2/
├── ...
└── README.md
```

Example: The `cyberchase` directory contains SQL queries for the Week 0 Cyberchase exercise. The queries operate on an `episodes` table.

## Prerequisites

- SQLite 3
- The Relevant database supplied with the CS50 SQL exercise per week
- A terminal or SQLite-compatible editor

## Setup

### 1. Install SQLite

On Windows, install SQLite from the [official SQLite download page](https://www.sqlite.org/download.html), then make sure `sqlite3` is available on your `PATH`.

Verify the installation:

```powershell
sqlite3 --version
```

### 2. Add the exercise database (example)

Download the Cyberchase database from the CS50 SQL Week 0 exercise materials and place it in `week0/cyberchase/`.

The commands below assume the database is named `cyberchase.db`. If the downloaded file has a different name, replace `cyberchase.db` in the commands with that name.

Check that the database contains the expected table:

```powershell
cd week0/cyberchase
sqlite3 cyberchase.db ".tables"
```

You should see `episodes` in the output.

## Running the Queries

Run an individual solution from the `week0/cyberchase` directory:

Open an interactive SQLite session:

```powershell
sqlite3 cyberchase.db
```

Then use SQLite commands such as:

```sql
SELECT COUNT(*) FROM episodes;
.quit
```

or to run specific files

```sql
.read 1.sql 
.quit
```

## Notes

- The numbered SQL files are independent queries and can be run in any order.
- Keep the downloaded database file local unless it is explicitly permitted by the course materials to redistribute it.
- Query output may vary if the database contents differ from the version used by the exercise.