-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT AVG(total_pembayaran) AS rata_rata_transaksi FROM pembayaran
WHERE pembayaran.tanggal_pembayaran BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW();