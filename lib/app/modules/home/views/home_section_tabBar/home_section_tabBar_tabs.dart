// ignore_for_file: file_names, must_be_immutable

import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../constants/text_size.dart';
import '../../../../data/alldata.dart';
import '../../../product_detail/views/product_detail_view.dart';
import 'home_section_tabBar_tabs_bottomSheet.dart';

class HomeSectionTabBarTabs extends StatelessWidget {
  HomeSectionTabBarTabs({
    super.key,
  });
  final controller = Get.put(HomeController());

  final controllerProduct = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());
  var index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Get the selected tab's products list
        var selectedProducts = products
            .where((element) =>
                element["featured"] == controller.homeSectionindex.value)
            .toList();
        // Create a list of observable indices for each product
        List<RxInt> imageIndices = List.generate(
          selectedProducts.length,
          (index) => 0.obs,
        );

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: selectedProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.6,
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

            void onSwipeLeft() {
              if (imageIndices[index].value < imageUrls.length - 1) {
                imageIndices[index].value++;
              } else {
                imageIndices[index].value = 0;
              }
            }

            void onSwipeRight() {
              if (imageIndices[index].value > 0) {
                imageIndices[index].value--;
              } else {
                imageIndices[index].value = imageUrls.length - 1;
              }
            }

            // imageUrls.isNotEmpty
            // ? imageUrls[0]
            // : 'https://static-00.iconduck.com/assets.00/no-image-icon-512x512-lfoanl0w.png'; // First image URL of the first color
            return GestureDetector(
              onTap: () {
                controllerProduct.selectedColorName.value = '';
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
                  ProductDetailView(data: product),

                  // transition: Transition
                  //     .leftToRightWithFade, // Professional fade-in effect
                  // duration: const Duration(
                  //     milliseconds: 500), // Smooth duration for the transition
                  // curve: Curves
                  //     .easeInOut, // Adds smoothness with easing in and out
                );
              },
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      // border: Border.all(color: AppColors.silverBorder, width: 5),
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Obx(
                                () => GestureDetector(
                                  onHorizontalDragEnd: (details) {
                                    // Detect swipe direction based on velocity
                                    if (details.velocity.pixelsPerSecond.dx >
                                        0) {
                                      // Swiped right
                                      onSwipeRight();
                                    } else if (details
                                            .velocity.pixelsPerSecond.dx <
                                        0) {
                                      // Swiped left
                                      onSwipeLeft();
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(imageUrls[imageIndices[
                                                index]
                                            .value]), // Replace with actual image URL
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    height: Adaptive.h(25),
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   top: 10,
                              //   right: 10,
                              //   child: GestureDetector(
                              //     onTap: () {
                              //       controllerFavorites.searchProductId(
                              //           product["product_id"], product);
                              //     },
                              //     child: Container(
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(8),
                              //         color: AppColors.lightSilver,
                              //       ),
                              //       child: Padding(
                              //         padding: const EdgeInsets.all(5.0),
                              //         child: Obx(
                              //           () => Icon(
                              //             controllerFavorites.isFavorite(
                              //                     product["product_id"])
                              //                 ? Icons.favorite
                              //                 : Icons.favorite_border,
                              //             color: Colors.black.withOpacity(0.7),
                              //             size: 20,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rs.${product["price"] ?? ""}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(width: 5),

                                    const Spacer(),
                                    // Positioned(
                                    //   right: 0,
                                    //   top: 40,
                                    //   child:
                                    GestureDetector(
                                      onTap: () {
                                        controllerProduct
                                            .selectedColorName.value = '';
                                        Map imageStore = product["color"] ?? {};
                                        Map images = imageStore.isNotEmpty
                                            ? product["color"]
                                            : {
                                                0x00000000: [
                                                  'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                                                ],
                                              };
                                        List test = images.entries.first.value;
                                        controllerProduct.selectedImages
                                            .assignAll(test);
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
                                        margin:
                                            const EdgeInsets.only(right: 15),
                                        //   decoration: BoxDecoration(
                                        //     borderRadius:
                                        //         BorderRadius.circular(8),
                                        //     color: AppColors.lightSilver,
                                        //   ),
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.all(5.0),
                                        child: Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 18,
                                          color: Colors.black.withOpacity(0.7),
                                        ),
                                        //   ),
                                      ),
                                    ),

                                    // ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      "${product["realprice"]}",
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 2,
                                        decorationColor: Colors.grey,
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "${product["discount"]}%",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Expanded(
                                      child: Text(
                                        "Original Price ",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    product["name"] ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: TextSize.small,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                  // Tags(tagTitle: "${product["discount"]}%"),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
