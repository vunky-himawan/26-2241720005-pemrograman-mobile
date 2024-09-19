void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Vunky Himawan';
  gifts['nim'] = '2241720005';

  mhs1['nama'] = 'Vunky Himawan';
  mhs1['nim'] = '2241720005';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Vunky Himawan';
  nobleGases[22] = '2241720005';

  mhs2[0] = 'Vunky Himawan';
  mhs2[1] = '2241720005';

  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);
}