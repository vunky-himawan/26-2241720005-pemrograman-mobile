# Pemrograman Mobile - Pertemuan 11

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 11</th>
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

# Tugas Praktikum 1: Dasar State dengan Model-View

## Praktikum 1: Dasar State dengan Model-View

### 1. Menyelesaikan Langkah-langkah Praktikum:

#### Langkah 1: Buat Project Baru

![Langkah 1](/docs/pertemuan-11/praktikum-1/langkah-1.png)

#### Langkah 2: Membuat model task.dart

![Langkah 2](/docs/pertemuan-11/praktikum-1/langkah-2.png)

#### Langkah 3: Buat file plan.dart

![Langkah 3](/docs/pertemuan-11/praktikum-1/langkah-3.png)

#### Langkah 4: Buat file data_layer.dart

![Langkah 4](/docs/pertemuan-11/praktikum-1/langkah-4.png)

#### Langkah 5: Pindah ke file main.dart

![Langkah 5](/docs/pertemuan-11/praktikum-1/langkah-5.png)

#### Langkah 6: buat plan_screen.dart

![Langkah 6](/docs/pertemuan-11/praktikum-1/langkah-6.png)

#### Langkah 7: buat method \_buildAddTaskButton()

![Langkah 7](/docs/pertemuan-11/praktikum-1/langkah-7.png)

#### Langkah 8: buat widget \_buildList()

![Langkah 8](/docs/pertemuan-11/praktikum-1/langkah-8.png)

#### Langkah 9: buat widget \_buildTaskTile

![Langkah 9](/docs/pertemuan-11/praktikum-1/langkah-9.png)

![Langkah 9 Result](/docs/pertemuan-11/praktikum-1/result-langkah-9.gif)

#### Langkah 10: Tambah Scroll Controller

![Langkah 10](/docs/pertemuan-11/praktikum-1/langkah-10.png)

#### Langkah 11: Tambah Scroll Listener

![Langkah 11](/docs/pertemuan-11/praktikum-1/langkah-11.png)

#### Langkah 12: Tambah controller dan keyboard behavior

![Langkah 12](/docs/pertemuan-11/praktikum-1/langkah-12.png)

#### Langkah 13: Terakhir, tambah method dispose()

![Langkah 13](/docs/pertemuan-11/praktikum-1/langkah-13.png)

#### Langkah 14: Hasil

![Langkah 14](/docs/pertemuan-11/praktikum-1/final-result.gif)

### 2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

```Dart
export 'plan.dart';
export 'task.dart';
```

Dengan melakukan ekspor model seperti hal tersebut, kita bisa mengimpor kelas, fungsi, atau konstanta dari file plan.dart dan task.dart dengan cara yang lebih sederhana. Jadi tidak perlu mengimpor setiap file satu per satu.

### 3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

```Dart
Plan plan = const Plan();
```

Objek `plan` digunakan sebagai instance dari kelas `Plan`, yang diinisialisasi sekali sebagai `const`. Karena bersifat `const`, menyatakan bahwa `Plan` adalah objek immutable dan tidak akan berubah selama siklus hidup widget `PlanScreen`.

### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Langkah 9 Result](/docs/pertemuan-11/praktikum-1/result-langkah-9.gif)

Pada langkah 9 ini setelah melakukan praktikum sebelumnya, saya mendapatkan sebuah hasil yaitu aplikasi todo list, dimana terdapat sebuah AppBar dengan title "Master Plan Vunky Himawan", dan terdapat sebuah listView dengan item task yang di-render berdasarkan data yang ada berdasarkan instance dari kelas Plan dan bisa ditambahkan dengan menekan tombol di kanan bawah, serta bisa menandai task yang sudah di-complete dengan menekan tombol check.

### 5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state?

```Dart
@override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(
        () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      );
  }
```

- `initState()` dipanggil satu kali ketika State objek dibuat, yaitu saat widget `PlanScreen` pertama kali dimuat. Ini adalah tempat untuk melakukan inisialisasi awal data yang akan digunakan oleh widget.
- Pada langkah 11, `initState()` digunakan untuk membuat ScrollController dan menetapkan listener ke controller tersebut.
- Listener pada `ScrollController` akan membuat `FocusScope.of(context).requestFocus(FocusNode());` setiap kali pengguna melakukan scroll. Kode ini berguna untuk menghilangkan fokus dari widget input, yang membuat keyboard tertutup ketika pengguna melakukan scrolling.

```Dart
@override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
```

- `dispose()` adalah metode terakhir yang dipanggil sebelum objek `State` dihapus dari memori. `dispose()` merupakan sebuah fungsi untuk membersihkan atau menghapus data-data seperti controller, stream, atau listener yang dibuat sebelumnya.
- Pada langkah 13, `scrollController.dispose();` digunakan untuk menghapus controller dan membersihkan memori yang digunakan. Jika `dispose()` tidak dipanggil, akan terjadi kebocoran memori (memory leak), karena `scrollController` tetap berada di memori meskipun tidak lagi digunakan.

# Tugas Praktikum 2: InheritedWidget

## Praktikum 2: Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

### 1. Menyelesaikan Langkah-langkah Praktikum:

#### Langkah 1: Buat file plan_provider.dart

![Langkah 1](/docs/pertemuan-11/praktikum-2/langkah-1.png)

#### Langkah 2: Edit main.dart

![Langkah 2](/docs/pertemuan-11/praktikum-2/langkah-2.png)

#### Langkah 3: Tambah method pada model plan.dart

![Langkah 3](/docs/pertemuan-11/praktikum-2/langkah-3.png)

#### Langkah 4: Pindah ke PlanScreen

![Langkah 4](/docs/pertemuan-11/praktikum-2/langkah-4.png)

#### Langkah 5: Edit method \_buildAddTaskButton

![Langkah 5](/docs/pertemuan-11/praktikum-2/langkah-5.png)

#### Langkah 6: Edit method \_buildTaskTile

![Langkah 6](/docs/pertemuan-11/praktikum-2/langkah-6.png)

#### Langkah 7: Edit \_buildList

![Langkah 7](/docs/pertemuan-11/praktikum-2/langkah-7.png)

#### Langkah 8: Tetap di class PlanScreen

![Langkah 8](/docs/pertemuan-11/praktikum-2/langkah-8.png)

#### Langkah 9: Tambah widget SafeArea

![Langkah 9](/docs/pertemuan-11/praktikum-2/langkah-9.png)

![Langkah 9 Result](/docs/pertemuan-11/praktikum-2/result-langkah-9.gif)

### 2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

```Dart
import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
  const PlanProvider(
      {super.key,
      required super.child,
      required ValueNotifier<Plan> super.notifier});

  static ValueNotifier<Plan> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlanProvider>()!
        .notifier!;
  }
}
```

`PlanProvider` menggunakan `InheritedNotifier`, dimana `InheritedNotifier` merupakan kombinasi antara `InheritedWidget` dan `ChangeNotifier`. Pada Flutter, `InheritedWidget` digunakan untuk membuat data yang bisa diakses di seluruh widget tree tanpa harus melewati data tersebut melalui constructor secara manual dari satu widget ke widget lainnya.

Mengapa yang digunakan `InheritedNotifier`? Karena InheritedWidget memungkinkan `PlanProvider` menyebarkan data secara efisien dan terstruktur di seluruh widget tree, dengan `InheritedNotifier` menambahkan kemampuan untuk mendeteksi perubahan secara otomatis.

### 3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

```Dart
import 'package:master_plan/models/task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  Plan({this.name = '', this.tasks = const []});

  int get completedCount => tasks.where((task) => task.complete).length;

  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';
}
```

Method `completedCount` digunakan untuk mendapatkan jumlah tugas yang selesai tanpa perlu membuat variabel tambahan. `tasks.where((task) => task.complete)` menggunakan filter `where` untuk mendapatkan daftar tugas yang sudah selesai (memiliki properti complete yang bernilai true). `.length` kemudian menghitung jumlah elemen dari daftar tugas yang sudah difilter. Hasil akhirnya adalah jumlah tugas yang selesai, yang diakses melalui completedCount.

Method `completenessMessage` digunakan untuk pengelolaan pesan status, membuat pesan secara dinamis berdasarkan kondisi tasks, method ini menggunakan `completedCount` untuk mengambil jumlah tugas yang selesai dan tasks.length untuk menghitung total tugas, lalu menggabungkannya dalam sebuah string.

### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Final Result](/docs/pertemuan-11/praktikum-2/final-result.gif)

Pada praktikum ini, saya memperbaiki aplikasi pada praktikum 1 yaitu aplikasi todo list hanya saja pada praktikum ini diterapkan `Provider` untuk menyimpan dan mengelola data. Pada praktikum ini menggunakan `ChangeNotifier` sebagai penyimpan data yang dapat memberi `notif` ketika terjadi perubahan, serta `ChangeNotifierProvider` untuk menyebarkan data tersebut ke seluruh widget. Dalam implementasi ini, menggunakan `InheritedNotifier` sebagai penyebaran data ke widget lain. Data yang disimpan dalam `Provider` dapat diakses dan ditampilkan di widget melalui `InheritedWidget` sehingga widget dapat berlangganan dan bereaksi terhadap perubahan data tanpa harus melewati data melalui constructor widget.

# Tugas Praktikum 3: State di Multiple Screens

## Praktikum 3: Membuat State di Multiple Screens

### 1. Menyelesaikan Langkah-langkah Praktikum:

#### Langkah 1: Edit PlanProvider

#### Langkah 2: Edit main.dart

#### Langkah 3: Edit plan_screen.dart

#### Langkah 4: Error

#### Langkah 5: Tambah getter Plan

#### Langkah 6: Method initState()

#### Langkah 7: Widget build

#### Langkah 8: Edit \_buildTaskTile

#### Langkah 9: Buat screen baru

#### Langkah 10: Pindah ke class \_PlanCreatorScreenState

#### Langkah 11: Pindah ke method build

#### Langkah 12: Buat widget \_buildListCreator

#### Langkah 13: Buat void addPlan()

#### Langkah 14: Buat widget \_buildMasterPlans()

### 2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

![diagram](/docs/pertemuan-11/diagram-tugas-praktikum-3.png)

### 3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
