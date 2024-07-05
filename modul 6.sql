-- Nama : Muhamaad Paisal
-- nim  : 22241033

USE mart_undikma;

-- soal 1
SELECT nama_produk,
SUM(qty*(harga - (diskon_persen / 100) * harga )) AS Pendapatan
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY Pendapatan DESC
LIMIT 5;

-- soal 2
SELECT np.kategori_produk,
SUM(tp.qty*(tp.harga - (tp.diskon_persen / 100) * tp.harga)) AS pendapatan,
CASE
WHEN SUM(tp.qty * (tp.harga - (tp.diskon_persen / 100) * tp.harga)) >=900000 THEN 'Target Archived'
WHEN SUM(tp.qty * (tp.harga - (tp.diskon_persen / 100) * tp.harga)) < 900000 THEN 'less performance'
ELSE 'Follow Up'
END AS status
FROM tr_penjualan_dqlab tp
JOIN ms_produk_dqlab np
ON tp.kode_produk = np.kode_produk
GROUP BY np.kategori_produk
HAVING status = 'Follow Up'
LIMIT 3;

-- soal 3
SELECT 
np.nama_pelanggan,
np.alamat
FROM
tr_penjualan_dqlab AS tp
RIGHT JOIN
ms_pelanggan_dqlab AS np
ON np.kode_pelanggan = tp.kode_pelanggan
WHERE tp.qty IS NULL