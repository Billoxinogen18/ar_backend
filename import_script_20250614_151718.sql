BEGIN;
\echo '--- Importing schema ---'
\i neon_schema_20250614_151718.sql
SET session_replication_role = 'replica';
\echo '--- Importing data ---'
\i neon_export_20250614_151718.sql
SET session_replication_role = 'origin';
COMMIT;
