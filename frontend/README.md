<!--
---
title: "Frontend"
description: "React SPA for live map visualization, dashboard views, and analytics"
author: "VintageDon (https://github.com/vintagedon)"
date: "2026-03-22"
version: "1.0"
status: "Complete"
tags:
  - type: directory-readme
  - domain: frontend
  - tech: [react, typescript, vite, maplibre, deckgl, recharts]
---
-->

# Frontend

React 19 single-page application for the Planegraph operator UI. It serves the live aircraft map, dashboard metrics, configuration UI, historical flight views, and WU-06 analytics pages.

**Status**: Complete (WU-04, WU-05, WU-06)

---

## 1. Contents

```
frontend/
├── src/
│   ├── components/          # Map and shared UI components
│   ├── hooks/               # WebSocket and stateful UI hooks
│   ├── pages/               # Route-level pages
│   ├── store/               # Zustand aircraft store
│   ├── types/               # API and domain types
│   └── utils/               # Fetch, formatting, PMTiles helpers
├── e2e/                     # Playwright end-to-end tests
├── atlas/                   # Generated aircraft sprite assets in build output
├── package.json             # Scripts and dependencies
├── vite.config.ts           # Vite dev/build configuration
└── README.md                # This file
```

---

## 2. Major Features

- Live map view backed by MapLibre GL and Deck.gl aircraft layers
- WebSocket-driven in-memory aircraft updates via `/api/v1/live`
- Historical flight list and per-flight replay pages
- Approach analysis, heatmap, and airport analytics pages from WU-06
- Dashboard charts and operational status panels
- Settings UI for `pipeline_config` inspection and edits

---

## 3. Development

Install dependencies and run the dev server:

```bash
cd frontend
npm install
npm run dev
```

Useful scripts:

- `npm run build` — type-check and produce the production bundle
- `npm run lint` — run ESLint across the frontend workspace
- `npm run test:e2e` — execute Playwright end-to-end tests
- `npm run preview` — serve the built bundle locally

The frontend assumes same-origin API access by default. Set `VITE_WS_URL` only when the WebSocket endpoint is hosted separately from the page origin.

---

## 4. Routes

| Route | Purpose |
|-------|---------|
| `/` | Live aircraft map |
| `/dashboard` | Operational metrics and charts |
| `/settings` | Runtime configuration controls |
| `/flights` | Historical session list |
| `/flights/:sessionId` | Flight detail and replay |
| `/flights/:sessionId/approach` | Approach analysis |
| `/analytics/heatmap` | Position-density heatmap |
| `/analytics/airports` | Airport analytics |

---

## 5. Related

| Document | Relationship |
|----------|--------------|
| [Repository Root](../README.md) | Parent directory |
| [API Service](../services/api/README.md) | Backend consumed by this UI |
| [Documentation](../docs/README.md) | Deployment and operating context |
