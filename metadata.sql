# Collect metadata about the information schema

# all tables 
select table_name from information_schema.tables;

# all tables and columns (not for every dialect)
select table_name, column_name from information_schema.tables;

# table 
SELECT column_name, data_type, is_nullable, extra_info
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='table' AND TABLE_SCHEMA='schema';

# example
SELECT column_name, data_type, is_nullable, extra_info
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='mrr_lavu_order_contents' AND TABLE_SCHEMA='data_lake';