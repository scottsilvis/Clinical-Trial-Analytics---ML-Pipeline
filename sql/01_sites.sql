-- SQL Script to Create Tables for Clinical Trial Database
-- =========================
-- Sites (1 row per site)
-- =========================
CREATE TABLE sites (
    site_id TEXT NOT NULL PRIMARY KEY,
    region TEXT,
    site_size TEXT,
    urbanicity TEXT,
    site_quality_index REAL
);
