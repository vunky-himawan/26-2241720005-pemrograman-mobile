# Pemrograman Mobile - Pertemuan 4

<table>
  <thead>
    <th colspan="2" style="text-align: center;">Pertemuan 4</th>
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

## Praktikum 1: Eksperimen Tipe Data List

### Langkah 1:

![Langkah 1 Kode](/docs/pertemuan-4/praktikum-1/langkah_1.png)

### Langkah 2:

Jika kode diatas dijalankan, maka hasilnya adalah:

![Langkah 2 Hasil](/docs/pertemuan-4/praktikum-1/langkah_1_out.png)

### Langkah 3:

Kode:

![Langkah 3 Kode](/docs/pertemuan-4/praktikum-1/langkah_3.png)

Hasil:

![Langkah 3 Hasil](/docs/pertemuan-4/praktikum-1/langkah_3_out.png)

## Praktikum 2: Eksperimen Tipe Data Set

### Langkah 1:

![Langkah 1 Kode](/docs/pertemuan-4/praktikum-2/langkah_1.png)

### Langkah 2:

![Langkah 2](/docs/pertemuan-4/praktikum-2/langkah_2.png)

### Langkah 3:

![Langkah 3 Kode](/docs/pertemuan-4/praktikum-2/langkah_3.png)

Hasil Eksekusi:

![Langkah 3 Hasil](/docs/pertemuan-4/praktikum-2/langkah_3_out_1.png)

Penggunaan `add()` dan `addAll()`:

Kode:
![Langkah 3 Modifikasi](/docs/pertemuan-4/praktikum-2/langkah_3_mod.png)

Hasil Eksekusi:

![Langkah 3 Hasil Modifikasi](/docs/pertemuan-4/praktikum-2/langkah_3_mod_out.png)

## Praktikum 3: Eksperimen Tipe Data Maps

### Langkah 1:

![Langkah 1](/docs/pertemuan-4/praktikum-3/langkah_1.png)

### Langkah 2:

Hasil Eksekusi:

![Langkah 2](/docs/pertemuan-4/praktikum-3/langkah_2.png)

### Langkah 3:

Kode:

![Langkah 3 Kode](/docs/pertemuan-4/praktikum-3/langkah_3.png)

Hasil Eksekusi:

![Langkah 3 Hasil Eksekusi](/docs/pertemuan-4/praktikum-3/langkah_3_out.png)

Menambahkan nama dan nim pada variabel `gifts`, `nobleGases`, `mhs1`, `mhs2`:

![Langkah 3 Modifikasi](/docs/pertemuan-4/praktikum-3/langkah_3_mod.png)

Hasil Eksekusi:

![Langkah 3 Hasil Eksekusi](/docs/pertemuan-4/praktikum-3/langkah_3_mod_out.png)

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### Langkah 1:

![Langkah 1](/docs/pertemuan-4/praktikum-4/langkah_1.png)

### Langkah 2:

![Langkah 2 Error](/docs/pertemuan-4/praktikum-4/langkah_2_error.png)

Saat mengeksekusi kode diatas terdapat error `Error: Undefined name 'list1'` hal tersebut terjadi karena variabel `list1` belum di deklarasikan.

Perbaikan Kode:

![Langkah 2 Solve](/docs/pertemuan-4/praktikum-4/langkah_2_solve.png)

Hasil Eksekusi:

![Langkah 2 Output](/docs/pertemuan-4/praktikum-4/langkah_2_solve_out.png)

### Langkah 3:

![Langkah 3](/docs/pertemuan-4/praktikum-4/langkah_3.png)

Saat eksekusi kode diatas terdapat error `Error: The value 'null' can't be assigned to a variable of type 'int' because 'int' is not nullable.` hal tersebut terjadi karena variabel `list1` tidak nullable.

![Langkah 3 Error](/docs/pertemuan-4/praktikum-4/langkah_3_error.png)

Perbaikan kode:

![Langkah 3 Solve](/docs/pertemuan-4/praktikum-4/langkah_3_solve.png)

Hasil Eksekusi:

![Langkah 3 Output](/docs/pertemuan-4/praktikum-4/langkah_3_solve_out.png)

### Langkah 4:

Ketika `promoActive = true`

![Langkah 4 promoActive](/docs/pertemuan-4/praktikum-4/langkah_4_true.png)

Output:

![Langkah 4 promoActive Output](/docs/pertemuan-4/praktikum-4/langkah_4_true_out.png)

Ketika `promoActive = false`

![Langkah 4 promoActive](/docs/pertemuan-4/praktikum-4/langkah_4_false.png)

Output:

![Langkah 4 promoActive Output](/docs/pertemuan-4/praktikum-4/langkah_4_false_out.png)

Karena terdapat `if (promoActive)` maka ketika `promoActive` bernilai `false` maka tidak akan menampilkan `Outlet`.

### Langkah 5:

Ketika `login = 'Manager'`

![Langkah 5 login = Manager](/docs/pertemuan-4/praktikum-4/langkah_5_manager.png)

Output:

![Langkah 5 login = Manager Output](/docs/pertemuan-4/praktikum-4/langkah_5_manager_out.png)

Ketika `login = 'Developer'`

![Langkah 5 login = Developer](/docs/pertemuan-4/praktikum-4/langkah_5_developer.png)

Output:

![Langkah 5 login = Developer Output](/docs/pertemuan-4/praktikum-4/langkah_5_developer_out.png)

Karena terdapat `if (login case 'Manager')` maka ketika `login` bernilai `Manager` maka akan menampilkan `Inventory` dan jika tidak bernilai `Manager` maka tidak akan menampilkan `Inventory`.

### Langkah 6:

![Langkah 6](/docs/pertemuan-4/praktikum-4/langkah_6.png)

Hasil Eksekusi:

![Langkah 6 Output](/docs/pertemuan-4/praktikum-4/langkah_6_out.png)

Dengan memanfaatkan `Collection For` kita dapat menghasilkan list baru dengan cara yang lebih ringkas dibandingkan dengan menggunakan loop tradisional.

## Praktikum 5: Eksperimen Tipe Data Records

### Langkah 1:

![Langkah 1](/docs/pertemuan-4/praktikum-5/langkah_1.png)

### Langkah 2:

![Langkah 2](/docs/pertemuan-4/praktikum-5/langkah_2.png)

### Langkah 3:

Kode:

![Langkah 3](/docs/pertemuan-4/praktikum-5/langkah_3.png)

Output:

![Langkah 3](/docs/pertemuan-4/praktikum-5/langkah_3_out.png)

### Langkah 4:

Kode:

![Langkah 4](/docs/pertemuan-4/praktikum-5/langkah_4.png)

Output:

![Langkah 4](/docs/pertemuan-4/praktikum-5/langkah_4_out.png)

### Langkah 5:

Kode:

![Langkah 5](/docs/pertemuan-4/praktikum-5/langkah_5.png)

Output:

![Langkah 5](/docs/pertemuan-4/praktikum-5/langkah_5_out.png)

## Tugas Praktikum

### Tugas

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!

### Penyelesaian

1.

2. Functions merupakan sebuah blok kode yang digunakan untuk melakukan suatu tugas tertentu. Functions juga bermanfaat agar kita tidak perlu menulis ulang kode yang sama untuk beberapa tugas yang sama dan dengan function kode yang ditulis jadi lebih mudah dibaca dan dimaintenance.

3. Jenis-jenis Parameter pada function:
   - Required Parameter: Parameter yang harus diisi oleh user.
   - Default Parameter: Parameter yang diisi oleh user, namun jika user tidak mengisi parameter tersebut maka default valuenya akan digunakan.
   - Named Parameter: Parameter yang memiliki nama.
   - Optional Parameter: Parameter yang tidak harus diisi oleh user.

Contoh syntax:

```dart
void main(List<String> args) {
  // Required Parameter
  void requiredParameter(String name) {
    print('Hello $name');
  }

  requiredParameter('Vunky'); // Output: Hello Vunky

  // Default Parameter
  void defaultParameter(String name = 'World') {
    print('Hello $name');
  }

  defaultParameter(); // Output: Hello World
  defaultParameter('Vunky'); // Output: Hello Vunky

  // Named Parameter
  void namedParameter({String name = 'World'}) {
    print('Hello $name');
  }

  namedParameter(name: 'Vunky'); // Output: Hello Vunky

  // Optional Parameter
  void optionalParameter(String name, [int? age = 'unknown']) {
    print('Hello $name, your age is $ageValidated');
  }

  optionalParameter('Vunky'); // Output: Hello Vunky, your age is unknown
  optionalParameter('Vunky', 22); // Output: Hello Vunky, your age is 22
}
```

4. Pada dart function as first-class object berarti kita dapat memperlakukan suatu fungsi sebagai nilai dari tipe lain. Jadi, Anda bisa menjadikan fungsi ke sebuah variabel, menjadikan fungsi sebagai argumen pada fungsi lain, dan mengembalikan fungsi dari sebuah fungsi.

Contoh syntax:

```dart
void main(List<String> args) {
  void printElement(int element) {
    print(element);
  }

  var list = [1, 2, 3];

  list.forEach(printElement);
}
```

5. Annonymous Functions adalah sebuah fungsi yang tidak memiliki nama.

Contoh syntax:

```dart
void main(List<String> args) {
  var list = [1, 2, 3];

  list.forEach((element) => print(element)); // callback pada function forEach disebut dengan anonymous function
}
```

6. Perbedaan Lexical scope dan Lexical closures:

- Lexical scope: adalah konsep di mana variabel dapat diakses berdasarkan lokasi variabel tersebut didefinisikan dalam kode.

```dart
void main(List<String> args) {
  function outerFunction() {
    let outerVariable = 'I am outside!';

    function innerFunction() {
      console.log(outerVariable); // Mengakses variabel dari outerFunction
    }

    return innerFunction;
  }

  const myFunction = outerFunction();
  myFunction(); // Output: "I am outside!"
}
```
- Lexical closures: merupakan sebuah konsep di mana sebuah fungsi "menangkap" variabel-variabel dari scope di mana fungsi itu didefinisikan.

```dart
void main(List<String> args) {
  function makeCounter() {
      let count = 0; // Variabel privat

      return function() {
          count += 1; // Mengakses variabel dari makeCounter
          return count;
      };
  }

  const increment = makeCounter();
  console.log(increment()); // Output: 1
  console.log(increment()); // Output: 2
  console.log(increment()); // Output: 3
}
```
7. Untuk membuat return multiple value di dart, kita dapat menggunakan beberapa cara, yaitu:
- Menggunakan Class
- Menggunakan List
- Menggunakan Map

```dart
// Menggunakan Class

Class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

Person getPerson() {
  return Person('Vunky', 21);
}

void main(List<String> args) {
  var person = getPerson();
  print('Name: ${person.name}, Age: ${person.age}'); // Output: Name: Vunky, Age: 21
}
```

```dart
// Menggunakan List

void main(List<String> args) {
  List<dynamic> getList() {
    List<String> person = ['Budy', 'Vunky'];

    return person;
  }

  var list = getList();
  print(list[0]); // Output: Budy
  print(list[1]); // Output: Vunky
}
```

```dart
// Menggunakan Map

void main(List<String> args) {
  Map<String, dynamic> getMap() {
    Map<String, String> person = {
      'name': 'Vunky',
      'age': '21',
    };

    return person;
  }

  var map = getMap();
  print(map['name']); // Output: Vunky
  print(map['age']); // Output: 21
}
```

8. 