import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarMainPage extends StatelessWidget {
  final String title;
  final bool isLeading;
  AppBarMainPage({super.key, required this.title, this.isLeading = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
      // leading: Icon(Icons.camera),
      automaticallyImplyLeading: isLeading,
      actions: [
        Icon(Icons.favorite),
        SizedBox(width: 20),
        GestureDetector(
            onTap: () {
              Get.to(() => AddedCart());
            },
            child: Icon(Icons.shopping_cart)),
        SizedBox(width: 20),
      ],
    );
  }
}
