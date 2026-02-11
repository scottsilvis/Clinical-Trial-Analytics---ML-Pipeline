-- SQL Script to Create Tables for Clinical Trial Database

PRAGMA foreign_keys = ON;

-- =========================
-- Visits (1 row per patient per visit)
-- =========================
CREATE TABLE visits (
    patient_id TEXT NOT NULL,
    site_id TEXT,
    treatment_arm TEXT,
    visit_num INTEGER NOT NULL,
    visit_date TEXT,
    days_from_enroll INTEGER,
    med_adherence REAL,
    adverse_event_flag INTEGER,
    severity_score REAL,
    crp_mgL REAL,
    alt_U_L REAL,
    egfr_ml_min REAL,
    dropout_flag INTEGER,
    PRIMARY KEY (patient_id, visit_num),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (site_id) REFERENCES sites(site_id)
);
