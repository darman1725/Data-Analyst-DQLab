/*  Latihan Mandiri - Halaman 30
 * 
1) Cobalah lakukan beberapa perhitungan matematika sebagai berikut dengan SELECT:
a) 4*2 (4 dikali 2)
b) (4*8)%7
c) (4*8) MOD 7

● Dan ini sangat PENTING: cobalah dengan beberapa variasi dari ekspresi matematika ini 
sampai Anda sangat terbiasa. Walaupun kelihatan remeh temeh, tapi hal fundamental ini 
bisa jadi batu sandungan Anda sebagai data analyst ketika berhadapan dengan kasus yang 
semakin kompleks. 
*/

-- a) Menggunakan operator perkalian (multiplication)
select 4 * 2 as "Hasil Perkalian";

-- b) Menggunakan kolaborasi operator perkalian (multiplication) dan modulo (sisa bagi)
select ((4*8)%7) as "Hasil Kalkulasi"; 

-- c) Menggunakan kolaborasi operator perkalian (multiplication) dan modulo (sisa bagi)
select ((4*8) mod 7) as "Hasil Kalkulasi"; 

-- atau secara ringkasan
select 4 * 2 as "Hasil Perkalian : 4 x 2 = ",
((4*8)%7) as "Hasil Kalkulasi : (4*8)%7 = ",
((4*8) mod 7) as "Hasil Kalkulasi : (4*8) MOD 7 = ";


/*  Latihan Mandiri - Halaman 41
 * 
a) 1 = true
b) 1 = false
c) 5 >= 5
d) 5.2 = 5.20000
e) NULL = 1
f) NULL = NULL

-- Dari perbandingan di atas, manakah yang tidak menghasilkan nilai 1 atau 0?

● Dan ini sangat PENTING: cobalah dengan beberapa variasi dari ekspresi perbandingan ini sampai 
Anda sangat terbiasa. Walaupun kelihatan remeh temeh, tapi hal fundamental ini bisa jadi batu 
sandungan Anda sebagai data analyst ketika berhadapan dengan kasus yang semakin kompleks. 
*/

-- Pembahasan
select 
1=true, 
1=false,
5>=5,
5.2=5.20000,
null=1,
null=null; 


/*  Latihan Mandiri - Halaman 58
 * 
Latih dengan mencoba berbagai fungsi berikut dengan SELECT
a) DATEDIFF('2022-07-23', NOW())
b) YEAR('2022-07-23')
c) MONTH('2022-07-23')
d) DAY('2022-07-23')
e) YEAR(NOW())

● Dan ini sangat PENTING: cobalah fungsi-fungsi ini sampai Anda sangat terbiasa. Walaupun 
kelihatan remeh temeh, tapi hal fundamental ini bisa jadi batu sandungan Anda sebagai 
data analyst ketika berhadapan dengan kasus yang semakin kompleks.
*/


-- Menghitung perbedaan hari dari tanggal X1 ke X2
select DATEDIFF(NOW(), '2022-07-23') as "Selisih Hari";

-- Mengambil elemen tahun dari tanggal yang diinginkan
select YEAR('2022-07-23') as "Tahun";

-- Mengambil elemen bulan dari tanggal yang diinginkan
select MONTH('2022-07-23') as "Bulan";

-- Mengambil elemen hari dari tanggal yang diinginkan
select DAY('2022-07-23') as "Hari";

-- Mengambil data tahun sekarang
select YEAR(NOW()) as "Tahun Sekarang";

-- atau secara ringkasan
select DATEDIFF(NOW(), '2022-07-23') as "Selisih Hari",
YEAR('2022-07-23') as "Tahun",
MONTH('2022-07-23') as "Bulan",
DAY('2022-07-23') as "Hari",
YEAR(NOW()) as "Tahun Sekarang";


/*  Latihan Mandiri - Halaman 58
 * 
-- Latih dengan mencoba berbagai filtering dengan LIKE untuk pola teks berikut
a) nama_produk yang memiliki karakter kedua ‘a’ pada table tr_penjualan_dqlab
b) kategori_produk yang mengandung huruf ‘t’ pada table ms_produk_dqlab
c) kategori_produk yang mengandung karakter ‘un’ pada table ms_produk_dqlab
*/

-- a) nama_produk yang memiliki karakter kedua ‘a’ pada table tr_penjualan_dqlab
select nama_produk as "Nama Produk Dengan Karakter Kedua 'a'" 
from tr_penjualan_dqlab 
where nama_produk like '_a%';

-- b) kategori_produk yang mengandung huruf ‘t’ pada table ms_produk_dqlab
select kategori_produk as "Kategori Produk Yang Mengandung Huruf 't'" 
from ms_produk_dqlab
where kategori_produk like '%t%';

-- c) kategori_produk yang mengandung karakter ‘un’ pada table ms_produk_dqlab
select kategori_produk as "Kategori Produk Yang Mengandung Huruf 'un'" 
from ms_produk_dqlab
where kategori_produk like '%un%';


-- ## TUGAS ## --
-- 1) Tim sales ingin melakukan analisa terhadap semua data pelanggan yang ada di
-- dqlabmartbasic, munculkan semua nama pelanggan dan kode pelanggan yang ada dari
-- database tersebut menggunakan alias tanpa as
select nama_pelanggan "Nama Product", 
kode_pelanggan "Kode pelanggan"
from ms_pelanggan_dqlab;

-- 2) Tim sales ingin mengetahui list nama produk dan harga dari masing-masing produk
-- tersebut, munculkan lah nama produk dan harga dari database yang ada dimana nama_produk
-- sebaiknya diganti dengan product dan harga di ganti dengan price menggunakan prefix
select mpd.nama_produk as product,
mpd.harga as price
from ms_produk_dqlab as mpd;

-- 3) Tim marketing ingin melihat data historical dari setiap transaksi pertanggalnya,
-- munculkanlah transaksi untuk semua tanggal yang ada beserta nama produk serta quantitynya
select tgl_transaksi as "Tanggal transaksi", 
nama_produk as "Nama Produk",
qty as "Kuantitas"
from tr_penjualan_dqlab;


















