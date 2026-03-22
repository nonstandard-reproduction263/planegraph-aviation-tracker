-- 008_seed_turnaround_config.sql
-- Seed ground_turnaround_threshold_sec into pipeline_config.
-- Default matches the value configured in services/ingest/config.py.

insert into pipeline_config (key, value) values
    ('ground_turnaround_threshold_sec', '120')
on conflict (key) do nothing;
