# Pemrograman Mobile - Pertemuan 13

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 13</th>
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

# Praktikum 1: Dart Streams

### Langkah 1: Buat Project Baru

![Langkah 1](/docs/pertemuan-13/praktikum-1/langkah-1.png)

### Langkah 2: Buka file main.dart

![Langkah 2](/docs/pertemuan-13/praktikum-1/langkah-2.png)

### Langkah 3: Buat file baru stream.dart

![Langkah 3](/docs/pertemuan-13/praktikum-1/langkah-3.png)

### Langkah 4: Tambah variabel colors

![Langkah 4](/docs/pertemuan-13/praktikum-1/langkah-4.png)

### Langkah 5: Tambah method getColors()

![Langkah 5](/docs/pertemuan-13/praktikum-1/langkah-5.png)

### Langkah 6: Tambah perintah yield*

![Langkah 6](/docs/pertemuan-13/praktikum-1/langkah-6.png)

### Langkah 7: Buka main.dart

![Langkah 7](/docs/pertemuan-13/praktikum-1/langkah-7.png)

### Langkah 8: Tambah variabel

![Langkah 8](/docs/pertemuan-13/praktikum-1/langkah-8.png)

### Langkah 9: Tambah method changeColor()

![Langkah 9](/docs/pertemuan-13/praktikum-1/langkah-9.png)

### Langkah 10: Lakukan override initState()

![Langkah 10](/docs/pertemuan-13/praktikum-1/langkah-10.png)

### Langkah 11: Ubah isi Scaffold()

![Langkah 11](/docs/pertemuan-13/praktikum-1/langkah-11.png)

### Langkah 12: Run

![Langkah 12](/docs/pertemuan-13/praktikum-1/langkah-12.png)

### Langkah 13: Ganti isi method changeColor()

![Langkah 13](/docs/pertemuan-13/praktikum-1/langkah-13.png)

## Soal 1

![Soal 1](/docs/pertemuan-13/praktikum-1/soal-1.png)

## Soal 2

![Soal 2](/docs/pertemuan-13/praktikum-1/soal-2.png)

## Soal 3

`yield*` merupakan cara metode menggabungkan `stream` lain ke dalam `stream` yang sedang kita buat, dimana semua nilai dari `stream` yang lain akan langsung diteruskan ke `stream` utama.

Menggunakan `yield*` berarti kita tidak perlu memproses setiap nilai yang dihasilkan oleh `Stream.periodic` secara manual. Semua nilai yang dihasilkan oleh `Stream.periodic` langsung diteruskan ke aliran (stream) `getColors`. Hasilnya adalah warna (dari daftar colors) yang terus-menerus mengalir setiap detik. 

## Soal 4

![Soal 4](/docs/pertemuan-13/praktikum-1/soal-4.gif)

## Soal 5

```dart
void changeColor() async {
    colorStream.getColors().listen(
      (eventColor) {
        setState(
          () {
            bgColor = eventColor;
          },
        );
      },
    );
  }
```

**listen**

`listen` merupakan sebuah method `stream` yang memungkinkan kita "mendengarkan" setiap data baru yang masuk. Dengan menggunakan `listen` kita bisa memberikan method `(callback)` ke `listen`, yang akan dipanggil setiap kali ada data baru pada stream.

Manfaat dari `listen` adalah:
- Tidak menghentikan kode lainnya (berjalan secara paralel/asinkron). Langsung bereaksi setiap kali data diterima.
- Tidak menunggu sampai semua data selesai diterima. Kita hanya terus mendengarkan aliran data.

**await for**

```dart
void changeColor() async {
    await for (var eventColor in colorStream.getColors()) {
      setState(
        () {
          bgColor = eventColor;
        },
      );
    }
  }
```

`await for` adalah cara `asinkron` untuk menunggu setiap data baru pada `stream`, satu per satu. Dimana ketika ada data baru, `await for` berhenti sementara untuk memproses data tersebut sebelum lanjut ke data berikutnya. Dimana prosesnya yaitu menunggu data baru dari `stream`. Lalu menjalankan blok kode di dalam `await for`. Diulangi untuk data berikutnya hingga `stream` selesai.