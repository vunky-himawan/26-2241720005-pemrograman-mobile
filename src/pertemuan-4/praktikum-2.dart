void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Vunky Himawan");
  names1.add("2241720005");

  names2.addAll({'Vunky Himawan', '2241720005'});

  print(names1);
  print(names2);
}
