<!--
---
title: "Ingest Service"
description: "Asyncio SBS consumer, session manager, batch writer, and partition maintenance"
author: "VintageDon (https://github.com/vintagedon)"
date: "2026-03-22"
version: "1.1"
status: "Complete"
tags:
  - type: directory-readme
  - domain: ingest
  - tech: [python, postgres, asyncio]
---
-->

# Ingest Service

Asyncio daemon that consumes decoded ADS-B messages from ultrafeeder's SBS port, segments aircraft tracks into flight sessions, classifies flight phases, persists position reports, and maintains daily partitions needed by the write path.

**Status**: Complete (WU-02)

---

## 1. Contents

```
ingest/
├── README.md               # This file
├── batch_writer.py         # Buffered inserts into position_reports
├── config.py               # Mutable runtime config + NOTIFY handling
├── main.py                 # Service lifecycle and task orchestration
├── partition_manager.py    # Daily partition creation and retention cleanup
├── phase_classifier.py     # Heuristic flight-phase classification
├── sbs_reader.py           # SBS/BaseStation TCP reader and parser
├── session_manager.py      # Per-aircraft session state and rehydration
└── __init__.py
```

---

## 2. Runtime Responsibilities

- Connect to the SBS feed exposed by ultrafeeder on port `30003`
- Merge relevant SBS message fields into normalized position updates
- Maintain one active flight session per ICAO hex in memory
- Ensure `flight_sessions` rows exist before inserting dependent position reports
- Batch-write reports into PostgreSQL on a configurable flush interval
- Rehydrate open sessions on startup after daemon restarts
- Listen for `config_changed` notifications and apply runtime threshold updates
- Create near-term partitions and reap expired ones through `PartitionManager`

---

## 3. Configuration

The service reads database connectivity and SBS endpoint settings from environment variables, then overlays runtime thresholds from `pipeline_config`.

Important runtime keys:

- `session_gap_threshold_sec`
- `ground_turnaround_threshold_sec`
- `batch_interval_sec`
- `phase_classification`

Startup command:

```bash
python -m services.ingest.main
```

---

## 4. Related

| Document | Relationship |
|----------|--------------|
| [Services](../README.md) | Parent directory |
| [Data Dictionary](../../docs/reference/data-dictionary.md) | Schema written to |
| [Configuration Keys](../../docs/reference/configuration-keys.md) | Runtime parameters consumed |
| [Docker Services](../../docs/reference/docker-services.md) | ultrafeeder SBS source |
