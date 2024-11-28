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

### Langkah 6: Tambah perintah yield\*

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

# Praktikum 5: Multiple stream subscriptions

### Langkah 1: Buka file main.dart

![Langkah 1](/docs/pertemuan-13/praktikum-5/langkah-1.png)

### Langkah 2: Edit initState()

![Langkah 2](/docs/pertemuan-13/praktikum-5/langkah-2.png)

### Langkah 3: Run

![Langkah 3](/docs/pertemuan-13/praktikum-5/langkah-3.png)

### Langkah 4: Set broadcast stream

![Langkah 4](/docs/pertemuan-13/praktikum-5/langkah-4.png)

### Langkah 5: Edit method build()

![Langkah 5](/docs/pertemuan-13/praktikum-5/langkah-5.png)

### Langkah 6: Run

![Langkah 6](/docs/pertemuan-13/praktikum-5/langkah-6.png)

## Soal 10

![Soal 10](/docs/pertemuan-13/praktikum-5/langkah-3.png)

Error tersebut terjadi karena aliran `Stream` yang digunakan bersifat single-subscription, yang berarti hanya dapat didengarkan listen oleh satu subscriber pada satu waktu.

## Soal 11

![Soal 11](/docs/pertemuan-13/praktikum-5/soal-11.gif)

Ketika kita menggunakan `asBroadcastStream()` untuk mengubah stream menjadi broadcast stream, setiap listener yang subscribe akan menerima semua data dari stream. Dengan kata lain, kedua listener akan menerima event yang sama.

# Praktikum 6: StreamBuilder

### Langkah 1: Buat Project Baru

![Langkah 1](/docs/pertemuan-13/praktikum-6/langkah-1.png)

### Langkah 2: Buat file baru stream.dart

![Langkah 2](/docs/pertemuan-13/praktikum-6/langkah-2.png)

### Langkah 3: Tetap di file stream.dart

![Langkah 3](/docs/pertemuan-13/praktikum-6/langkah-3.png)

### Langkah 4: Edit main.dart

![Langkah 4](/docs/pertemuan-13/praktikum-6/langkah-4.png)

### Langkah 5: Tambah variabel

![Langkah 5](/docs/pertemuan-13/praktikum-6/langkah-5.png)

### Langkah 6: Edit initState()

![Langkah 6](/docs/pertemuan-13/praktikum-6/langkah-6.png)

### Langkah 7: Edit method build()

![Langkah 7](/docs/pertemuan-13/praktikum-6/langkah-7.png)

### Langkah 8: Run

![Langkah 8](/docs/pertemuan-13/praktikum-6/langkah-8.png)

## Soal 12

![Soal 12](/docs/pertemuan-13/praktikum-6/soal-12.gif)

Langkah 3

```dart
import 'dart:math';

class NumberStream {
  Stream<int> getNumbers() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      Random random = Random();
      int myNum = random.nextInt(10);
      return myNum;
    });
  }
}
```

Pada fungsi `getNumbers()` menggunakan `Stream.periodic` dimana fungsi ini menghasilkan data secara berkala, dalam praktikum ini setiap 1 detik. Pada setiap periode, fungsi memanggil logika berikut:

- Membuat sebuah objek random menggunakan `Random()`.
- Menghasilkan angka acak antara 0 hingga 9 menggunakan `random.nextInt(10)`.
- Mengembalikan angka tersebut sebagai bagian dari aliran data (stream).

`yield*` digunakan untuk "mengalirkan" data dari `Stream.periodic` ke komponen lain yang akan membaca data tersebut.

Langkah 7

```dart
body: StreamBuilder(
        stream: numberStream,
        initialData: 0,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("error");
          }
          if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 96),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
```

`StreamBuilder` merupakan komponen Flutter yang digunakan untuk "mendengarkan" aliran data (stream) dan memperbarui tampilan secara otomatis setiap kali ada data baru yang dihasilkan. Pada `StreamBuilder` terdapat tiga parameter yaitu

1. `stream`: Menghubungkan aliran data pada praktikum ini menggunakan `NumberStream`.
2. `initialData`: Memberikan nilai awal yang akan ditampilkan sebelum stream menghasilkan data, yaitu pada praktikum ini diberikan angka 0.
3. `builder` Fungsi ini dipanggil setiap kali ada data baru dalam aliran. pada fungsi ini terdapat dua parameter yaitu `context` dan `snapshot`, dimana snapsot merupakan objek yang berisi data terbaru dari stream. Pada praktikum ini terdapat tiga kemungkinan data yang bisa didapatkan dari snapshot:

- Jika ada error, menampilkan pesan error (di sini hanya mencetak ke konsol).
- Jika ada data (snapshot.hasData), menampilkan angka terbaru di tengah layar dengan ukuran teks yang besar (fontSize: 96).
- Jika tidak ada data, tidak menampilkan apa-apa (SizedBox.shrink).

# Praktikum 7: BLoC Pattern

### Langkah 1: Buat Project baru

![Langkah 1](/docs/pertemuan-13/praktikum-7/langkah-1.png)

![Langkah 1.2](/docs/pertemuan-13/praktikum-7/langkah-1.2.png)

### Langkah 2: Isi kode random_bloc.dart

![Langkah 2](/docs/pertemuan-13/praktikum-7/langkah-2.png)

### Langkah 3: Buat class RandomNumberBloc()

![Langkah 3](/docs/pertemuan-13/praktikum-7/langkah-3.png)

### Langkah 4: Buat variabel StreamController

![Langkah 4](/docs/pertemuan-13/praktikum-7/langkah-4.png)

### Langkah 5: Buat constructor

![Langkah 5](/docs/pertemuan-13/praktikum-7/langkah-5.png)

### Langkah 6: Buat method dispose()

![Langkah 6](/docs/pertemuan-13/praktikum-7/langkah-6.png)

### Langkah 7: Edit main.dart

![Langkah 7](/docs/pertemuan-13/praktikum-7/langkah-7.png)

### Langkah 8: Buat file baru random_screen.dart

![Langkah 8](/docs/pertemuan-13/praktikum-7/langkah-8.png)

### Langkah 9: Lakukan impor material dan random_bloc.dart

![Langkah 9](/docs/pertemuan-13/praktikum-7/langkah-9.png)

### Langkah 10: Buat StatefulWidget RandomScreen

![Langkah 10](/docs/pertemuan-13/praktikum-7/langkah-10.png)

### Langkah 11: Buat variabel

![Langkah 11](/docs/pertemuan-13/praktikum-7/langkah-11.png)

### Langkah 12: Buat method dispose()

![Langkah 12](/docs/pertemuan-13/praktikum-7/langkah-12.png)

### Langkah 13: Edit method build()

![Langkah 13](/docs/pertemuan-13/praktikum-7/langkah-13.png)

## Soal 13

![Soal 13](/docs/pertemuan-13/praktikum-7/soal-13.gif)

Praktikum ini bertujuan untuk mengimplementasikan pola arsitektur BLoC (Business Logic Component) dalam Flutter untuk memisahkan logika bisnis dari tampilan UI. Dengan cara ini, aplikasi menjadi lebih modular, dapat diuji dengan lebih mudah, dan mudah untuk dikembangkan.

Dimana BLoC diterapkan pada praktikum ini:

- Logika bisnis ada di class RandomNumberBloc, yang bertugas menerima event, memproses data (angka acak), dan mengalirkan state ke UI.
- UI hanya mendengarkan perubahan state dari stream (StreamBuilder) dan memperbarui tampilan secara otomatis, tanpa perlu mengetahui detail logika bisnis.
