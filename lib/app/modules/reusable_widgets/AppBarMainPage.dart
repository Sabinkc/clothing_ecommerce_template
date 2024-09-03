import 'package:flutter/material.dart';

class AppBarMainPage extends StatelessWidget {
  final String title;
  final bool isLeading;
   AppBarMainPage({super.key, required this.title, this.isLeading = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(title),
      centerTitle: false,
      // leading: Icon(Icons.camera),
      automaticallyImplyLeading: isLeading,
      actions: [
        Icon(Icons.camera),
        SizedBox(width: 20),
        Icon(Icons.shopping_cart),
        SizedBox(width: 20),
      ],
    );
  }
}
