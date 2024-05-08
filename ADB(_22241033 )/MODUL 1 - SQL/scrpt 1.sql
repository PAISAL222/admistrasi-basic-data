-- Nama : M.PAISAL
-- NIM	: 22241033
-- Modul 1

-- SELECT : Mengambil 1 kolom table
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT : Mengambil lebih dari 1 kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT : Mengambil semua kolom
SELECT * FROM ms_produk_dqlab;

-- LATIHAN
-- Ambil Kode Produk, Nama Produk, dari Tabel Produk
-- SELECT : Kode Produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;


-- Ambil Semua Kolom dari tabel penjualan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS

-- PREFIX

-- Ambil nama prdouk dengan prefix
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Ambil nama produk dengan prefix databasae
SELECT mart_undikma.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- ALIAS

-- Alias pada kolom dengan as
SELECT nama_produk as np FROM ms_produk_dqlab;

-- ALias pada kolom tanpa as
SELECT nama_produk np FROM ms_produk_dqlab;

-- Alias pada tabble dengan as
SELECT nama_produk FROM ms_produk_dqlab as mpd;

-- Alias pada table tanpa as
SELECT nama_produk FROM ms_produk_dqlab mpd;

-- Penggunaan ALIAS dan PREFIX
SELECT mpd.nama_produk FROM ms_produk_dqlab mpd;

-- Mencari nama Customer dan alamat nya
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- Mencari Harga dan Produk
SELECT nama_produk, harga FROM tr_penjualan_dqlab;

