<!--
---
title: "Materializer Service"
description: "Notification-driven flight trajectory and scalar metric materialization"
author: "VintageDon (https://github.com/vintagedon)"
date: "2026-03-22"
version: "1.1"
status: "Complete"
tags:
  - type: directory-readme
  - domain: materialization
  - tech: [python, postgres, postgis]
---
-->

# Materializer Service

Worker that turns completed flight sessions into query-ready derived products. It listens for new position activity, discovers newly closed sessions, builds trajectory geometries, computes scalar metrics, and records each materialization run.

**Status**: Complete (WU-02)

---

## 1. Contents

```
materializer/
├── README.md               # This file
├── main.py                 # Listener orchestration and watermark tracking
├── trajectory_builder.py   # Builds trajectory_geom for closed sessions
├── scalar_computer.py      # Computes total_distance_nm and materialization logs
└── __init__.py
```

---

## 2. Runtime Responsibilities

- Establish a watermark for the latest already materialized closed session
- Catch up any closed sessions missed while the service was offline
- Listen for `new_positions` notifications from PostgreSQL
- Detect closed sessions that still lack `trajectory_geom`
- Build `trajectory_geom` using ordered report points
- Compute scalar metrics such as `total_distance_nm`
- Write `materialization_log` entries with phase summaries for observability

The current service is notification-driven rather than cron-scheduled. Partition creation and retention are handled by the ingest-side `PartitionManager`, not by this service.

---

## 3. Startup

The service reads PostgreSQL connection settings from the same environment variables used by the API and ingest services.

Startup command:

```bash
python -m services.materializer.main
```

---

## 4. Related

| Document | Relationship |
|----------|--------------|
| [Services](../README.md) | Parent directory |
| [Data Dictionary](../../docs/reference/data-dictionary.md) | Tables and columns updated here |
| [Configuration Keys](../../docs/reference/configuration-keys.md) | Shared runtime config reference |
