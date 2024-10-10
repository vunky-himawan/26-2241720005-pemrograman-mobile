import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.white10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Nama: Vunky Himawan'),
          Text('NIM: 2241720005'),
        ],
      ),
    );
  }
}
