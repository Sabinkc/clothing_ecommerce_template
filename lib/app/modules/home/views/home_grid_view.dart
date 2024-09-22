import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/data/alldata.dart';
import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/home/views/home_tabBar/home_custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/category_data.dart';
import 'home_tabBar/home_tabBar_tabs.dart';

class HomeGridView extends StatelessWidget {
  final controllerHomeController = Get.put(HomeController());
  final List categories = [
    "Shoes",
    "Hoodie",
    "Shirts",
    "Jacket",
    "Watches",
    "Jeans",
  ];

  HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      // elevation: 5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: categoryData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Adjust this for wider layouts if needed
              crossAxisSpacing: 12.0, // Space between grid items
              mainAxisSpacing: 10.0, // Space between grid items
              childAspectRatio: 0.9, // Adjust the aspect ratio to make it neat
            ),
            itemBuilder: (BuildContext context, index) {
              // var productCategory = products[categories[index]];

              // // Get the first product in the category
              // var firstProduct =
              //     productCategory != null && productCategory.isNotEmpty
              //         ? productCategory[0]
              //         : null;

              // // Extract the first color and its image URLs
              // var firstColorUrls = firstProduct != null
              //     ? firstProduct['color']?.values?.first
              //     : null;

              // // Get the first image URL if available
              // var imageUrl = firstColorUrls != null && firstColorUrls.isNotEmpty
              //     ? firstColorUrls[0]
              //     : 'https://via.placeholder.com/150'; // Fallback placeholder image

              return GestureDetector(
                onTap: () {
                  controllerHomeController.index.value =
                      categoryData[index]["category_name"];
                  Get.to(HomeCategoryDetailView());
                },
                child: Container(
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.3), width: 1),
                          image: DecorationImage(
                            image: NetworkImage(
                                categoryData[index]["category_image"]),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        categoryData[index]["category_name"],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeCategoryDetailView extends StatelessWidget {
  final controllerHomeController = Get.put(HomeController());
  HomeCategoryDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightSilver,
        title: Text(controllerHomeController.index.value),
        centerTitle: false,
      ),
      body: Container(
        color: AppColors.lightSilver,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              // HomeGridView()
              // HomeCustomTab(),

              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        HomeTabBarTabs(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  final controllerHomeController = Get.put(HomeController());
  HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            controllerHomeController.index.value =
                categoryData[index]["category_name"];
            Get.to(HomeCategoryDetailView());
          },
          child: Container(
            margin: EdgeInsets.only(right: 25),
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
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.3), width: 1),
                    image: DecorationImage(
                      image:
                          NetworkImage(categoryData[index]["category_image"]),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  categoryData[index]["category_name"],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[700],
                    // fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
