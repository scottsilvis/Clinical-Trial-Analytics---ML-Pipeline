-- SQL Script to Create Tables for Clinical Trial Database
-- =========================
-- Outcomes (1 row per patient, labels only)
-- =========================
CREATE TABLE outcomes (
    patient_id TEXT NOT NULL PRIMARY KEY,
    last_visit_num INTEGER,
    last_days_from_enroll INTEGER,
    pct_improvement_severity REAL,
    serious_ae_flag INTEGER,
    responder_30pct INTEGER,
    qol_score REAL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

