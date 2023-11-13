-- Melihat Kategori barang yang paling banyak barangnya.
SELECT kategori, COUNT(*) as jumlah_produk
FROM produk
GROUP BY kategori
HAVING jumlah_produk > 1
ORDER BY kategori;