# item_inventory

## Tugas 7

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