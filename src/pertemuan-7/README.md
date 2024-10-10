# Pemrograman Mobile - Pertemuan 5

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 7</th>
  </thead>
  <tbody>
    <tr>
      <td>NIM</td>
      <td>2241720005</td>
    </tr>
    <tr>
      <td>Nama</td>
      <td>Vunky Himawan</td>
    </tr>
</table>

# Tugas Praktikum

## 1. Praktikum Menerapkan Plugin di Project Flutter

### Langkah 1: Buat Project Baru

![Langkah 1](/docs/pertemuan-7/langkah-1.png)

### Langkah 2: Menambahkan Plugin

![Langkah 2](/docs/pertemuan-7/langkah-2.png)

### Langkah 3: Buat file red_text_widget.dart

![Langkah 3](/docs/pertemuan-7/langkah-3.png)

### Langkah 4: Tambah Widget AutoSizeText

![Langkah 4](/docs/pertemuan-7/langkah-4.png)

Error terjadi karena variabel text belum di definisikan

### Langkah 5: Buat Variabel text dan parameter di constructor

![Langkah 5](/docs/pertemuan-7/langkah-5.png)

### Langkah 6: Tambahkan widget di main.dart

![Langkah 6](/docs/pertemuan-7/langkah-6.png)

## 2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!

Pada langkah 2 dilakukan penambahan plugin ke flutter yaitu auti_size_text.

## 3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!

Pada langkah 5 dilakukan definisi variabel text dan parameter di constructor. Dimana kita harus menambahkan sebuah text / string ketika membuat object / widget RedTextWidget.

## 4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

Widget pertama yaitu sebuah `Container` yang memiliki background color bernilai `Colors.yellowAccent` dengan lebar 50px dan text berwarna merah karena menggunakan widget `RedTextWidget`.

Widget kedua yaitu sebuah `Container` yang memiliki background color bernilai `Colors.greenAccent` dengan lebar 100px dan text berwarna hitam karena tidak menggunakan widget `RedTextWidget`.

## 5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !

<table>
<thead>
  <th>Parameter</th>
  <th>Penjelasan</th>
</thead>
<tbody>
  <tr>
    <td><pre>key</pre></td>
    <td>Mengontrol bagaimana satu widget menggantikan widget lain.</td>
  </tr>
  <tr>
    <td><pre>textKey</pre></td>
    <td>Mengatur kunci untuk widget Teks yang dihasilkan</td>
  </tr>
  <tr>
    <td><pre>style</pre></td>
    <td>Membuat custom style untuk widget</td>
  </tr>
  <tr>
    <td><pre>minFontSize</pre></td>
    <td>Menentukan ukuran font terkecil yang dapat digunakan.</td>
  </tr>
  <tr>
    <td><pre>maxFontSize</pre></td>
    <td>Menentukan ukuran font terbesar yang dapat digunakan</td>
  </tr>
  <tr>
    <td><pre>stepGranularity</pre></td>
    <td>Menentukan langkah penyesuaian ukuran font. Misalnya, jika nilai diatur ke 1, ukuran font akan disesuaikan dalam langkah satu poin</td>
  </tr>
  <tr>
    <td><pre>presetFontSizes</pre></td>
    <td>Menentukan semua ukuran font yang memungkinkan.
<strong>Important:</strong> <pre>presetFontSizes</pre> harus dalam urutan menurun atau descending.</td>
  </tr>
  <tr>
    <td><pre>group</pre></td>
    <td>Parameter ini digunakan untuk mengelompokkan beberapa widget teks</td>
  </tr>
  <tr>
    <td><pre>textAlign</pre></td>
    <td>Mengatur test alignment</td>
  </tr>
  <tr>
    <td><pre>textDirection</pre></td>
    <td>Menentukan arah dimana teks mulai ditampilkan</td>
  </tr>
  <tr>
    <td><pre>locale</pre></td>
    <td>Digunakan untuk memilih font ketika karakter Unicode yang sama dapat dirender secara berbeda, tergantung pada lokasi.</td>
  </tr>
  <tr>
    <td><pre>softWrap</pre></td>
    <td>Digunakan untuk mengatur cara teks ditampilkan ketika tidak ada cukup ruang dalam satu baris. Jika softWrap diatur ke true, teks akan terputus secara otomatis ke baris baru di titik yang tepat, tanpa memotong kata atau frasa.</td>
  </tr>
  <tr>
    <td><pre>wrapWords</pre></td>
    <td>Apakah kata-kata yang tidak muat dalam satu baris harus dibungkus.</td>
  </tr>
  <tr>
    <td><pre>overflow</pre></td>
    <td>Digunakan untuk menghandle apabila terjadi overflow</td>
  </tr>
  <tr>
    <td><pre>overflowReplacement</pre></td>
    <td>Digunakan untuk mengganti text yang terjadi overflow dengan karakter lain / simbol lain.</td>
  </tr>
  <tr>
    <td><pre>textScaleFactor</pre></td>
    <td>Digunakan untuk mengatur skala ukuran font dalam aplikasi, sehingga dapat disesuaikan dengan preferensi pengguna atau kondisi tampilan</td>
  </tr>
  <tr>
    <td><pre>maxLines</pre></td>
    <td>Jumlah baris maksimum opsional untuk rentang teks.</td>
  </tr>
  <tr>
    <td><pre>semanticsLabel</pre></td>
    <td>Label semantik alternatif untuk teks</td>
  </tr>
</tbody>
</table>
