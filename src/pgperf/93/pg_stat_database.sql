SELECT 0::int as sid,
       datid,
       datname,
       numbackends,
       xact_commit,
       xact_rollback,
       blks_read,
       blks_hit,
       tup_returned,
       tup_fetched,
       tup_inserted,
       tup_updated,
       tup_deleted,
       conflicts,
       temp_files,
       temp_bytes,
       deadlocks,
       blk_read_time,
       blk_write_time,
       stats_reset
  FROM pg_stat_database
 WHERE datname = current_database();
