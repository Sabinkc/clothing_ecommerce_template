import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCustomTab extends StatelessWidget {
  final List<String> itemsTabs = [
    "Shoes",
    "Hoodie",
    "Shirts",
    "Jacket",
    "Watches",
    "Jeans",
  ];
  HomeCustomTab({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: itemsTabs.length,
          itemBuilder: (BuildContext context, index) => Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Obx(
              () => GestureDetector(
                onTap: () {
                  controller.index.value = itemsTabs[index];
                },
                child: Text(
                  itemsTabs[index],
                  style: TextStyle(
                    fontSize: TextSize.small,
                    color: controller.index.value == itemsTabs[index]
                        ? Colors.red
                        : Colors.black,
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
