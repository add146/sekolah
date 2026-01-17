-- Add missing columns to konfigurasi table
ALTER TABLE konfigurasi ADD COLUMN visi TEXT;
ALTER TABLE konfigurasi ADD COLUMN misi TEXT;
ALTER TABLE konfigurasi ADD COLUMN rencana TEXT;
ALTER TABLE konfigurasi ADD COLUMN warna_primary TEXT DEFAULT '#2563eb';
ALTER TABLE konfigurasi ADD COLUMN warna_secondary TEXT DEFAULT '#16a34a';
ALTER TABLE konfigurasi ADD COLUMN poster1 TEXT;
ALTER TABLE konfigurasi ADD COLUMN poster2 TEXT;
