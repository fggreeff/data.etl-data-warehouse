--View - Profiling_count_records
create or replace view data_profiling_count_records as
SELECT schemaname as schema, relname as table, n_tup_ins as count FROM pg_stat_all_tables
WHERE relname like '%STG%' or relname like '%DWH%' or relname like '%DM%' 
;
--View - Profiling_information_schema
create or replace view data_profiling_information_schema as
SELECT * FROM information_schema.columns
WHERE table_name like '%STG%' or table_name like '%DWH%' or table_name like '%DM%' 
;