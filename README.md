# item_inventory

# Tugas 7

--Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Stateless widget dalam Flutter seperti "gambar", yang tetap sama sepanjang waktu, seperti foto. Stateful widget seperti "penghitung", yang bisa berubah nilainya, seperti jumlah yang bisa bertambah atau berkurang sesuai kejadian atau interaksi.

--Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

MainScreen (StatefulWidget):
MainScreen adalah Stateful Widget yang mewakili tampilan halaman utama aplikasi.

Scaffold:
Scaffold digunakan untuk menyediakan kerangka kerja tampilan aplikasi, termasuk AppBar di atasnya.

AppBar:
AppBar digunakan untuk menampilkan bar navigasi di bagian atas layar, yang berisi judul aplikasi.

Center:
Center adalah widget yang digunakan untuk mengatur widget child-nya ke tengah layar secara vertikal dan horizontal.

Column:
Column digunakan untuk mengatur anak-anaknya dalam kolom vertikal, sehingga tombol-tombol berada dalam tumpukan.

ElevatedButton:
ElevatedButton adalah widget tombol yang memiliki latar belakang berwarna dan efek naik saat ditekan. Anda menggunakan ElevatedButton untuk membuat tombol "Lihat Item," "Tambah Item," dan "Logout."

Icon:
Icon digunakan untuk menampilkan ikon bersama dengan teks pada tombol. Anda menggunakan Icon untuk menambahkan ikon (misalnya, ikon mata, ikon tambah, dan ikon logout) ke tombol.

Text:
Text digunakan untuk menampilkan teks pada tombol. Anda menggunakan Text untuk menambahkan teks "Lihat Item," "Tambah Item," dan "Logout" pada tombol.

ScaffoldMessenger:
ScaffoldMessenger adalah bagian dari Flutter yang digunakan untuk menampilkan Snackbar di layar saat tombol "Lihat Item," "Tambah Item," atau "Logout" ditekan. Itu digunakan untuk memberikan umpan balik kepada pengguna bahwa tombol telah ditekan.


--Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)


pertama saya membuat repo, kemudian membuat folder di lokal, kemudian git init, kemudian flutter create item_repository. setelah itu saya membuat file baru yaitu main_screen. kemudian mengisinya dengan class main screen yang extend statefulwidget dan class mainscreen state dengan extends state. kemudian saya membuat 3 button dengan keterangan sesuai soal yang memiliki nama berbeda warna berbeda dan memiliki snanckbar. kemudian saya pergi ke main dan kemudian import mainscreen dan di start saya ganti dengan memanggil mainscreen


# Tugas 8

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator.push():

-Metode ini digunakan untuk menambahkan halaman baru ke dalam tumpukan navigasi.

-Halaman sebelumnya tetap ada di tumpukan, sehingga pengguna dapat kembali ke halaman sebelumnya.

-Cocok digunakan ketika ingin menyimpan riwayat navigasi pengguna.

contoh :

```
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NextScreen()),
  );
}
```

Navigator.pushReplacement():

-Metode ini juga menambahkan halaman baru ke dalam tumpukan, tetapi halaman sebelumnya akan dihapus dari tumpukan.

-Cocok digunakan ketika ingin mengganti halaman saat ini dengan halaman baru dan tidak ingin pengguna kembali ke halaman sebelumnya.

```
onPressed: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => NewScreen()),
  );
}
```
## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing?
1. Container:
Deskripsi:
Container adalah widget serbaguna yang dapat menampung widget lain atau bertindak sebagai widget tunggal.
Konteks Penggunaan:
Umumnya digunakan untuk mengelompokkan widget lain, memberikan padding, atau mengatur warna latar belakang.
Cocok untuk menentukan ukuran dan tata letak widget di dalamnya.
2. Row dan Column:
Deskripsi:
Row dan Column adalah widget yang menyusun elemen-elemen anak secara horizontal (untuk Row) atau vertikal (untuk Column).
Konteks Penggunaan:
Digunakan untuk menyusun elemen-elemen secara berderet atau berkolom.
Berguna untuk menyusun elemen-elemen secara sejajar satu sama lain.
3. ListView:
Deskripsi:
ListView adalah widget yang membuat daftar elemen yang dapat di-scroll.
Konteks Penggunaan:
Ideal untuk menampilkan daftar data yang panjang atau variabel.
Mendukung elemen-elemen anak yang bisa di-scroll secara otomatis.
4. Stack:
Deskripsi:
Stack adalah widget yang menumpuk elemen-elemen anak di atas satu sama lain.
Konteks Penggunaan:
Digunakan untuk menumpuk elemen-elemen seperti teks, gambar, atau widget lain di atas satu sama lain.
Berguna untuk membuat antarmuka pengguna yang kompleks.
5. Expanded dan Flexible:
Deskripsi:
Expanded dan Flexible digunakan untuk mengontrol ruang yang diambil oleh elemen-elemen anak di dalam Row, Column, atau Flex.
Konteks Penggunaan:
Expanded digunakan untuk memberikan ruang tambahan pada elemen anak di dalam widget Row atau Column.
Flexible memberikan kontrol yang lebih besar terhadap cara ruang dibagi di dalam widget Flex.
6. GridView:
Deskripsi:
GridView adalah widget yang menyusun elemen-elemen anak dalam bentuk grid.
Konteks Penggunaan:
Digunakan ketika Anda ingin menampilkan elemen-elemen dalam grid atau tabel.
Berguna untuk menampilkan data dalam format grid.
7. Card:
Deskripsi:
Card adalah widget yang menyajikan informasi dalam format kartu dengan sudut-sudut yang dibulatkan.
Konteks Penggunaan:
Cocok untuk menampilkan informasi atau konten spesifik dalam bentuk kartu yang terstruktur.
Umumnya digunakan dalam daftar untuk menunjukkan informasi terkait.
8. SizedBox:
Deskripsi:
SizedBox adalah widget yang memberikan dimensi (tinggi atau lebar) yang spesifik pada elemen anaknya.
Konteks Penggunaan:
Digunakan untuk memberikan batasan atau spasi yang spesifik dalam suatu tata letak.
Berguna untuk mengatur ruang antara elemen-elemen.
9. Wrap:
Deskripsi:
Wrap adalah widget yang menyusun elemen-elemen anak ke dalam baris-baris dan kolom-kolom, dan jika tidak cukup ruang, akan pindah ke baris atau kolom berikutnya.
Konteks Penggunaan:
Berguna ketika Anda memiliki elemen-elemen yang perlu diatur dalam beberapa baris atau kolom, dan ingin menghindari overflow atau scroll.
10. Positioned:
Deskripsi:
Positioned memungkinkan penempatan elemen anak di posisi yang tepat relatif terhadap widget induknya.
Konteks Penggunaan:
Digunakan ketika Anda ingin menempatkan elemen di lokasi yang tepat dalam suatu widget.
Berguna dalam menyusun elemen-elemen secara khusus di dalam widget Stack.

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

1. TextFormField untuk Nama Produk:

Deskripsi: TextFormField digunakan untuk mengambil input teks dari pengguna untuk nama produk.
Alasan Penggunaan: Digunakan untuk mengumpulkan informasi tentang nama produk. Validasi juga dilakukan untuk memastikan bahwa input tidak kosong.

2. TextFormField untuk Harga:

Deskripsi: TextFormField digunakan untuk mengambil input teks dari pengguna untuk harga produk.
Alasan Penggunaan: Digunakan untuk mengumpulkan informasi tentang harga produk. Validasi dilakukan untuk memastikan bahwa input bukan kosong dan merupakan angka.

3. TextFormField untuk Deskripsi:

Deskripsi: TextFormField digunakan untuk mengambil input teks dari pengguna untuk deskripsi produk.
Alasan Penggunaan: Digunakan untuk mengumpulkan informasi tentang deskripsi produk. Validasi dilakukan untuk memastikan bahwa input tidak kosong.

##  Bagaimana penerapan clean architecture pada aplikasi Flutter?

Clean Architecture pada aplikasi Flutter melibatkan struktur proyek yang terorganisir dalam lapisan-lapisan terisolasi seperti Entities, Use Cases, Interface Adapters (Presenter, UI, dan Repository Interface), dan Frameworks/Drivers. Prinsip Dependency Rule diterapkan untuk memastikan bahwa lapisan inti tidak bergantung pada implementasi lapisan di bawahnya, dan Dependency Injection digunakan untuk menyediakan dependensi. Pola desain antarmuka pengguna seperti MVP atau MVVM dipilih untuk mendukung pemisahan tanggung jawab antara tampilan dan logika bisnis. Penggunaan unit testing dianjurkan untuk setiap lapisan guna memastikan kualitas dan kestabilan kode. Dengan struktur ini, Clean Architecture membantu menciptakan aplikasi Flutter yang bersih, terorganisir, dan mudah diuji


##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

pertama yang saya lakukan adalah membuat left drawer file dan mengisinya dengan widget, setelah itu saya berikan tombol homepage dan tambah barang yang akan memiliki routing ke form page dan home. kemudian saya menaruh drawer ke menu. kemudian saya membuat file formPage dan membuat variable untuk nanti ada di formpage yaitu nama deskripsi dan harga. kemudian membuat kolom untuk mengisi setiap datanya. kemudian menambahkan showdialog untuk menampilkan detail item setelah ditambahkan. kemudian saya buat variable globalist dan menyimpan barang yang dibuat. kemudian membuat file itemcard yang saya isi widget yang menampilkan item di dlam globalist