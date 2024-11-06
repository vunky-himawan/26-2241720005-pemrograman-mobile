# Pemrograman Mobile - Pertemuan 10

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

# Tugas Praktikum 1

## Praktikum 1: Mengambil Foto dengan Kamera di Flutter

### Langkah 1: Buat Project Baru

![Langkah 1](/docs/pertemuan-10/praktikum-1/langkah-1.png)

### Langkah 2: Tambah dependensi yang diperlukan

![Langkah 2](/docs/pertemuan-10/praktikum-1/langkah-2.png)

### Langkah 3: Ambil Sensor Kamera dari device

![Langkah 3](/docs/pertemuan-10/praktikum-1/langkah-3.png)

![Langkah 3 Result](/docs/pertemuan-10/praktikum-1/langkah-3.result.png)

### Langkah 4: Buat dan inisialisasi CameraController

![Langkah 4](/docs/pertemuan-10/praktikum-1/langkah-4.png)

### Langkah 5: Gunakan CameraPreview untuk menampilkan preview foto

![Langkah 5](/docs/pertemuan-10/praktikum-1/langkah-5.png)

### Langkah 6: Ambil foto dengan CameraController

![Langkah 6](/docs/pertemuan-10/praktikum-1/langkah-6.png)

### Langkah 7: Buat widget baru DisplayPictureScreen

![Langkah 7](/docs/pertemuan-10/praktikum-1/langkah-7.png)

### Langkah 8: Edit main.dart

![Langkah 8](/docs/pertemuan-10/praktikum-1/langkah-8.png)

![Langkah 8 Result](/docs/pertemuan-10/praktikum-1/langkah-8.result.png)

### Langkah 9: Menampilkan hasil foto

![Langkah 9](/docs/pertemuan-10/praktikum-1/langkah-9.png)

### Result

![Result](/docs/pertemuan-10/praktikum-1/result.gif)

## Praktikum 2: Membuat photo filter carousel

### Langkah 1: Buat project baru

![Langkah 1](/docs/pertemuan-10/praktikum-2/langkah-1.png)

### Langkah 2: Buat widget Selector ring dan dark gradient

![Langkah 2](/docs/pertemuan-10/praktikum-2/langkah-2.png)

### Langkah 3: Buat widget photo filter carousel

![Langkah 3](/docs/pertemuan-10/praktikum-2/langkah-3.png)

### Langkah 4: Membuat filter warna - bagian 1

![Langkah 4](/docs/pertemuan-10/praktikum-2/langkah-4.png)

### Langkah 5: Membuat filter warna - bagian 2

![Langkah 5](/docs/pertemuan-10/praktikum-2/langkah-5.png)

### Langkah 6: Implementasi filter carousel

![Langkah 6](/docs/pertemuan-10/praktikum-2/langkah-6.png)

### Result

![Result](/docs/pertemuan-10/praktikum-2/result.png)

![Result](/docs/pertemuan-10/praktikum-2/result.gif)

# Tugas Praktikum 2

### Membuat widget untuk menampilkan kamera

![Langkah 1](/docs/pertemuan-10/tugas/langkah-1.png)

### Membuat widget untuk menampilkan foto dan filter

![Langkah 2](/docs/pertemuan-10/tugas/langkah-2.png)

### Membuat widget untuk memilih filter

![Langkah 3](/docs/pertemuan-10/tugas/langkah-3.png)

### Membuat widget carousel untuk filter

![Langkah 4](/docs/pertemuan-10/tugas/langkah-4.png)

### Membuat widget untuk filter warna

![Langkah 5](/docs/pertemuan-10/tugas/langkah-5.png)

### Result

![Result](/docs/pertemuan-10/tugas/result-1.png)

![Result](/docs/pertemuan-10/tugas/result-2.png)

![Result](/docs/pertemuan-10/tugas/result.gif)

# Tugas Praktikum 3

### Jelaskan maksud void async pada praktikum 1?

```void async``` Memungkinkan penggunaan ```await``` di dalam fungsi, jadi fungsi bisa menunggu proses asynchronous selesai sebelum lanjut. Fungsi ini biasanya dipakai untuk operasi yang butuh waktu, seperti mengambil data dari API atau operasi I/O.

# Tugas Praktikum 4

### Jelaskan fungsi dari anotasi @immutable dan @override ?

```@immutable```:
- Digunakan untuk membuat kelas tidak dapat diubah (immutable).
- Ketika kelas diberi anotasi ini, semua field di dalamnya harus bersifat final, artinya nilainya tidak bisa diubah setelah inisialisasi.
- Biasanya dipakai dalam pengembangan Flutter pada widget atau state agar data tidak berubah, yang membantu menjaga konsistensi UI.

```@override```:
- Dipakai untuk menandakan bahwa sebuah metode di dalam kelas menimpa (override) metode dari superclass atau antarmuka (interface) yang diimplementasi.
- Membantu agar kode lebih jelas dan menghindari kesalahan saat ingin menimpa metode.
- Jika metode di superclass berubah atau dihapus, anotasi ini bisa membantu mendeteksi masalah tersebut lebih awal saat compile.