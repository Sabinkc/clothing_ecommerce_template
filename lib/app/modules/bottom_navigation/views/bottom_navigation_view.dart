import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottomNavigationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
