import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/ProductDetailView/ProductDetailView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_size.dart';
import '../../../../data/alldata.dart';

class HomeTabBarTabs extends StatelessWidget {
  HomeTabBarTabs({
    super.key,
  });
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Get the selected tab's products list
        var selectedProducts = products[controller.index.value] ?? [];

        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: selectedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (BuildContext context, index) {
            var product = selectedProducts[index];

            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.silverBorder, width: 5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // var productColors = (product["color"] as List<dynamic>)
                        //     .map((e) => e as int)
                        //     .toList();
                        var reviews = product["reviews"] as List<dynamic>;
                        var firstReview =
                            reviews.isNotEmpty ? reviews[0] : null;
                        Map images = product["color"];
                        List test = images.entries.first.value;
                        controller.selectedImages.assignAll(test);
                        Get.to(
                          ProductDetailView(
                            // title: product["title"] ?? "NO TITLE",
                            // description:
                            //     product["description"] ?? "NO DESCRIPTION",
                            // productColors: productColors,

                            data: product,
                            // attributesdata: products,
                            // product["color"],
                            // productColors: productColors,
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png'), // Replace with actual image URL
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 100,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      product["name"] ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: TextSize.small),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Rs. ${product["price"]}",
                      style: TextStyle(
                        fontSize: TextSize.small,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
