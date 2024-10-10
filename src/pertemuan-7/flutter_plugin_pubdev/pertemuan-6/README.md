# Pemrograman Mobile - Pertemuan 5

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 6</th>
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

# Praktikum 1: Membangun Layout di Flutter

## Langkah 1: Buat Project Baru

![Membuat Project](/docs/pertemuan-6/praktikum-1/langkah-1.png)

## Langkah 2: Buka file lib/main.dart

Mengubah title

![Mengubah Title](/docs/pertemuan-6/praktikum-1/langkah-2.png)

## Langkah 3:

## Langkah 4: Implementasi title row

![Implementasi Title Row](/docs/pertemuan-6/praktikum-1/langkah-4.png)

# Praktikum 2: Implementasi button row

## Langkah 1: Buat method Column \_buildButtonColumn

![Membuat Method Column](/docs/pertemuan-6/praktikum-2/langkah-1.png)

## Langkah 2: Buat widget buttonSection

![Membuat Widget Button Section](/docs/pertemuan-6/praktikum-2/langkah-2.png)

## Langkah 3: Tambah button section ke body

![Tambah Button Section ke Body](/docs/pertemuan-6/praktikum-2/langkah-3.png)

# Praktikum 3: Implementasi text section

## Langkah 1: Buat widget textSection

![Membuat Widget Text Section](/docs/pertemuan-6/praktikum-3/langkah-1.png)

## Langkah 2: Tambahkan variabel text section ke body

![Tambahkan Variabel Text Section ke Body](/docs/pertemuan-6/praktikum-3/langkah-2.png)

# Praktikum 4: Implementasi image section

## Langkah 1: Siapkan aset gambar

![Siapkan Aset Gambar](/docs/pertemuan-6/praktikum-4/langkah-1.png)

## Langkah 2: Tambahkan gambar ke body

![Tambahkan Gambar ke Body](/docs/pertemuan-6/praktikum-4/langkah-2.png)

## Langkah 3: Terakhir, ubah menjadi ListView

![Ubah Menjadi ListView](/docs/pertemuan-6/praktikum-4/langkah-3.gif)

# Tugas 1 No 2: Implementasi project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics

## Desain

![Contoh](/docs/pertemuan-6/tugas-1/example.png)

## Implementasi

![Contoh](/docs/pertemuan-6/tugas-1/result.png)

# Praktikum 5: Membangun Navigasi di Flutter

## Langkah 1: Siapkan project baru

![Membuat Project Baru](/docs/pertemuan-6/praktikum-5/langkah-1.png)

## Langkah 2: Mendefinisikan Route

![Mendefinisikan Route](/docs/pertemuan-6/praktikum-5/langkah-2.png)

## Langkah 3: Lengkapi Kode di main.dart

![Lengkapi Kode di Main.dart](/docs/pertemuan-6/praktikum-5/langkah-3.png)

## Langkah 4: Membuat data model

![Membuat Data Model](/docs/pertemuan-6/praktikum-5/langkah-4.png)

## Langkah 5: Lengkapi kode di class HomePage

![Lengkapi Kode di Class HomePage](/docs/pertemuan-6/praktikum-5/langkah-5.png)

## Langkah 6: Membuat ListView dan itemBuilder

![Membuat ListView dan itemBuilder](/docs/pertemuan-6/praktikum-5/langkah-6.png)

## Langkah 7: Menambahkan aksi pada ListView

![Menambahkan Aksi Pada ListView](/docs/pertemuan-6/praktikum-5/langkah-7.png)

## Result 

![Result](/docs/pertemuan-6/praktikum-5/result.gif)

# Tugas 2

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

```dart
Navigator.pushNamed(context, '/item', arguments: item);
```

![Nomor 1](/docs/pertemuan-6/tugas-2/nomor-1.png)

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.
flutter.dev/cookbook/navigation/navigate-with-arguments)

```dart
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```

![Nomor 2](/docs/pertemuan-6/tugas-2/nomor-2.png)

![Nomor 2](/docs/pertemuan-6/tugas-2/nomor-2-result.gif)

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi ```GridView``` seperti di aplikasi marketplace pada umumnya.

![Nomor 3](/docs/pertemuan-6/tugas-2/nomor-3.png)

4. Silakan implementasikan ```Hero``` widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

![Nomor 4](/docs/pertemuan-6/tugas-2/nomor-4.gif) 

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

![Nomor 5](/docs/pertemuan-6/tugas-2/nomor-5.png)

6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file ```README.md```. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

![Nomor 6](/docs/pertemuan-6/tugas-2/nomor-6.1.png)

![Nomor 6](/docs/pertemuan-6/tugas-2/nomor-6.2.png)

![Result](/docs/pertemuan-6/tugas-2/result.gif) 