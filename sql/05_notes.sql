-- SQL Script to Create Tables for Clinical Trial Database

PRAGMA foreign_keys = ON;

-- =========================
-- Notes (1 row per patient per visit)
-- =========================
CREATE TABLE notes (
    patient_id TEXT NOT NULL,
    visit_num INTEGER,
    note_tone_label TEXT,
    clinical_note TEXT,
    PRIMARY KEY (patient_id, visit_num),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
