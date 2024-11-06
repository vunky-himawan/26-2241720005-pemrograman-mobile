import 'dart:io';

import 'package:camera_with_filter/widgets/filter_selector.dart';
import 'package:flutter/material.dart';

class DisplayPictureFilterScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureFilterScreen({super.key, required this.imagePath});

  @override
  State<DisplayPictureFilterScreen> createState() =>
      _DisplayPictureFilterScreenState();
}

class _DisplayPictureFilterScreenState
    extends State<DisplayPictureFilterScreen> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(title: const Text('Display the Picture - 2241720005')),
        body: Stack(
          children: [
            Positioned.fill(
              child: _buildPhotoWithFilter(),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: _buildFilterSelector(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        // Anda bisa ganti dengan foto Anda sendiri
        return Image.file(
          File(widget.imagePath),
          color: color.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      padding: const EdgeInsets.all(8.0),
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}
