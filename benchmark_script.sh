-- Benchmark Script for pg_stat_monitor
-- This script will execute a series of queries to benchmark the performance of pg_stat_monitor extension.

-- Step 1: Enable pg_stat_monitor extension (if not already enabled)
CREATE EXTENSION IF NOT EXISTS pg_stat_monitor;

-- Step 2: Start benchmarking

-- Set the number of iterations
\set iterations 100

-- Loop through the iterations
\set i 0
WHILE :i < :iterations
LOOP
    -- Perform a benchmark query
    SELECT * FROM your_table WHERE your_condition;

    -- Increment the iteration counter
    \set i :i + 1;
END LOOP;

-- Step 3: Analyze and report results

-- Get the total execution time
SELECT SUM(total_time) AS total_execution_time
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the average execution time per query
SELECT AVG(total_time) AS average_execution_time
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the maximum execution time
SELECT MAX(total_time) AS maximum_execution_time
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the minimum execution time
SELECT MIN(total_time) AS minimum_execution_time
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the total number of queries executed
SELECT COUNT(*) AS total_queries
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the average CPU usage
SELECT AVG(cpu_usage) AS average_cpu_usage
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the average memory usage
SELECT AVG(memory_usage) AS average_memory_usage
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

-- Get the average disk I/O
SELECT AVG(disk_io) AS average_disk_io
FROM pg_stat_monitor
WHERE query LIKE 'SELECT * FROM your_table WHERE your_condition;';

