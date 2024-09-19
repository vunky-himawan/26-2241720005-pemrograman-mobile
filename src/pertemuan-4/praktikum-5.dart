void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  print(tukar((1, 2)));

  (String, int) mahasiswa;
  mahasiswa = ('Vunky Himawan', 2241720005);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  var mahasiswa2Updated = (
    VunkyHimawan: '2241720005',
    a: mahasiswa2.a,
    b: mahasiswa2.b,
    mahasiswa2.$2
  );

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

  print(mahasiswa2Updated.$1); // Prints 'Last'
  print(mahasiswa2Updated.a); // Prints 2241720005
  print(mahasiswa2Updated.b); // Prints true
  print(mahasiswa2Updated.VunkyHimawan); // Prints '2241720005'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
