CREATE TABLE pembeli (
	id int(5) PRIMARY KEY not NULL auto_increment,
	nama VARCHAR(100) not NULL,
	alamat VARCHAR(100) not NULL,
	nomor_telepon VARCHAR(50) not NULL,
	email VARCHAR(25)
);

CREATE TABLE produk (
	id int(5) PRIMARY KEY not NULL auto_increment,
	nama VARCHAR(100) not NULL,
	deskripsi VARCHAR(255) not NULL,
	harga BIGINT not NULL,
	stok int,
	kategori VARCHAR(50)
);

CREATE TABLE pesanan (
	id int(5) PRIMARY KEY not NULL auto_increment,
	tanggal DATE,
	status VARCHAR(25),
	pembeli_id int(5),
	FOREIGN KEY (pembeli_id) REFERENCES pembeli(id)
);

CREATE TABLE detail_pesanan (
	id int(5) PRIMARY KEY not NULL auto_increment,
	pesanan_id int(5),
	produk_id int(5),
	jumlah int(5),
	harga_unit VARCHAR(100),
	subtotal VARCHAR(100),
	FOREIGN KEY (pesanan_id) REFERENCES pesanan(id),
	FOREIGN KEY (produk_id) REFERENCES produk(id)
);

CREATE TABLE pembayaran (
	id int(5) PRIMARY KEY not NULL auto_increment, 
	pesanan_id int(5),
	metode_pembayaran VARCHAR(100) not NULL,
	total_pembayaran int,
	tanggal_pembayaran DATE,
	FOREIGN KEY (pesanan_id) REFERENCES pesanan(id)
);

