-- =====================================================
-- Complete Seed Data for Sekolah Media Hikmah
-- Run this in Cloudflare D1 Console or via wrangler
-- =====================================================

-- Admin User (password: admin123 - SHA1 hash)
INSERT OR REPLACE INTO users (id_user, nama, email, username, password, level, status_user, tanggal_post, tanggal_update)
VALUES (1, 'Administrator', 'admin@mediahikmah.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Admin', 'Aktif', datetime('now'), datetime('now'));

-- Konfigurasi Website
INSERT OR REPLACE INTO konfigurasi (
    id_konfigurasi, nama_website, tagline, deskripsi, keywords, email, telepon, whatsapp, alamat,
    facebook, instagram, youtube, logo, icon, favicon, about_us
) VALUES (
    1,
    'Media Hikmah',
    'Lembaga Pendidikan Islam Kejuruan - Madrasah Tsanawiyah Multimedia',
    'Dakwah sunnah di Nusantara alhamdulillah berkembang dengan pesat. Kemajuan teknologi membuat dakwah manhaj salaf ini dapat menjangkau hampir seluruh plosok nusantara.',
    'sekolah, madrasah, multimedia, islamic school, pendidikan islam',
    'info@mediahikmah.com',
    '08563466756',
    '628563466756',
    'Indonesia',
    'https://facebook.com/mediahikmah',
    'https://instagram.com/mediahikmah',
    'https://youtube.com/@mediahikmah',
    NULL,
    NULL,
    NULL,
    'Sebagian pengurus Yayasan Media Hikmah Nusantara ini merupakan tenaga ahli dan praktisi di bidang multimedia yang sangat antusias dengan pembangunan Lembaga Pendidikan ini.'
);

-- =====================================================
-- KATEGORI BERITA
-- =====================================================
INSERT OR IGNORE INTO kategori (id_kategori, id_user, slug_kategori, nama_kategori, urutan) VALUES (1, 1, 'pengumuman', 'Pengumuman', 1);
INSERT OR IGNORE INTO kategori (id_kategori, id_user, slug_kategori, nama_kategori, urutan) VALUES (2, 1, 'berita', 'Berita', 2);
INSERT OR IGNORE INTO kategori (id_kategori, id_user, slug_kategori, nama_kategori, urutan) VALUES (3, 1, 'kegiatan', 'Kegiatan', 3);
INSERT OR IGNORE INTO kategori (id_kategori, id_user, slug_kategori, nama_kategori, urutan) VALUES (4, 1, 'artikel', 'Artikel', 4);

-- =====================================================
-- KATEGORI GALERI
-- =====================================================
INSERT OR IGNORE INTO kategori_galeri (id_kategori_galeri, id_user, slug_kategori_galeri, nama_kategori_galeri, urutan, status_kategori_galeri) VALUES (1, 1, 'kegiatan', 'Kegiatan', 1, 'Publish');
INSERT OR IGNORE INTO kategori_galeri (id_kategori_galeri, id_user, slug_kategori_galeri, nama_kategori_galeri, urutan, status_kategori_galeri) VALUES (2, 1, 'fasilitas', 'Fasilitas', 2, 'Publish');
INSERT OR IGNORE INTO kategori_galeri (id_kategori_galeri, id_user, slug_kategori_galeri, nama_kategori_galeri, urutan, status_kategori_galeri) VALUES (3, 1, 'prestasi', 'Prestasi', 3, 'Publish');
INSERT OR IGNORE INTO kategori_galeri (id_kategori_galeri, id_user, slug_kategori_galeri, nama_kategori_galeri, urutan, status_kategori_galeri) VALUES (4, 1, 'lingkungan', 'Lingkungan Sekolah', 4, 'Publish');

-- =====================================================
-- KATEGORI STAFF
-- =====================================================
INSERT OR IGNORE INTO kategori_staff (id_kategori_staff, id_user, slug_kategori_staff, nama_kategori_staff, urutan, status_kategori_staff) VALUES (1, 1, 'pimpinan', 'Pimpinan', 1, 'Publish');
INSERT OR IGNORE INTO kategori_staff (id_kategori_staff, id_user, slug_kategori_staff, nama_kategori_staff, urutan, status_kategori_staff) VALUES (2, 1, 'guru', 'Guru', 2, 'Publish');
INSERT OR IGNORE INTO kategori_staff (id_kategori_staff, id_user, slug_kategori_staff, nama_kategori_staff, urutan, status_kategori_staff) VALUES (3, 1, 'tenaga-kependidikan', 'Tenaga Kependidikan', 3, 'Publish');

-- =====================================================
-- KATEGORI FASILITAS
-- =====================================================
INSERT OR IGNORE INTO kategori_fasilitas (id_kategori_fasilitas, id_user, slug_kategori_fasilitas, nama_kategori_fasilitas, urutan, status_kategori_fasilitas) VALUES (1, 1, 'ruangan', 'Ruangan', 1, 'Publish');
INSERT OR IGNORE INTO kategori_fasilitas (id_kategori_fasilitas, id_user, slug_kategori_fasilitas, nama_kategori_fasilitas, urutan, status_kategori_fasilitas) VALUES (2, 1, 'laboratorium', 'Laboratorium', 2, 'Publish');
INSERT OR IGNORE INTO kategori_fasilitas (id_kategori_fasilitas, id_user, slug_kategori_fasilitas, nama_kategori_fasilitas, urutan, status_kategori_fasilitas) VALUES (3, 1, 'olahraga', 'Sarana Olahraga', 3, 'Publish');

-- =====================================================
-- KATEGORI PRESTASI
-- =====================================================
INSERT OR IGNORE INTO kategori_prestasi (id_kategori_prestasi, id_user, slug_kategori_prestasi, nama_kategori_prestasi, urutan, status_kategori_prestasi) VALUES (1, 1, 'akademik', 'Akademik', 1, 'Publish');
INSERT OR IGNORE INTO kategori_prestasi (id_kategori_prestasi, id_user, slug_kategori_prestasi, nama_kategori_prestasi, urutan, status_kategori_prestasi) VALUES (2, 1, 'non-akademik', 'Non Akademik', 2, 'Publish');
INSERT OR IGNORE INTO kategori_prestasi (id_kategori_prestasi, id_user, slug_kategori_prestasi, nama_kategori_prestasi, urutan, status_kategori_prestasi) VALUES (3, 1, 'olahraga', 'Olahraga', 3, 'Publish');

-- =====================================================
-- KATEGORI EKSTRAKURIKULER
-- =====================================================
INSERT OR IGNORE INTO kategori_ekstrakurikuler (id_kategori_ekstrakurikuler, id_user, slug_kategori_ekstrakurikuler, nama_kategori_ekstrakurikuler, urutan, status_kategori_ekstrakurikuler) VALUES (1, 1, 'keagamaan', 'Keagamaan', 1, 'Publish');
INSERT OR IGNORE INTO kategori_ekstrakurikuler (id_kategori_ekstrakurikuler, id_user, slug_kategori_ekstrakurikuler, nama_kategori_ekstrakurikuler, urutan, status_kategori_ekstrakurikuler) VALUES (2, 1, 'seni', 'Seni', 2, 'Publish');
INSERT OR IGNORE INTO kategori_ekstrakurikuler (id_kategori_ekstrakurikuler, id_user, slug_kategori_ekstrakurikuler, nama_kategori_ekstrakurikuler, urutan, status_kategori_ekstrakurikuler) VALUES (3, 1, 'olahraga', 'Olahraga', 3, 'Publish');
INSERT OR IGNORE INTO kategori_ekstrakurikuler (id_kategori_ekstrakurikuler, id_user, slug_kategori_ekstrakurikuler, nama_kategori_ekstrakurikuler, urutan, status_kategori_ekstrakurikuler) VALUES (4, 1, 'teknologi', 'Teknologi', 4, 'Publish');

-- =====================================================
-- KATEGORI DOWNLOAD
-- =====================================================
INSERT OR IGNORE INTO kategori_download (id_kategori_download, id_user, slug_kategori_download, nama_kategori_download, urutan, status_kategori_download) VALUES (1, 1, 'formulir', 'Formulir', 1, 'Publish');
INSERT OR IGNORE INTO kategori_download (id_kategori_download, id_user, slug_kategori_download, nama_kategori_download, urutan, status_kategori_download) VALUES (2, 1, 'brosur', 'Brosur', 2, 'Publish');
INSERT OR IGNORE INTO kategori_download (id_kategori_download, id_user, slug_kategori_download, nama_kategori_download, urutan, status_kategori_download) VALUES (3, 1, 'materi', 'Materi', 3, 'Publish');

-- =====================================================
-- KATEGORI CLIENT/MITRA
-- =====================================================
INSERT OR IGNORE INTO kategori_client (id_kategori_client, id_user, slug_kategori_client, nama_kategori_client, urutan, status_kategori_client) VALUES (1, 1, 'mitra', 'Mitra', 1, 'Publish');
INSERT OR IGNORE INTO kategori_client (id_kategori_client, id_user, slug_kategori_client, nama_kategori_client, urutan, status_kategori_client) VALUES (2, 1, 'sponsor', 'Sponsor', 2, 'Publish');

-- =====================================================
-- KATEGORI AGENDA
-- =====================================================
INSERT OR IGNORE INTO kategori_agenda (id_kategori_agenda, id_user, slug_kategori_agenda, nama_kategori_agenda, urutan, status_kategori_agenda) VALUES (1, 1, 'seminar', 'Seminar', 1, 'Publish');
INSERT OR IGNORE INTO kategori_agenda (id_kategori_agenda, id_user, slug_kategori_agenda, nama_kategori_agenda, urutan, status_kategori_agenda) VALUES (2, 1, 'workshop', 'Workshop', 2, 'Publish');
INSERT OR IGNORE INTO kategori_agenda (id_kategori_agenda, id_user, slug_kategori_agenda, nama_kategori_agenda, urutan, status_kategori_agenda) VALUES (3, 1, 'kompetisi', 'Kompetisi', 3, 'Publish');

-- =====================================================
-- JENJANG MASTER
-- =====================================================
INSERT OR IGNORE INTO jenjang (id_jenjang, id_user, nama_jenjang, keterangan, urutan, status_aktif) VALUES (1, 1, 'MTs', 'Madrasah Tsanawiyah', 1, 'Ya');
INSERT OR IGNORE INTO jenjang (id_jenjang, id_user, nama_jenjang, keterangan, urutan, status_aktif) VALUES (2, 1, 'MA', 'Madrasah Aliyah', 2, 'Ya');
INSERT OR IGNORE INTO jenjang (id_jenjang, id_user, nama_jenjang, keterangan, urutan, status_aktif) VALUES (3, 1, 'SMK', 'Sekolah Menengah Kejuruan', 3, 'Ya');

-- =====================================================
-- JENJANG PENDIDIKAN (JURUSAN)
-- =====================================================
INSERT OR IGNORE INTO jenjang_pendidikan (id_jenjang_pendidikan, id_user, id_jenjang, slug_jenjang_pendidikan, judul_jenjang_pendidikan, ringkasan, isi, status_jenjang_pendidikan, urutan) 
VALUES (1, 1, 3, 'multimedia', 'Multimedia', 'Program keahlian multimedia dengan fokus pada desain grafis, animasi, dan video editing.', 
'Program keahlian Multimedia membekali siswa dengan kemampuan dalam bidang desain grafis, animasi 2D/3D, video editing, dan fotografi.', 'Publish', 1);

INSERT OR IGNORE INTO jenjang_pendidikan (id_jenjang_pendidikan, id_user, id_jenjang, slug_jenjang_pendidikan, judul_jenjang_pendidikan, ringkasan, isi, status_jenjang_pendidikan, urutan) 
VALUES (2, 1, 3, 'teknik-komputer-jaringan', 'Teknik Komputer dan Jaringan', 'Program keahlian TKJ fokus pada pengelolaan jaringan komputer dan administrasi sistem.', 
'Program keahlian Teknik Komputer dan Jaringan membekali siswa dengan kemampuan dalam bidang instalasi, konfigurasi, dan troubleshooting jaringan komputer.', 'Publish', 2);

-- =====================================================
-- AGAMA
-- =====================================================
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES (1, 1, 'Islam', 1);
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES (2, 1, 'Kristen', 2);
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES (3, 1, 'Katolik', 3);
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES (4, 1, 'Hindu', 4);
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES (5, 1, 'Buddha', 5);
INSERT OR IGNORE INTO agama (id_agama, id_user, nama_agama, urutan) VALUES (6, 1, 'Konghucu', 6);

-- =====================================================
-- HUBUNGAN KELUARGA
-- =====================================================
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (1, 1, 'Ayah Kandung', 1);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (2, 1, 'Ibu Kandung', 2);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (3, 1, 'Kakak', 3);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (4, 1, 'Paman', 4);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (5, 1, 'Bibi', 5);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (6, 1, 'Kakek', 6);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (7, 1, 'Nenek', 7);
INSERT OR IGNORE INTO hubungan (id_hubungan, id_user, nama_hubungan, urutan) VALUES (8, 1, 'Wali Lainnya', 8);

-- =====================================================
-- PEKERJAAN
-- =====================================================
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (1, 1, 'PNS', 1);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (2, 1, 'TNI/Polri', 2);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (3, 1, 'Karyawan Swasta', 3);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (4, 1, 'Wiraswasta', 4);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (5, 1, 'Petani', 5);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (6, 1, 'Nelayan', 6);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (7, 1, 'Buruh', 7);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (8, 1, 'Dokter', 8);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (9, 1, 'Guru/Dosen', 9);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (10, 1, 'Ibu Rumah Tangga', 10);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (11, 1, 'Tidak Bekerja', 11);
INSERT OR IGNORE INTO pekerjaan (id_pekerjaan, id_user, nama_pekerjaan, urutan) VALUES (12, 1, 'Lainnya', 12);

-- =====================================================
-- JENIS DOKUMEN PENDAFTARAN
-- =====================================================
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (1, 1, 'kartu-keluarga', 'Kartu Keluarga', 'Scan/foto Kartu Keluarga', 'Wajib', 1);
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (2, 1, 'akta-kelahiran', 'Akta Kelahiran', 'Scan/foto Akta Kelahiran', 'Wajib', 2);
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (3, 1, 'ijazah', 'Ijazah', 'Scan/foto Ijazah terakhir', 'Wajib', 3);
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (4, 1, 'skhun', 'SKHUN', 'Scan/foto SKHUN', 'Wajib', 4);
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (5, 1, 'pas-foto', 'Pas Foto', 'Pas foto 3x4 latar merah', 'Wajib', 5);
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (6, 1, 'raport', 'Raport', 'Scan/foto raport semester terakhir', 'Opsional', 6);
INSERT OR IGNORE INTO jenis_dokumen (id_jenis_dokumen, id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES (7, 1, 'surat-keterangan-lulus', 'Surat Keterangan Lulus', 'Scan/foto SKL', 'Opsional', 7);

-- =====================================================
-- GELOMBANG PPDB
-- =====================================================
INSERT OR IGNORE INTO gelombang (id_gelombang, id_user, tahun_ajaran, tahap, tahun, slug, judul, isi, tanggal_buka, tanggal_tutup, status_gelombang) 
VALUES (1, 1, '2026/2027', 1, 2026, 'ppdb-2026-gel-1', 'PPDB Gelombang 1 Tahun Ajaran 2026/2027', 
'Pendaftaran Peserta Didik Baru (PPDB) Gelombang 1 Tahun Ajaran 2026/2027 telah dibuka. Segera daftarkan putra-putri Anda.', 
'2026-01-01', '2026-03-31', 'Buka');

INSERT OR IGNORE INTO gelombang (id_gelombang, id_user, tahun_ajaran, tahap, tahun, slug, judul, isi, tanggal_buka, tanggal_tutup, status_gelombang) 
VALUES (2, 1, '2026/2027', 2, 2026, 'ppdb-2026-gel-2', 'PPDB Gelombang 2 Tahun Ajaran 2026/2027', 
'Pendaftaran Peserta Didik Baru (PPDB) Gelombang 2 Tahun Ajaran 2026/2027.', 
'2026-04-01', '2026-06-30', 'Tutup');

-- =====================================================
-- TAHUN AJARAN
-- =====================================================
INSERT OR IGNORE INTO tahun (id_tahun, id_user, nama_tahun, keterangan, status_tahun) VALUES (1, 1, '2025/2026', 'Tahun Ajaran 2025/2026', 'Aktif');
INSERT OR IGNORE INTO tahun (id_tahun, id_user, nama_tahun, keterangan, status_tahun) VALUES (2, 1, '2026/2027', 'Tahun Ajaran 2026/2027', 'Aktif');

-- =====================================================
-- KELAS
-- =====================================================
INSERT OR IGNORE INTO kelas (id_kelas, id_user, nama_kelas, urutan, status_kelas) VALUES (1, 1, 'VII', 1, 'Aktif');
INSERT OR IGNORE INTO kelas (id_kelas, id_user, nama_kelas, urutan, status_kelas) VALUES (2, 1, 'VIII', 2, 'Aktif');
INSERT OR IGNORE INTO kelas (id_kelas, id_user, nama_kelas, urutan, status_kelas) VALUES (3, 1, 'IX', 3, 'Aktif');
INSERT OR IGNORE INTO kelas (id_kelas, id_user, nama_kelas, urutan, status_kelas) VALUES (4, 1, 'X', 4, 'Aktif');
INSERT OR IGNORE INTO kelas (id_kelas, id_user, nama_kelas, urutan, status_kelas) VALUES (5, 1, 'XI', 5, 'Aktif');
INSERT OR IGNORE INTO kelas (id_kelas, id_user, nama_kelas, urutan, status_kelas) VALUES (6, 1, 'XII', 6, 'Aktif');

-- =====================================================
-- TINGKATAN
-- =====================================================
INSERT OR IGNORE INTO tingkatan (id_tingkatan, id_user, nama_tingkatan, urutan, status_tingkatan) VALUES (1, 1, 'MTs', 1, 'Aktif');
INSERT OR IGNORE INTO tingkatan (id_tingkatan, id_user, nama_tingkatan, urutan, status_tingkatan) VALUES (2, 1, 'MA/SMK', 2, 'Aktif');

-- =====================================================
-- SAMPLE BERITA (OPTIONAL)
-- =====================================================
INSERT OR IGNORE INTO berita (id_berita, id_user, id_kategori, slug_berita, judul_berita, ringkasan, isi, status_berita, jenis_berita, hits, urutan)
VALUES (1, 1, 1, 'selamat-datang-di-media-hikmah', 'Selamat Datang di Media Hikmah', 
'Selamat datang di website resmi Media Hikmah. Lembaga Pendidikan Islam Kejuruan dengan fokus pada bidang Multimedia.',
'<p>Selamat datang di website resmi Media Hikmah.</p><p>Kami adalah Lembaga Pendidikan Islam Kejuruan dengan fokus pada bidang Multimedia. Visi kami adalah mencetak generasi yang beraqidah lurus, berakhlaq mulia, bertaqwa kepada Allah ta''ala, dan memiliki keahlian yang bermanfaat bagi dirinya, kaum muslimin, dan juga Bangsa dan Negara.</p>',
'Publish', 'Berita', 0, 1);

INSERT OR IGNORE INTO berita (id_berita, id_user, id_kategori, slug_berita, judul_berita, ringkasan, isi, status_berita, jenis_berita, hits, urutan)
VALUES (2, 1, 1, 'pendaftaran-ppdb-2026-dibuka', 'Pendaftaran PPDB 2026 Telah Dibuka', 
'Pendaftaran Peserta Didik Baru (PPDB) Tahun Ajaran 2026/2027 telah resmi dibuka.',
'<p>Dengan ini kami informasikan bahwa Pendaftaran Peserta Didik Baru (PPDB) Tahun Ajaran 2026/2027 telah resmi dibuka.</p><p>Segera daftarkan putra-putri Anda melalui website ini atau datang langsung ke sekolah kami.</p>',
'Publish', 'Berita', 0, 2);

-- =====================================================
-- Done!
-- =====================================================
