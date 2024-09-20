import 'package:d_and_s/app/data/alldata.dart';
import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/home/views/home_tabBar/home_custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Adjust this for wider layouts if needed
              crossAxisSpacing: 12.0, // Space between grid items
              mainAxisSpacing: 10.0, // Space between grid items
              childAspectRatio: 0.9, // Adjust the aspect ratio to make it neat
            ),
            itemBuilder: (BuildContext context, index) {
              var productCategory = products[categories[index]];

              // Get the first product in the category
              var firstProduct =
                  productCategory != null && productCategory.isNotEmpty
                      ? productCategory[0]
                      : null;

              // Extract the first color and its image URLs
              var firstColorUrls = firstProduct != null
                  ? firstProduct['color']?.values?.first
                  : null;

              // Get the first image URL if available
              var imageUrl = firstColorUrls != null && firstColorUrls.isNotEmpty
                  ? firstColorUrls[0]
                  : 'https://via.placeholder.com/150'; // Fallback placeholder image

              return GestureDetector(
                onTap: () {
                  controllerHomeController.index.value = categories[index];
                  Get.to(CategoryView());
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
                            image: NetworkImage(imageUrl),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        categories[index],
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
