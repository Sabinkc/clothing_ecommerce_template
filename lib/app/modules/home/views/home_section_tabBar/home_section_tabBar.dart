// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_size.dart';
import '../../controllers/home_controller.dart';

class HomeSectionTabBar extends StatelessWidget {
  final List<String> itemsTabs = [
    "Latest Product",
    "For You",
    "All",
    "Popular",
    "Best Seller",
  ];
  HomeSectionTabBar({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                  // print(controller.homeSectionindex.value);
                  controller.homeSectionindex.value = itemsTabs[index];
                },
                child: Text(
                  itemsTabs[index],
                  style: TextStyle(
                    fontSize: TextSize.small,
                    color: controller.homeSectionindex.value ==
                            itemsTabs[index]
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
