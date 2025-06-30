DB_NAME="postgres"
DB_USER="postgres"
export PGPASSWORD="postgres" 
start_time=$(date +%s)

psql -U $DB_USER -d $DB_NAME -c "DROP TABLE IF EXISTS submissions CASCADE;"
psql -U $DB_USER -d $DB_NAME -c "DROP TABLE IF EXISTS comments CASCADE;"
psql -U $DB_USER -d $DB_NAME -c "DROP TABLE IF EXISTS authors CASCADE;"
psql -U $DB_USER -d $DB_NAME -c "DROP TABLE IF EXISTS subreddits CASCADE;"
psql -U $DB_USER -d $DB_NAME -f create_tables.sql

psql -U $DB_USER -d $DB_NAME -c "\copy submissions FROM './submissions.csv' DELIMITER ',' CSV HEADER;"
psql -U $DB_USER -d $DB_NAME -c "\copy comments FROM './comments.csv' DELIMITER ',' CSV HEADER;"
psql -U $DB_USER -d $DB_NAME -c "\copy authors FROM './authors.csv' DELIMITER ',' CSV HEADER;"
psql -U $DB_USER -d $DB_NAME -c "\copy subreddits FROM './subreddits.csv' DELIMITER ',' CSV HEADER;"

psql -U $DB_USER -d $DB_NAME -f create_relations.sql
psql -U $DB_USER -d $DB_NAME -f queries.sql

end_time=$(date +%s)

time_taken=$((end_time - start_time))
echo "Data loading and processing took $time_taken seconds."
unset PGPASSWORD
