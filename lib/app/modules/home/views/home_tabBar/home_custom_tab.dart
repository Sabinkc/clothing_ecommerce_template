import 'dart:ffi';

import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/home/views/home_tabBar/home_tabBar_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCustomTab extends StatelessWidget {
  final List<String> items_tabs = [
    "Watches",
    "Shirts",
    "Bags",
    "Jeans",
    "Shoes",
    "Socks",
    "More",
  ];
  HomeCustomTab({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: items_tabs.length,
          itemBuilder: (BuildContext context, index) => Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Obx(
                () => Container(
                  child: GestureDetector(
                    onTap: () {
                      controller.index.value = items_tabs[index];
                    },
                    child: Text(
                      items_tabs[index],
                      style: TextStyle(
                        fontSize: TextSize.small,
                        color: controller.index.value == items_tabs[index]
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
