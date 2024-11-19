# Pemrograman Mobile - Pertemuan 12

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 12</th>
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

# Praktikum 1: Mengunduh Data dari Web Service (API)

### Langkah 1: Buat Project Baru

![Langkah 1](/docs/pertemuan-12/praktikum-1/langkah-1.png)

### Langkah 2: Cek file pubspec.yaml

![Langkah 2](/docs/pertemuan-12/praktikum-1/langkah-2.png)

### Langkah 3: Buka file main.dart

![Langkah 3](/docs/pertemuan-12/praktikum-1/langkah-3.1.png)

![Langkah 3](/docs/pertemuan-12/praktikum-1/langkah-3.2.png)

![Langkah 3](/docs/pertemuan-12/praktikum-1/langkah-3.3.png)

### Langkah 4: Tambah method getData()

![Langkah 4](/docs/pertemuan-12/praktikum-1/langkah-4.png)

### Langkah 5: Tambah kode di ElevatedButton

![Langkah 5](/docs/pertemuan-12/praktikum-1/langkah-5.png)

## Soal 1. Mengubah `title` menjadi nama panggilan

![Soal 1](/docs/pertemuan-12/praktikum-1/soal-1.png)

## Soal 2. Mencari buku favorit dan mengakses API www.googleapis.com

![Soal 2](/docs/pertemuan-12/praktikum-1/soal-2.1.png)

![Soal 2](/docs/pertemuan-12/praktikum-1/soal-2.2.png)

Ketika mencoba mengakses API, muncul error rate limit.

## Soal 3. `substring` dan `catchError`

`substring` digunakan untuk mengambil beberapa karakter dari string misal 0, 450 artinya mengambil string yang dimulai dari karakter pertama hingga 450 karakter, dan `catchError` digunakan untuk menangani error yang terjadi pada kode yang dijalankan.

![Result](/docs/pertemuan-12/praktikum-1/soal-3.gif)

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### Langkah 1: Buka file main.dart

![Langkah 1](/docs/pertemuan-12/praktikum-2/langkah-1.png)

### Langkah 2: Tambah method count()

![Langkah 2](/docs/pertemuan-12/praktikum-2/langkah-2.png)

### Langkah 3: Panggil count()

![Langkah 3](/docs/pertemuan-12/praktikum-2/langkah-3.png)

### Langkah 4: Run

![Langkah 4](/docs/pertemuan-12/praktikum-2/langkah-4.png)

## Soal 4

```Dart
Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }
```

Fungsi ini menunggu selama 3 detik dan kemudian mengembalikan nilai 1.

```Dart
Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }
```

Fungsi ini menunggu selama 3 detik dan kemudian mengembalikan nilai 2.

```Dart
Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }
```

Fungsi ini menunggu selama 3 detik dan kemudian mengembalikan nilai 3.

```Dart
Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }
```

Pada fungsi count menjalankan 3 fungsi:

- Fungsi `returnOneAsync` dipanggil, dan karena fungsi ini diberikan delay selama 3 detik, maka akan menunggu sampai 3 detik sebelum mendapatkan nilai 1 kemudian nilai 1 disimpan dalam variabel total.

- Fungsi `returnTwoAsync` dipanggil setelah fungsi pertama selesai. Kemudian menunggu lagi selama 3 detik untuk mendapatkan nilai 2. Nilai 2 akan ditambahkan ke total, sehingga total menjadi 3 (1 + 2).

- Fungsi `returnThreeAsync` dipanggil setelah fungsi kedua selesai. Kemudian akan menunggu lagi selama 3 detik untuk mendapatkan nilai 3. Nilai 3 akan ditambahkan ke total, sehingga total sekarang menjadi 6 (1 + 2 + 3).

Setelah semua fungsi dijalankan dan total telah dihitung, fungsi setState digunakan untuk memperbarui antarmuka pengguna (UI).

# Praktikum 3: Menggunakan Completer di Future

### Langkah 1: Buka main.dart

![Langkah 1](/docs/pertemuan-12/praktikum-3/langkah-1.png)

### Langkah 2: Tambahkan variabel dan method

![Langkah 2](/docs/pertemuan-12/praktikum-3/langkah-2.png)

### Langkah 3: Ganti isi kode onPressed()

![Langkah 3](/docs/pertemuan-12/praktikum-3/langkah-3.png)

### Langkah 4:

![Langkah 4](/docs/pertemuan-12/praktikum-3/langkah-4.png)

### Langkah 5: Ganti method calculate()

![Langkah 5](/docs/pertemuan-12/praktikum-3/langkah-5.png)

### Langkah 6: Pindah ke onPressed()

![Langkah 6](/docs/pertemuan-12/praktikum-3/langkah-6.png)

## Soal 5

```Dart
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```

- `Completer` adalah sebuah objek yang membantu dalam menangani hasil dari operasi asynchronous yang akan selesai nantinya.

- Fungsi `getNumber` membuat sebuah Completer baru bernama completer, kemudian menjalankan fungsi `calculate`. Fungsi `getNumber` ini mengembalikan `completer.future`, yang merupakan sebuah `promise` atau `future`.

- Fungsi `calculate` fungsi ini akan memberikan delay selama 5 detik, setelah itu fungsi ini menyelesaikan `completer` dengan nilai 42 menggunakan `completer.complete(42)`.

Jadi ketika `getNumber` dipanggil, sebuah `Completer` baru dibuat yang nantinya akan memberikan hasil. Kemudian fungsi `calculate` dipanggil dan harus menunggu selama 5 detik untuk mendapatkan hasil. Setelah 5 detik, `completer.complete(42)` dijalankan untuk memberikan nilai 42 sebagai hasil. `getNumber` mengembalikan `completer.future` yang merupakan sebuah `promise`, ketika `completer.complete(42)` dipanggil, `promise` tersebut diselesaikan dengan nilai 42.

![Result GIF](/docs/pertemuan-12/praktikum-3/soal-5.gif)

## Soal 6

Kode pada langkah 2 dan 5-6 tidak jauh berbeda, hanya saja pada langkah 5 ditambahkan block `try/catch` untuk menangani error. Fungsi `calculate2` menggunakan `try/catch` untuk menangani error, jika error terjadi maka fungsi `completer.completeError({})` dipanggil untuk memberikan error sebagai hasil. Lalu pada langkah 6 terdapat `catchError` yang akan mengembalikan error yang terjadi ketika `promise` dibuat.

![Result GIF](/docs/pertemuan-12/praktikum-3/soal-6.gif)

# Praktikum 4: Memanggil Future secara paralel

### Langkah 1: Buka file main.dart

![Langkah 1](/docs/pertemuan-12/praktikum-4/langkah-1.png)

### Langkah 2: Edit onPressed()

![Langkah 2](/docs/pertemuan-12/praktikum-4/langkah-2.png)

### Langkah 3: Run

![Langkah 3](/docs/pertemuan-12/praktikum-4/langkah-3.png)

### Langkah 4: Ganti variabel futureGroup

![Langkah 4](/docs/pertemuan-12/praktikum-4/langkah-4.png)

## Soal 7

![Soal 7](/docs/pertemuan-12/praktikum-4/soal-7.gif)

## Soal 8

**Kode langkah 1 menggunakan `FutureGroup`:**

Pada langkah 1 merupakan cara manual untuk melakukan grouping future/ Jadi kita harus memanggil add untuk setiap future secara eksplisit, dan kemudian "menutup" future group dengan `close()`, dimana function `close()` menandakan bahwa tidak ada future lain yang akan ditambahkan ke future group.

**Kode langkah 4 menggunakan `Future.wait`:**

Pada langkah 4 ini langsung memberikan semua future ke dalam sebuah list, dan sistem otomatis menunggu hingga semua future selesai. Tidak perlu menambahkan atau menutup group secara manual.

# Praktikum 5: Menangani Respon Error pada Async Code

### Langkah 1: Buka file main.dart

![Langkah 1](/docs/pertemuan-12/praktikum-5/langkah-1.png)

### Langkah 2: ElevatedButton

![Langkah 2](/docs/pertemuan-12/praktikum-5/langkah-2.png)

### Langkah 3: Run

![Langkah 3](/docs/pertemuan-12/praktikum-5/langkah-3.1.png)

![Langkah 3](/docs/pertemuan-12/praktikum-5/langkah-3.2.png)

### Langkah 4: Tambah method handleError()

![Langkah 4](/docs/pertemuan-12/praktikum-5/langkah-4.png)

## Soal 9

![Soal 9](/docs/pertemuan-12/praktikum-5/soal-9.gif)

## Soal 10

![handleError](/docs/pertemuan-12/praktikum-5/soal-10.1.png)

Kode pada langkah 1 menggunakan pendekatan chaining, pada kode tersebut menggunakan `then` untuk menangani hasil sukses dari `returnError` (pada contoh ini, `returnError` akan selalu gagal).
Menggunakan `catchError` untuk menangani error yang terjadi.
`whenComplete` digunakan untuk kode yang akan dijalankan selalu, baik ada error maupun tidak.

Sedangkan kode pada langkah 2 menggunakan `try-catch` untuk membungkus pemanggilan function `returnError`

- try: Menjalankan kode utama.
- catch: Menangkap dan menangani error jika terjadi.
- finally digunakan untuk menjalankan kode yang selalu dijalankan.

**Hasil**

![Result](/docs/pertemuan-12/praktikum-5/soal-10.2.png)

# Praktikum 6: Menggunakan Future dengan StatefulWidget

### Langkah 1: install plugin geolocator

![Langkah 1](/docs/pertemuan-12/praktikum-6/langkah-1.png)

### Langkah 2: Tambah permission GPS

![Langkah 2](/docs/pertemuan-12/praktikum-6/langkah-2.png)

### Langkah 3: Buat file geolocation.dart

![Langkah 3](/docs/pertemuan-12/praktikum-6/langkah-3.png)

### Langkah 4: Buat StatefulWidget

![Langkah 4](/docs/pertemuan-12/praktikum-6/langkah-4.png)

### Langkah 5: Isi kode geolocation.dart

![Langkah 5](/docs/pertemuan-12/praktikum-6/langkah-5.png)

### Langkah 6: Edit main.dart

![Langkah 6](/docs/pertemuan-12/praktikum-6/langkah-6.png)

### Langkah 7: Run

![Langkah 7](/docs/pertemuan-12/praktikum-6/langkah-7.png)

### Langkah 8: Tambahkan animasi loading

![Langkah 8](/docs/pertemuan-12/praktikum-6/langkah-8.png)

## Soal 11

![Soal 11](/docs/pertemuan-12/praktikum-6/soal-11.png)

## Soal 12

- Menambahkan `Future.delayed` untuk menampilkan loading

![Soal 12](/docs/pertemuan-12/praktikum-6/soal-12.1.png)

- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

Saya mendapatkan koordinat GPS ketika run di browser karena sudah memberikan permission pada browser untuk mengakses lokasi.

![Soal 12](/docs/pertemuan-12/praktikum-6/langkah-12.3.png)

![Soal 12](/docs/pertemuan-12/praktikum-6/langkah-12.5.png)

![Soal 12](/docs/pertemuan-12/praktikum-6/langkah-12.4.png)

**Result**

![Result](/docs/pertemuan-12/praktikum-6/soal-12.2.gif)

# Praktikum 7: Manajemen Future dengan FutureBuilder

### Langkah 1: Modifikasi method getPosition()

![Langkah 1](/docs/pertemuan-12/praktikum-7/langkah-1.png)

### Langkah 2: Tambah variabel

![Langkah 2](/docs/pertemuan-12/praktikum-7/langkah-2.png)

### Langkah 3: Tambah initState()

![Langkah 3](/docs/pertemuan-12/praktikum-7/langkah-3.png)

### Langkah 4: Edit method build()

![Langkah 4](/docs/pertemuan-12/praktikum-7/langkah-4.png)

### Langkah 5: Tambah handling error

![Langkah 5](/docs/pertemuan-12/praktikum-7/langkah-5.png)

## Soal 13

![Soal 13](/docs/pertemuan-12/praktikum-7/soal-13.gif)

Tidak ada perubahan pada UI, karena pada dasarnya yang dirubah adalah penulisan kode untuk mendapatkan data lokasi saja (tidak merubah UI sepenuhnya).

## Soal 14

![Soal 14](/docs/pertemuan-12/praktikum-7/soal-14.gif)

Tidak ada perubahan pada UI, karena pada dasarnya yang dirubah adalah penulisan kode untuk mendapatkan data lokasi saja (tidak merubah UI sepenuhnya).

# Praktikum 8: Navigation route dengan Future Function

### Langkah 1: Buat file baru navigation_first.dart

![Langkah 1](/docs/pertemuan-12/praktikum-8/langkah-1.png)

### Langkah 2: Isi kode navigation_first.dart

![Langkah 2](/docs/pertemuan-12/praktikum-8/langkah-2.png)

### Langkah 3: Tambah method di class \_NavigationFirstState

![Langkah 3](/docs/pertemuan-12/praktikum-8/langkah-3.png)

### Langkah 4: Buat file baru navigation_second.dart

![Langkah 4](/docs/pertemuan-12/praktikum-8/langkah-4.png)

### Langkah 5: Buat class NavigationSecond dengan StatefulWidget

![Langkah 5](/docs/pertemuan-12/praktikum-8/langkah-5.png)

### Langkah 6: Edit main.dart

![Langkah 6](/docs/pertemuan-12/praktikum-8/langkah-6.png)

### Langkah 7: Run

![Langkah 7](/docs/pertemuan-12/praktikum-8/langkah-7.gif)

## Soal 15

![Soal 15](/docs/pertemuan-12/praktikum-8/soal-15.1.png)

Mengubah warna dengan warna favorit.

![Soal 15](/docs/pertemuan-12/praktikum-8/soal-15.2.png)

## Soal 16

Yang terjadi ketika klik setiap button adalah mengubah warna background pada halaman `NavigationFirst`. Hal itu terjadi Ketika pengguna berada di layar `NavigationFirst` dan mengklik tombol "Change Color", mereka diarahkan ke layar `NavigationSecond`, di mana mereka dapat memilih salah satu dari tiga warna yang tersedia (Red, Green, Blue). Setelah memilih warna, layar `NavigationSecond` akan ditutup, dan layar `NavigationFirst` akan diperbarui dengan warna yang dipilih.

Mengganti warna pada langkah 5 dengan warna favorit.

![Soal 16](/docs/pertemuan-12/praktikum-8/soal-16.1.png)

**Result**

![Result](/docs/pertemuan-12/praktikum-8/soal-16.2.gif)

# Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

### Langkah 1: Buat file baru navigation_dialog.dart

![Langkah 1](/docs/pertemuan-12/praktikum-9/langkah-1.png)

### Langkah 2: Isi kode navigation_dialog.dart

![Langkah 2](/docs/pertemuan-12/praktikum-9/langkah-2.png)

### Langkah 3: Tambah method async

![Langkah 3](/docs/pertemuan-12/praktikum-9/langkah-3.png)

### Langkah 4: Panggil method di ElevatedButton

![Langkah 4](/docs/pertemuan-12/praktikum-9/langkah-4.png)

### Langkah 5: Edit main.dart

![Langkah 5](/docs/pertemuan-12/praktikum-9/langkah-5.png)

### Langkah 6: Run

![Langkah 6](/docs/pertemuan-12/praktikum-9/langkah-6.gif)

## Soal 17

- Pertama saat tombol "Change Color" ditekan, fungsi `_showColorDialog` dipanggil.

- Fungsi `_showColorDialog` menggunakan `showDialog` untuk menampilkan dialog pilihan warna. Dialog ini berisi beberapa tombol yang memungkinkan pengguna memilih warna: Merah, Hijau, atau Biru.

- Pengguna memilih salah satu warna dengan menekan salah satu tombol di dialog (misalnya, tombol "Red" untuk merah). Ketika tombol warna ditekan, fungsi `onPressed` dari tombol tersebut dipanggil. Dalam fungsi ini, variabel color diatur ke warna yang sesuai (misalnya, `Colors.red.shade700` untuk merah). Setelah mengatur warna, dialog ditutup menggunakan `Navigator.pop(context, color)`, yang juga mengirimkan warna yang dipilih sebagai nilai return (color).

- Fungsi `showDialog` adalah fungsi asynchronous yang menunggu sampai dialog ditutup dan mengembalikan nilai yang dikirim melalui `Navigator.pop.` Nilai yang dikembalikan oleh `showDialog` disimpan dalam variabel `newColor`.

- Setelah dialog ditutup dan `newColor` diterima, aplikasi memeriksa apakah `newColor` bukan null. Jika `newColor` valid (bukan null), aplikasi memanggil `setState()` untuk mengubah warna latar belakang dengan nilai `newColor`.

- `setState()` memberi tahu framework Flutter bahwa ada perubahan pada `state` yang memerlukan pembaruan tampilan. Flutter kemudian merender ulang `widget` dengan warna latar belakang baru yang ditentukan oleh `newColor`.

Mengubah warna dengan warna favorit.

![Soal 17](/docs/pertemuan-12/praktikum-9/soal-17.1.png)

**Result**

![Result](/docs/pertemuan-12/praktikum-9/soal-17.2.gif)
