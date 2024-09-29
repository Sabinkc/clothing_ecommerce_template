import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text_size.dart';
import '../../data/alldata.dart';
import '../favourites/controllers/favourites_controller.dart';
import '../home/controllers/home_controller.dart';
import '../home/views/home_section_tabBar/home_section_tabBar_tabs_bottomSheet.dart';
import '../product_detail/controllers/product_detail_controller.dart';
import '../product_detail/views/product_detail_view.dart';

class RecommendationView extends StatelessWidget {
  final controller = Get.put(HomeController());
  final controllerProduct = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());
  RecommendationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Get the selected tab's products list
        List selectedProducts = products
            .where((element) => element["category"] == controller.index.value)
            .toList();

        return ListView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: selectedProducts.length,
          itemBuilder: (BuildContext context, index) {
            Map product = selectedProducts[index];
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
            return GestureDetector(
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
                controllerProduct.selectedImages.assignAll(test);
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
                width: 200,
                margin: const EdgeInsets.only(right: 20),
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
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    imageUrl), // Replace with actual image URL
                                fit: BoxFit.contain,
                              ),
                            ),
                            height: Adaptive.h(15),
                            width: double.infinity,
                          ),
                          Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                controllerFavorites.searchProductId(
                                    product["product_id"], product);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.lightSilver,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Obx(
                                    () => Icon(
                                      controllerFavorites
                                              .isFavorite(product["product_id"])
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.black.withOpacity(0.7),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product["name"] ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: TextSize.small,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rs. ${product["price"] ?? ""}",
                            style: TextStyle(
                              fontSize: TextSize.small,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return HomeSectionTabBarTabsBottomSheet(
                                    homeSectionTabsData: product,
                                    homeSectionTabsImg: imageUrl,
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.lightSilver,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 20,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
