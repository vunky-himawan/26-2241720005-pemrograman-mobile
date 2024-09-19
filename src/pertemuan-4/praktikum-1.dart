void main() {
  final List<dynamic> list = List.filled(5, null);

  list[1] = 'Vunky Himawan';
  list[2] = '2241720005';

  list.forEach((element) {
    print(element);
  });
}