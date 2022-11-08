-- Menggunakan database yang dipakai
use dqlabmartbasic;

-- Menampilkan semua data pada tabel ms_produk_dqlab
select * from ms_produk_dqlab; 

-- Menampilkan data tertentu pada tabel ms_pelanggan_dqlab
select kode_pelanggan,
nama_pelanggan
from ms_pelanggan_dqlab; 

-- Menampilkan data dengan menggunakan prefix pada tabel ms_pelanggan_dqlab
select ms_pelanggan_dqlab.kode_pelanggan from ms_pelanggan_dqlab;

-- Menampilkan data dengan menggunakan alias (AS) pada tabel ms_pelanggan_dqlab
select kode_pelanggan as nomor_pelanggan from ms_pelanggan_dqlab; 