// ignore_for_file: must_be_immutable

import 'package:d_and_s/app/modules/category/views/category_detail_gridview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../data/category_data.dart';
import '../../home/controllers/home_controller.dart';
import '../../shop/views/shop_view_sub_category.dart';
import '../controllers/category_controller.dart';

class CategoryDetailView extends StatelessWidget {
  final controllerCategory = Get.put(CategoryController());
  final controllerHomeController = Get.put(HomeController());
  var count = 0.obs;
  CategoryDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedSubCategory = categoryData
        .where((element) =>
            element["category_name"] == controllerHomeController.index.value)
        .toList();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.lightSilver,
        appBar: AppBar(
          backgroundColor: AppColors.lightSilver,
          title: Text(controllerHomeController.index.value),
          centerTitle: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) => ShopViewSubCategory(),
                  );
                },
                child: const Row(
                  children: [
                    Text("Filter"),
                    SizedBox(width: 5),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            color: AppColors.lightSilver,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Text(selectedSubCategory as String),
                  selectedSubCategory.isNotEmpty
                      ? SizedBox(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // itemCount: categoryData.length,
                            itemCount: selectedSubCategory.isNotEmpty
                                ? selectedSubCategory[0]["sub_category"].length
                                : 0, // Handle empty case
                            itemBuilder: (BuildContext context, index) =>
                                GestureDetector(
                              onTap: () {
                                controllerCategory.subCategory.value =
                                    selectedSubCategory[0]["sub_category"]
                                        [index]["sub_category_id"];

                                // Get.to(HomeCategoryDetailView());
                              },
                              child: Container(
                                margin: const EdgeInsets.only(left: 25),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.2),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: Offset(2, 2), // shadow direction: bottom right
                                  //   ),
                                  // ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Obx(
                                      () => Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: controllerCategory
                                                          .subCategory.value ==
                                                      selectedSubCategory[0][
                                                                  "sub_category"]
                                                              [index]
                                                          ["sub_category_id"]
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                              width: 2),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              selectedSubCategory[0]
                                                              ["sub_category"]
                                                          [index]
                                                      ["sub_category_img"] ??
                                                  "https://t4.ftcdn.net/jpg/04/70/29/97/360_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Obx(
                                      () => Text(
                                        selectedSubCategory[0]["sub_category"]
                                                [index]["sub_category_name"] ??
                                            "",
                                        // categoryData[index]["category_name"],
                                        // selectedSubCategory[index],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: controllerCategory
                                                      .subCategory.value ==
                                                  selectedSubCategory[0]
                                                          ["sub_category"]
                                                      [index]["sub_category_id"]
                                              ? Colors.blue
                                              : Colors.grey[700],
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CategoryDetailGridView(),
                  ),
                  // ShopViewSubCategory(),

                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: HomeTabBarTabs(),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
