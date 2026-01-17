-- Seed Data for Media Hikmah Database

-- Insert default admin user (password: admin123 - SHA1 hash)
INSERT OR REPLACE INTO users (id_user, nama, email, username, password, level, status_user)
VALUES (1, 'Administrator', 'admin@mediahikmah.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Admin', 'Aktif');

-- Insert konfigurasi Media Hikmah
INSERT OR REPLACE INTO konfigurasi (id_konfigurasi, nama_website, tagline, deskripsi, email, telepon, whatsapp, alamat, visi, misi, rencana, about_us, warna_primary, warna_secondary)
VALUES (
  1,
  'Media Hikmah',
  'Lembaga Pendidikan Islam Kejuruan - Madrasah Tsanawiyah Multimedia',
  'Dakwah sunnah di Nusantara alhamdulillah berkembang dengan pesat. Kemajuan teknologi membuat dakwah manhaj salaf ini dapat menjangkau hampir seluruh plosok nusantara. Sebagai peserta didik, setiap anak memiliki minat dan bakat yang berbeda-beda. Maka tugas kita untuk dapat memberikan wadah dan mengarahkannya agar potensinya tersebut dapat bermanfaat bagi agama dan umat.',
  'info@mediahikmah.com',
  '08563466756',
  '628563466756',
  'Indonesia',
  'Mencetak generasi yang beraqidah lurus, berakhlaq mulia, bertaqwa kepada Allah ta''ala, dan memiliki keahlian yang bermanfaat bagi dirinya, kaum muslimin, dan juga Bangsa dan Negara.',
  '1. Mengajarkan ilmu Aqidah, Akhlaq, Fiqh, dan Manhaj
2. Mengajarkan keahlian dengan bimbingan pengajar yang ahli dan berpengalaman
3. Memberikan fasilitas kegiatan belajar mengajar yang terus dilengkapi mengikuti perkembangan teknologi
4. Menerapkan sistem boarding
5. Menjalin kerjasama dengan berbagai pihak untuk kegiatan praktek kerja dan kesempatan berkarir
6. Memberikan kontribusi untuk kemajuan desa
7. Menanamkan cinta tanah air',
  'Harapan dari pembangunan Lembaga Pendidikan Multimedia Yayasan Media Hikmah Nusantara adalah mencetak generasi yang beraqidah benar, beribadah dengan benar, berakhlaq mulia, bertaqwa kepada Allah ta''ala, dan memiliki keahlian multimedia yang bermanfaat bagi dirinya, kaum muslimin, Bangsa dan Negara.',
  'Sebagian pengurus Yayasan Media Hikmah Nusantara ini merupakan tenaga ahli dan praktisi di bidang multimedia yang sangat antusias dengan pembangunan Lembaga Pendidikan ini. Kami juga memiliki banyak rekanan dan network yang insyaAllah memiliki kemampuan untuk mendukung berjalannya Lembaga Pendidikan ini.',
  '#16a34a',
  '#2563eb'
);

-- Insert kategori berita
INSERT OR IGNORE INTO kategori (id_user, slug_kategori, nama_kategori, urutan) VALUES
(1, 'pengumuman', 'Pengumuman', 1),
(1, 'berita', 'Berita', 2),
(1, 'kegiatan', 'Kegiatan', 3);

-- Insert agama
INSERT OR IGNORE INTO agama (id_user, nama_agama, urutan) VALUES
(1, 'Islam', 1),
(1, 'Kristen', 2),
(1, 'Katolik', 3),
(1, 'Hindu', 4),
(1, 'Buddha', 5),
(1, 'Konghucu', 6);

-- Insert hubungan keluarga
INSERT OR IGNORE INTO hubungan (id_user, nama_hubungan, urutan) VALUES
(1, 'Anak Kandung', 1),
(1, 'Anak Tiri', 2),
(1, 'Anak Angkat', 3);

-- Insert pekerjaan
INSERT OR IGNORE INTO pekerjaan (id_user, nama_pekerjaan, urutan) VALUES
(1, 'PNS', 1),
(1, 'Karyawan Swasta', 2),
(1, 'Wiraswasta', 3),
(1, 'TNI/POLRI', 4),
(1, 'Petani', 5),
(1, 'Buruh', 6),
(1, 'Tidak Bekerja', 7);

-- Insert jenjang
INSERT OR IGNORE INTO jenjang (id_user, nama_jenjang, keterangan, urutan, status_aktif) VALUES
(1, 'SD/MI', 'Sekolah Dasar', 1, 'Ya'),
(1, 'SMP/MTs', 'Sekolah Menengah Pertama', 2, 'Ya'),
(1, 'SMA/SMK/MA', 'Sekolah Menengah Atas', 3, 'Ya');

-- Insert jenjang pendidikan (program)
INSERT OR IGNORE INTO jenjang_pendidikan (id_user, id_jenjang, judul_jenjang_pendidikan, keterangan, status_jenjang_pendidikan) VALUES
(1, 2, 'MTs Multimedia', 'Madrasah Tsanawiyah dengan fokus Multimedia', 'Aktif');

-- Insert jenis dokumen
INSERT OR IGNORE INTO jenis_dokumen (id_user, slug_jenis_dokumen, nama_jenis_dokumen, keterangan, status_jenis_dokumen, urutan) VALUES
(1, 'ijazah', 'Ijazah Terakhir', 'Scan ijazah terakhir', 'Wajib', 1),
(1, 'kartu-keluarga', 'Kartu Keluarga', 'Scan KK', 'Wajib', 2),
(1, 'akta-lahir', 'Akta Kelahiran', 'Scan akta lahir', 'Wajib', 3),
(1, 'foto', 'Pas Foto', 'Foto 3x4 latar merah', 'Wajib', 4);

-- Insert kategori staff
INSERT OR IGNORE INTO kategori_staff (id_user, slug_kategori_staff, nama_kategori_staff, urutan, status_kategori_staff) VALUES
(1, 'pimpinan', 'Pimpinan', 1, 'Publish'),
(1, 'guru', 'Guru', 2, 'Publish'),
(1, 'tata-usaha', 'Tata Usaha', 3, 'Publish');

-- Insert kategori galeri
INSERT OR IGNORE INTO kategori_galeri (id_user, slug_kategori_galeri, nama_kategori_galeri, urutan, status_kategori_galeri) VALUES
(1, 'kegiatan', 'Kegiatan', 1, 'Publish'),
(1, 'fasilitas', 'Fasilitas', 2, 'Publish'),
(1, 'prestasi', 'Prestasi', 3, 'Publish'),
(1, 'homepage', 'Homepage', 4, 'Publish');

-- Insert gelombang PPDB
INSERT OR IGNORE INTO gelombang (id_user, tahun_ajaran, tahap, tahun, slug, judul, isi, tanggal_buka, tanggal_tutup, status_gelombang) VALUES
(1, '2026/2027', 1, 2026, 'ppdb-gelombang-1-2026', 'PPDB Gelombang 1 Tahun 2026/2027', 'Penerimaan Peserta Didik Baru Gelombang 1', '2026-01-01', '2026-06-30', 'Buka');
