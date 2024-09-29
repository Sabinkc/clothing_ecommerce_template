import 'package:flutter/material.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  void handleIndexChange(int index) {
    // Handle the index value here
    // print('Index changed to: $index');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        handleIndexChange(1); // Pass your index here
      },
      child: const Text('Tap me'),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final Function(int) onIndexChange;

  const ChildWidget({super.key, required this.onIndexChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onIndexChange(1); // Pass the index value
      },
      child: const Text('Tap me'),
    );
  }
}
