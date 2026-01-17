-- Simple seed for Media Hikmah
-- Just update/insert basic data

-- Update konfigurasi if exists
UPDATE konfigurasi SET 
  nama_website = 'Media Hikmah',
  tagline = 'Lembaga Pendidikan Islam Kejuruan - Madrasah Tsanawiyah Multimedia',
  whatsapp = '628563466756',
  telepon = '08563466756',
  warna_primary = '#16a34a',
  warna_secondary = '#2563eb',
  visi = 'Mencetak generasi yang beraqidah lurus, berakhlaq mulia, bertaqwa kepada Allah, dan memiliki keahlian yang bermanfaat bagi dirinya, kaum muslimin, dan juga Bangsa dan Negara.'
WHERE id_konfigurasi = 1;

-- Insert kategori if not exists
INSERT OR IGNORE INTO kategori (id_kategori, id_user, slug_kategori, nama_kategori, urutan) VALUES
(1, 1, 'pengumuman', 'Pengumuman', 1),
(2, 1, 'berita', 'Berita', 2),
(3, 1, 'kegiatan', 'Kegiatan', 3);

-- Insert agama
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES
(1, 1, 'Islam', 1);

-- Insert gelombang PPDB
INSERT OR IGNORE INTO gelombang (id_gelombang, id_user, tahun_ajaran, tahap, tahun, slug, judul, isi, tanggal_buka, tanggal_tutup, status_gelombang) VALUES
(1, 1, '2026/2027', 1, 2026, 'ppdb-2026', 'PPDB Gelombang 1 Tahun 2026/2027', 'Penerimaan Peserta Didik Baru', '2026-01-01', '2026-06-30', 'Buka');
