import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../data/category_data.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/views/home_grid_view.dart';
import '../../home/views/home_tabBar/home_custom_tab.dart';
import '../../home/views/home_tabBar/home_tabBar_tabs.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  final controllerHomeController = Get.put(HomeController());
  CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightSilver,
        title: Text("Category"),
        centerTitle: false,
      ),
      body: Container(
        color: AppColors.lightSilver,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: categoryData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        4, // Adjust this for wider layouts if needed
                    crossAxisSpacing: 12.0, // Space between grid items
                    mainAxisSpacing: 10.0, // Space between grid items
                    childAspectRatio:
                        0.66, // Adjust the aspect ratio to make it neat
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        controllerHomeController.index.value =
                            categoryData[index]["category_name"];
                        Get.to(HomeCategoryDetailView());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3),
                                    width: 1),
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
                                fontSize: TextSize.small,
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
            ],
          ),
        ),
      ),
    );
  }
}
