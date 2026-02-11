-- SQL Script to Create Tables for Clinical Trial Database

PRAGMA foreign_keys = ON;

-- =========================
-- Patients (1 row per patient)
-- =========================
CREATE TABLE patients (
    patient_id TEXT NOT NULL PRIMARY KEY,
    site_id TEXT,
    enroll_date TEXT,
    sex TEXT,
    age INTEGER,
    bmi REAL,
    smoker INTEGER,
    comorbidity_count INTEGER,
    baseline_severity REAL,
    crp_mgL REAL,
    alt_U_L REAL,
    egfr_ml_min REAL,
    self_reported_adherence REAL,
    treatment_arm TEXT,
    FOREIGN KEY (site_id) REFERENCES sites(site_id)
);

