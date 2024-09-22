import 'package:d_and_s/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_size.dart';
import '../../controllers/home_controller.dart';

class HomeSectionTabBar extends StatelessWidget {
  final List<String> items_tabs = [
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
                      print(controller.homeSectionindex.value);
                      controller.homeSectionindex.value = items_tabs[index];
                    },
                    child: Text(
                      items_tabs[index],
                      style: TextStyle(
                        fontSize: TextSize.small,
                        color: controller.homeSectionindex.value ==
                                items_tabs[index]
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
