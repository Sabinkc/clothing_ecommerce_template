import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_size.dart';
import '../../../../data/alldata.dart';
import '../../../product_detail/views/product_detail_view.dart';

class HomeSectionTabBarTabs extends StatelessWidget {
  HomeSectionTabBarTabs({
    super.key,
  });
  final controller = Get.put(HomeController());
  final controller_product = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Get the selected tab's products list
        var selectedProducts = products
                .where((element) =>
                    element["featured"] == controller.homeSectionindex.value)
                .toList() ??
            [];

        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: selectedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (BuildContext context, index) {
            var product = selectedProducts[index];
            Map colorMap = product["color"] ?? {};
            List imageUrls = colorMap.isNotEmpty
                ? colorMap.entries.first.value
                : [
                    'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                  ]; // Gets the list of images for the first color
            String imageUrl = imageUrls[0];
            // imageUrls.isNotEmpty
            // ? imageUrls[0]
            // : 'https://static-00.iconduck.com/assets.00/no-image-icon-512x512-lfoanl0w.png'; // First image URL of the first color
            return Container(
              decoration: BoxDecoration(
                // border: Border.all(color: AppColors.silverBorder, width: 5),
                color: Colors.white,
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
                        // var reviews = product["reviews"];
                        // var firstReview =
                        //     reviews.isNotEmpty ? reviews[0] : null;
                        Map imageStore = product["color"] ?? {};
                        Map images = imageStore.isNotEmpty
                            ? product["color"]
                            : {
                                0x00000000: [
                                  'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                                ],
                              };
                        List test = images.entries.first.value;
                        controller_product.selectedImages.assignAll(test);
                        Get.to(
                          ProductDetailView(
                              // title: product["title"] ?? "NO TITLE",
                              // description:
                              //     product["description"] ?? "NO DESCRIPTION",
                              // productColors: productColors,

                              data: product
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
                                imageUrl), // Replace with actual image URL
                            fit: BoxFit.contain,
                          ),
                        ),
                        height: Adaptive.h(20),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      product["name"] ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: TextSize.small,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Rs. ${product["price"] ?? ""}",
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
