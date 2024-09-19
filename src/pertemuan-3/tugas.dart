void main() {
  for (int i = 0; i < 201; i++) {
    if (isPrime(i)) {
      print('Bilangan Prima: $i');
      print('Nama: Vunky Himawan');
      print('NIM: 2241720005 \n');
    }
  }
}

bool isPrime(int number) {
  if (number == 0) return false;

  int factor = (number / 2).floor();

  for (int i = 2; i <= factor; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
