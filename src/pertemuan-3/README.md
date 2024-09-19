# Pemrograman Mobile - Pertemuan 3

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 3</th>
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

# Praktikum 1: Menerapkan Control Flows ("if/else")

#### Langkah 1:

![Langkah 1](/docs/pertemuan-3/praktikum_1/langkah_1.png)

#### Langkah 2:

Setelah melakukan langkah 1 terdapat error sebagai berikut:

![Langkah 2](/docs/pertemuan-3/praktikum_1/langkah_1_error.png)

Hal tersebut terjadi karena dart bersifat *case-sensitive* jadi jika menggunakan ```If``` atau ```Else``` maka dart tidak akan mengenali perintah tersebut.

#### Langkah 3:

![Langkah 3](/docs/pertemuan-3/praktikum_1/langkah_3.png)

Setelah memperbaiki error pada kode yang terdapat pada langkah 1, dan menambahkan kode pada langkah 3 maka terjadi error sebagai berikut:

![Langkah 3](/docs/pertemuan-3/praktikum_1/langkah_3_error.png)

Masalah:
1. Variable ```test``` sudah di deklarasikan pada langkah 1, maka tidak perlu di deklarasikan lagi.
2. Karena tipe data pada variable ```test``` adalah ```String```, maka pada blok ```if``` harus menambahkan operator perbandingan sehingga akan menghasilkan nilai boolean.

Solusi:

Untuk menyelesaikan masalah diatas ada beberapa solusi antara lain yaitu:

1. Tidak mendeklarasikan ulang variable ```test``` tapi hanya re-asign nilai variable tersebut dan pada blok ```if``` dilakukan casting dari tipe data ```String``` ke ```bool```.

![Solusi 1](/docs/pertemuan-3/praktikum_1/langkah_3_solusi_1.png)

2. Mengganti tipe data ```String``` dengan ```bool``` dan mengubah nama variabel ```test``` menjadi nama lain selain ```test``` seperti ```isTrue```.

![Solusi 2](/docs/pertemuan-3/praktikum_1/langkah_3_solusi_2.png)

# Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

#### Langkah 1:

![Langkah 1](/docs/pertemuan-3/praktikum_2/langkah_1.png)

#### Langkah 2:

Hasil eksekusi program di atas adalah:

![Langkah 2](/docs/pertemuan-3/praktikum_2/langkah_1_error.png)

Hal tersebut terjadi karena program di atas memiliki error pada blok ```while``` yang membutuhkan variabel ```counter``` sementara variabel tersebut belum di deklarasikan.

Untuk mengatasi hal tersebut kita harus mendeklarasikan variabel ```counter``` dan mengisi nilainya dengan nilai awal yang benar.

![Solusi](/docs/pertemuan-3/praktikum_2/langkah_1_solve.png)

#### Langkah 3:

![Langkah 3](/docs/pertemuan-3/praktikum_2/langkah_3.png)

Pada blok ```do-while``` akan melakukan eksekusi blok ```print``` sampai variabel ```counter``` bernilai 77. Sehingga akan menghasilkan output sebagai berikut:

![Langkah 3](/docs/pertemuan-3/praktikum_2/langkah_3_out_1.png)

...

![Langkah 3](/docs/pertemuan-3/praktikum_2/langkah_3_out_2.png)

# Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

#### Langkah 1:

![Langkah 1](/docs/pertemuan-3/praktikum_3/langkah_1.png)

#### Langkah 2:

Setelah melakukan langkah 1 terdapat error sebagai berikut:

![Langkah 2](/docs/pertemuan-3/praktikum_3/langkah_1_error.png)

Pada blok kode ```for``` terdapat error:
1. ```Undefined name 'index'``` pada kode ```index < 27; index```

Hal tersebut terjadi karena variabel ```index``` belum di deklarasikan pada blok ```for``` dan tidak ada variabel dengan nama tersebut di dalam program.

2. ```Undefined name 'Index'``` pada kode ```print(Index)``` dan ```Index = 10;```

Hal tersebut terjadi karena variabel ```Index``` belum di deklarasikan pada blok ```for``` dan tidak ada variabel dengan nama tersebut di dalam program.

Perbaikan: 

![Solve](/docs/pertemuan-3/praktikum_3/langkah_1_solve.png)


#### Langkah 3:

![Langkah 3](/docs/pertemuan-3/praktikum_3/langkah_3.png)

Saat mengeksekusi program di atas terdapat output sebagai berikut:

![Langkah 3](/docs/pertemuan-3/praktikum_3/langkah_3_error.png)

1. Variabel ```Index``` tidak di deklarasikan pada blok ```for``` dan tidak ada variabel dengan nama tersebut di dalam program.
2. Dart bersifat *case-sensitive* jadi pada penulisan kondisi if else if seharusnya ditulis dengan ```if``` dan ```else if```, maka jika ditulis dengan ```If``` dan ```Else If``` maka dart tidak akan mengenali perintah tersebut.

Solusi: 

![Solve](/docs/pertemuan-3/praktikum_3/langkah_3_solve.png)

# Tugas

Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

#### Kode: 

![Kode](/docs/pertemuan-3/tugas/code.png)

#### Output:

![Output](/docs/pertemuan-3/tugas/output.png)