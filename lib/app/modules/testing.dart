import 'package:flutter/material.dart';

class ParentWidget extends StatelessWidget {
  void handleIndexChange(int index) {
    // Handle the index value here
    print('Index changed to: $index');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          handleIndexChange(1); // Pass your index here
        },
        child: Text('Tap me'),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final Function(int) onIndexChange;

  ChildWidget({required this.onIndexChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onIndexChange(1); // Pass the index value
      },
      child: Container(
        child: Text('Tap me'),
      ),
    );
  }
}
