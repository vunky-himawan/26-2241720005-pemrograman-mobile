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

# Praktikum 2: Stream controllers dan sinks

### Langkah 1: Buka file stream.dart

![Langkah 1](/docs/pertemuan-13/praktikum-2/langkah-1.png)

### Langkah 2: Tambah class NumberStream

![Langkah 2](/docs/pertemuan-13/praktikum-2/langkah-2.png)

### Langkah 3: Tambah StreamController

![Langkah 3](/docs/pertemuan-13/praktikum-2/langkah-3.png)

### Langkah 4: Tambah method addNumberToSink

![Langkah 4](/docs/pertemuan-13/praktikum-2/langkah-4.png)

### Langkah 5: Tambah method close()

![Langkah 5](/docs/pertemuan-13/praktikum-2/langkah-5.png)

### Langkah 6: Buka main.dart

![Langkah 6](/docs/pertemuan-13/praktikum-2/langkah-6.png)

### Langkah 7: Tambah variabel

![Langkah 7](/docs/pertemuan-13/praktikum-2/langkah-7.png)

### Langkah 8: Edit initState()

![Langkah 8](/docs/pertemuan-13/praktikum-2/langkah-8.png)

### Langkah 9: Edit dispose()

![Langkah 9](/docs/pertemuan-13/praktikum-2/langkah-9.png)

### Langkah 10: Tambah method addRandomNumber()

![Langkah 10](/docs/pertemuan-13/praktikum-2/langkah-10.png)

### Langkah 11: Edit method build()

![Langkah 11](/docs/pertemuan-13/praktikum-2/langkah-11.png)

### Langkah 12: Run

![Langkah 12](/docs/pertemuan-13/praktikum-2/langkah-12.png)

## Soal 6

![Soal 6](/docs/pertemuan-13/praktikum-2/soal-6.gif)

Langkah 8

```dart
@override
  void initState() {
    super.initState();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen(
      (event) {
        setState(
          () {
            lastNumber = event;
          },
        );
      },
    );
  }
```

Langkah 10

```dart
void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumber(myNum);
  }
```

Ketika aplikasi mulai dijalankan `initState` membuat stream mengambil controllernya, dan mulai mendengarkan data baru. Kemudian UI disiapkan untuk menampilkan data dari `lastNumber`.

Ketika fungsi `addRandomNumber` dipanggil angka acak dihasilkan dan ditambahkan ke `stream` melalui `numberStream.addNumber`. Stream menghasilkan sebuah event, sehingga listener `(stream.listen)` menerima angka baru.

Listener menjalankan `setState` untuk memperbarui `lastNumber` dengan angka baru. Flutter kemudian memperbarui UI untuk menampilkan angka tersebut.

## Soal 7

Langkah 13

```dart
addError() {
    controller.sink.addError('error');
  }
```

Langkah 14

```dart
@override
  void initState() {
    super.initState();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = 0;
      });
    });
  }
```

Langkah 15

```dart
void addRandomNumber() {
    Random random = Random();
    // int myNum = random.nextInt(10);
    // numberStream.addNumber(myNum);
    numberStream.addError();
  }
```

Ketika aplikasi mulai dijalankan `initState` membuat stream dan mendengarkannya. Kemudian listener siap mengolah data biasa atau error.

Ketika `addRandomNumber` dijalankan fungsi ini mengirimkan error ke stream dengan `numberStream.addError()`.

Listener pada Stream, `callback` data biasa tidak dipanggil karena yang dikirim adalah error. Callback error (onError) dipanggil, dan UI diperbarui dengan `lastNumber = 0`.

# Praktikum 3: Injeksi data ke streams

### Langkah 1: Buka main.dart

![Langkah 1](/docs/pertemuan-13/praktikum-3/langkah-1.png)

### Langkah 2: Tambahkan kode ini di initState

![Langkah 2](/docs/pertemuan-13/praktikum-3/langkah-2.png)

### Langkah 3: Tetap di initState

![Langkah 3](/docs/pertemuan-13/praktikum-3/langkah-3.png)

### Langkah 4: Run

![Langkah 4](/docs/pertemuan-13/praktikum-3/langkah-4.png)

## Soal 8

![Soal 8](/docs/pertemuan-13/praktikum-3/soal-8.gif)

Pertama saat aplikasi mulai dijalankan `initState` menginisialisasi stream dan transformer. Stream dihubungkan ke transformer, sehingga semua data dan error yang masuk diproses terlebih dahulu.

Ketika data dikirim ke `Stream`, jika datanya bukan error / data biasa maka data akan dimodifikasi oleh transformer untuk dikalikan 10, Kemudian listener menerima data hasil transformasi dan memperbarui UI. Jika datanya merupakan error, transformer akan mengubah error menjadi nilai -1, lalu listener menerima nilai -1 sebagai data biasa.

# Praktikum 4: Subscribe ke stream events

### Langkah 1: Tambah variabel

![Langkah 1](/docs/pertemuan-13/praktikum-4/langkah-1.png)

### Langkah 2: Edit initState()

![Langkah 2](/docs/pertemuan-13/praktikum-4/langkah-2.png)

### Langkah 3: Tetap di initState()

![Langkah 3](/docs/pertemuan-13/praktikum-4/langkah-3.png)

### Langkah 4: Tambah properti onDone()

![Langkah 4](/docs/pertemuan-13/praktikum-4/langkah-4.png)

### Langkah 5: Tambah method baru

![Langkah 5](/docs/pertemuan-13/praktikum-4/langkah-5.png)

### Langkah 6: Pindah ke method dispose()

![Langkah 6](/docs/pertemuan-13/praktikum-4/langkah-6.png)

### Langkah 7: Pindah ke method build()

![Langkah 7](/docs/pertemuan-13/praktikum-4/langkah-7.png)

### Langkah 8: Edit method addRandomNumber()

![Langkah 8](/docs/pertemuan-13/praktikum-4/langkah-8.png)

### Langkah 9: Run

![Langkah 9](/docs/pertemuan-13/praktikum-4/langkah-9.png)

### Langkah 10: Tekan button ‘Stop Subscription'

![Langkah 10](/docs/pertemuan-13/praktikum-4/langkah-10.png)

## Soal 9

![Soal 9](/docs/pertemuan-13/praktikum-4/soal-9.gif)

Ketika aplikasi mulai dijalankan `initState` membuat stream dan listener. Listener akan memperbarui nilai `lastNumber` setiap kali ada data baru di stream.

Ketika angka random ditambahkan `addRandomNumber` menambahkan angka ke stream jika controller belum ditutup. Jika controller sudah ditutup, lastNumber diperbarui menjadi -1. 

Terakhir ketika `dispose` dipanggil untuk membatalkan langganan, ini digunakan untuk mencegah aplikasi mendengarkan stream yang tidak diperlukan lagi.