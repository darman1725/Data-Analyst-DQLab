-- Menggunakan database dqlabmartbasic
use dqlabmartbasic;

/* 
 * -- Latihan Mandiri - Halaman 16 --
 * 
Latih dengan mencoba berbagai pengurutan dengan ORDER BY dengan kriteria berikut:
a) Tampilkan semua kolom dari table tr_penjualan_dqlab dengan mengurutkan berdasarkan qty dan tgl_transaksi.*/
select * from tr_penjualan_dqlab
order by qty,tgl_transaksi;

-- b) Tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan.
select * from ms_pelanggan_dqlab
order by nama_pelanggan;

-- c) Tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat.
select * from ms_pelanggan_dqlab
order by alamat;

/* 
 * -- Latihan Mandiri - Halaman 28 --
 * 
Latih dengan mencoba berbagai pengurutan dengan ORDER BY dengan kriteria berikut
-- a) Tampilkan semua kolom dari table tr_penjualan_dqlab dengan mengurutkan berdasarkan tgl_transaksi secara descending dan qty secara ascending.*/
select * from tr_penjualan_dqlab
order by tgl_transaksi desc, qty asc;

-- b) Tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descending.
select * from ms_pelanggan_dqlab
order by nama_pelanggan desc;

-- c) Tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara descending.
select * from ms_pelanggan_dqlab
order by alamat desc;

/* 
 * -- Latihan Mandiri - Halaman 34--
 * 
Cobalah pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon.
*/
select nama_produk, 
qty, 
harga,
(qty*harga) as "Total", 
diskon_persen as "Diskon (%)",
((qty*harga)*((diskon_persen)/100)) as "Total Diskon (Rp)",
((qty*harga)-((qty*harga)*((diskon_persen)/100))) as total_harga
from tr_penjualan_dqlab
order by total_harga desc;

/* 
 * -- Latihan Mandiri - Halaman 41--
 * 
Latih dengan mencoba dengan kriteria berikut, kali ini kita akan merubah detil soal menjadi lebih ke arah bahasa bisnis yang non teknis*/
-- a) Tampilkan semua kolom dari transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi.
select * from tr_penjualan_dqlab
where diskon_persen > 0
order by harga desc;

-- b) Tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan yang memiliki harga minimal seratus ribu rupiah dan diurutkan berdasarkan harga tertinggi.
select nama_produk, 
qty,
harga 
from tr_penjualan_dqlab
where harga >= 100000
order by harga desc;

-- c) Tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk berawalan karakter ‘T’ dan diurutkan berdasarkan diskon tertinggi.
select nama_produk,
qty,
harga
from tr_penjualan_dqlab
where harga >= 100000 
or nama_produk like 'T%'
order by diskon_persen desc;

/* 
 * -- Latihan Mandiri - Halaman 98--
 * 
Cobalah buat query untuk melakukan hal-hal berikut:
-- a) Melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah di atas nilai 4. */
select nama_produk,sum(qty) as jumlah
from tr_penjualan_dqlab
group by nama_produk
having jumlah > 4;

-- b) Melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk sama dengan 9. 
select nama_produk,sum(qty) as jumlah
from tr_penjualan_dqlab
group by nama_produk
having jumlah = 9;

-- c) Melihat daftar kelompok nama produk dan total nilai penjualan (harga dikalikan jumlah dikurangi diskon) dengan dan urutan berdasarkan nilai penjualan terbesar. 
select nama_produk,
sum(qty) as jumlah, 
harga,
(sum(qty)*harga) as "Total", 
diskon_persen as "Diskon (%)",
((qty*harga)*((diskon_persen)/100)) as "Total Diskon (Rp)",
((sum(qty)*harga)-((sum(qty)*harga)*((diskon_persen)/100))) as total_penjualan
from tr_penjualan_dqlab
group by nama_produk
order by total_penjualan desc;
