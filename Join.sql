-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT detail_pesanan.produk_id, produk.nama, SUM(detail_pesanan.jumlah) AS total_pembelian FROM detail_pesanan JOIN produk ON detail_pesanan.produk_id = produk.id
GROUP BY detail_pesanan.produk_id, produk.nama ORDER BY total_pembelian DESC LIMIT 3;

-- 1 pelanggan membeli 3 barang yang berbeda.
SELECT detail_pesanan.id, pesanan.pembeli_id AS pesanan, produk.nama AS produk FROM detail_pesanan
JOIN pesanan ON detail_pesanan.pesanan_id = pesanan.id
JOIN produk ON detail_pesanan.produk_id = produk.id;