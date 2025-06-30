# Reddit Database Analysis

Database creation and optimization project using Reddit Pushshift dataset with PostgreSQL.

## Dataset
- **Submissions**: 1.26M entries
- **Comments**: 10.56M entries  
- **Authors**: 6.16M entries
- **Subreddits**: 914K entries

## Features
- Optimized data loading with pg_bulkload (~220 seconds for 18M+ records)
- Complex SQL queries for social media analytics
- Proper database relationships and constraints

## Files
- `assignment1.sh` - Main execution script
- `create_tables.sql` - Table definitions
- `create_relations.sql` - Constraints and foreign keys
- `queries.sql` - 5 analytical queries

## Usage
```bash
chmod +x assignment1.sh
./assignment1.sh
```

## Requirements
- PostgreSQL 14
- pg_bulkload extension

**Tech Stack**: PostgreSQL, pg_bulkload, Shell scripting