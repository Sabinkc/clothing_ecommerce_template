import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';

import 'package:d_and_s/app/modules/reusable_widgets/TextFormFieldReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/filter_view/filter_view_sort_by.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../data/category_data.dart';

import '../../../data/sort_by.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/views/home_category_view.dart';

class FilterView extends StatelessWidget {
  final List<String> itemsTabs = [
    "Latest Product",
    "For You",
    "All",
    "Popular",
    "Best Seller",
  ];
  final minPriceController = TextEditingController();
  final maxPriceController = TextEditingController();
  final controllerHomeController = Get.put(HomeController());
  final controller = Get.put(HomeController());
  FilterView({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          body: Container(
            height: 500,
            decoration: const BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            // width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Filter",
                      style: TextStyle(
                          fontSize: TextSize.normal,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 20),
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: TextSize.normal,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFieldReusable(
                          widthsize: 150,
                          hint: "Minimum Price",
                          textEditingController: minPriceController,
                        ),
                        const Text("TO"),
                        TextFormFieldReusable(
                          widthsize: 150,
                          hint: "Maximum Price",
                          textEditingController: maxPriceController,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Category",
                      style: TextStyle(
                          fontSize: TextSize.normal,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categoryData.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            4, // Adjust this for wider layouts if needed
                        crossAxisSpacing: 12.0, // Space between grid items
                        mainAxisSpacing: 10.0, // Space between grid items
                        childAspectRatio:
                            2, // Adjust the aspect ratio to make it neat
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return GestureDetector(
                          onTap: () {
                            controllerHomeController.index.value =
                                categoryData[index]["category_name"];
                            Get.to(
                              HomeCategoryDetailView(),
                              transition: Transition
                                  .leftToRightWithFade, // Professional fade-in effect
                              duration: const Duration(
                                  milliseconds:
                                      500), // Smooth duration for the transition
                              curve: Curves
                                  .easeInOut, // Adds smoothness with easing in and out
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3),
                                    width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Center(
                                child: Text(
                                  categoryData[index]["category_name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    // const SizedBox(height: 20),
                    Text(
                      "Sort By",
                      style: TextStyle(
                          fontSize: TextSize.normal,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: sortBy.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            4, // Adjust this for wider layouts if needed
                        crossAxisSpacing: 12.0, // Space between grid items
                        mainAxisSpacing: 10.0, // Space between grid items
                        childAspectRatio:
                            2, // Adjust the aspect ratio to make it neat
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.homeSectionindex.value = sortBy[index];
                            Get.to(
                              FilterViewSortBy(
                                title: sortBy[index],
                              ),
                              transition: Transition
                                  .leftToRightWithFade, // Professional fade-in effect
                              duration: const Duration(
                                  milliseconds:
                                      500), // Smooth duration for the transition
                              curve: Curves.easeInOut,
                            ); // Adds smoothness with easing in and out);
                            //   Get.to(
                            //     HomeCategoryDetailView(),
                            //     transition: Transition
                            //         .leftToRightWithFade, // Professional fade-in effect
                            //     duration: const Duration(
                            //         milliseconds:
                            //             500), // Smooth duration for the transition
                            //     curve: Curves
                            //         .easeInOut, // Adds smoothness with easing in and out
                            //   );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3),
                                    width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Center(
                                child: Text(
                                  sortBy[index],
                                  style: const TextStyle(
                                      // color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const LargeButtonReusable(
                      title: "Save Filter",
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
