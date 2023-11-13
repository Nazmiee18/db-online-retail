INSERT INTO pembeli (nama, alamat, nomor_telepon, email) VALUES
("Udin", "Kabupaten Tangerang", "6285203898454", "udin@gmail.com"), ("Syarif", "Kota Tangerang", "6285204858453", "syarif@gmail.com"), ("Riana", "Medan", "6285209838754", "riana@gmail.com"), ("Oki", "Bogor", "6285204590865", "oki@gmail.com"), ("Okta", "Bandung", "6285205430789", "okta@gmail.com");

INSERT INTO produk (nama, deskripsi, harga, stok, kategori) VALUES 
("Meja belajar", "Meja untuk belajar", 528000, 5, "Perabotan"),
("Laptop", "Laptop murah meriah", 6000000, 5, "Elektronik"),
("Kemeja Kerja", "Pakaian untuk kerja", 50000, 10, "Pakaian"),
("Kasur", "tempat kita beristirahat", 1728000, 5, "Perabotan"),
("Daster", "Ukuran M-XL", 38000, 10, "Pakaian");

INSERT INTO pesanan (tanggal, status, pembeli_id) VALUES
("2023-09-10", "diproses", 1), ("2023-10-25", "diterima", 1), ("2023-11-25", "diproses", 1), ("2023-10-20", "diterima", 2), ("2023-11-28", "diproses", 2), ("2023-10-09", "dikembalikan", 2),
("2023-11-05", "diterima", 3), ("2023-11-21", "diterima", 3), 
("2023-11-29", "diterima", 4), ("2023-10-31", "diterima", 5);

INSERT INTO detail_pesanan (pesanan_id, produk_id, jumlah, harga_unit, subtotal) VALUES
(1, 1, 1, "528000", "528000"), (2, 2, 1, "6000000", "6000000"), (3, 3, 1, "50000", "50000"), (4, 4, 1, "1728000", "1728000"), (5, 1, 1, "528000", "528000"), (6, 2, 1, "6000000", "6000000"), (7, 5, 4, "38000", "152000"), (8, 3, 3, "50000", "150000"), (9, 2, 3, "6000000", "18000000"), (10, 4, 2, "1728000", "3456000");

INSERT INTO pembayaran (pesanan_id, metode_pembayaran, total_pembayaran, tanggal_pembayaran) VALUES
(1, "COD", 528000, "2023-09-10"), (2, "Transfer Bank", 6000000, "2023-10-25"), (3, "COD", 50000, "2023-11-25"), (4, "E-Wallet", 1728000, "2023-10-20"), (5, "COD", 528000, "2023-11-28"), (6, "Transfer Bank", 6000000, "2023-10-09"), (7, "E-Wallet", 152000, "2023-11-05"), (8, "E-Wallet", 150000, "2023-11-21"), (9, "COD", 18000000, "2023-11-29"), (10, "Transfer Bank", 3456000, "2023-10-31");