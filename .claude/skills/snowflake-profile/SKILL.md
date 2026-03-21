---
name: snowflake-profile
description: Profile a Snowflake query by ID. Shows operator-level breakdown of execution time, rows processed, and bottlenecks.
argument-hint: [query-id]
disable-model-invocation: true
---

Profile the Snowflake query with ID `$ARGUMENTS`.

1. Connect to Snowflake using the project's config:
```python
from source.modules.get_config import get_config
from core import Database
config = get_config("voi-ml-dev")
db = Database(**config.sources.snowflake)
```

2. Get query metadata from `information_schema.query_history_by_warehouse`:
   - `execution_time`, `total_elapsed_time`, `compilation_time`
   - `bytes_scanned`, `rows_produced`
   - `queued_overload_time`, `queued_provisioning_time`
   - `execution_status`

3. Get operator-level profile from `get_query_operator_stats(query_id)`:
   - Parse `execution_time_breakdown` JSON for `overall_percentage`, `processing`, `local_disk_io`, `synchronization`
   - Parse `operator_statistics` JSON for `input_rows`, `output_rows`, `io` (bytes_scanned, scan_progress, percentage_scanned_from_cache)
   - Sort operators by `overall_percentage` descending

4. Present results as:
   - **Summary**: total time, bytes scanned, status
   - **Top operators by time**: table with operator type, % time, rows in/out, and any IO or spill stats
   - **Data flow**: trace the row counts through the pipeline to show where filtering happens

5. If the query is still RUNNING, `get_query_operator_stats` returns empty. In that case, show whatever metadata is available from `query_history_by_warehouse` and note that the operator profile will be available after completion.

Use `query_history_by_warehouse` with `warehouse_name => 'DOMAIN_FLEET_LOGIC_WH'` to find queries. If the query ID isn't found there, try `information_schema.query_history()` without warehouse filter.
