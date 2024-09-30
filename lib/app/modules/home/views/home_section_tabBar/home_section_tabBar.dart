// ignore_for_file: file_names

import 'package:d_and_s/app/data/sort_by.dart';
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
          itemCount: sortBy.length,
          itemBuilder: (BuildContext context, index) => Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Obx(
              () => GestureDetector(
                onTap: () {
                  // print(controller.homeSectionindex.value);
                  controller.homeSectionindex.value = sortBy[index];
                },
                child: Text(
                  sortBy[index],
                  style: TextStyle(
                    fontSize: TextSize.small,
                    color: controller.homeSectionindex.value == sortBy[index]
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
