// ignore_for_file: must_be_immutable

import 'package:d_and_s/app/modules/reusable_widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../../../data/shop_data.dart';
import '../../favourites/controllers/favourites_controller.dart';
import '../../home/views/home_section_tabBar/home_section_tabBar_tabs_bottomSheet.dart';
import '../../product_detail/controllers/product_detail_controller.dart';
import '../../product_detail/views/product_detail_view.dart';

import '../controllers/shop_controller.dart';
import 'shop_view_appbar.dart';

class ShopView extends GetView<ShopController> {
  final searchController = TextEditingController();
  ShopView({Key? key}) : super(key: key);
  final controllerProduct = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());
  var index = 0.obs;
  @override
  Widget build(BuildContext context) {
    // Create a list of observable indices for each product
    List<RxInt> imageIndices = List.generate(
      shopData.length,
      (index) => 0.obs,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Container(
          color: AppColors.appbarBg,
          child: Column(
            children: [
              const ShopViewAppBar(),
              SearchBox(
                showFilter: false,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ShopViewSubCategory(),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(SearchViewView());
              //   },
              //   child: AbsorbPointer(
              //     child: TextFormFieldReusable(
              //       hint: "Search",
              //       textEditingController: searchController,
              //     ),
              //   ),
              // ),

              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: shopData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (BuildContext context, index) {
                  var product = shopData[index];
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

                  return GestureDetector(
                      onTap: () {
                        controllerProduct.selectedColorName.value = '';

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
                          //     milliseconds:
                          //         500), // Smooth duration for the transition
                          // curve: Curves
                          //     .easeInOut, // Adds smoothness with easing in and out
                        );
                      },
                      child: Stack(children: [
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
                                        border: const BorderDirectional(
                                          bottom: BorderSide(
                                            color: AppColors.primaryColor,
                                            width: 2,
                                          ),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(imageUrls[
                                              imageIndices[index]
                                                  .value]), // Replace with actual image URL
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      height: Adaptive.h(25),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Rs.${product["price"] ?? ""}",
                                            style: TextStyle(
                                                fontSize: TextSize.small,
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.w700),
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
                                              Map imageStore =
                                                  product["color"] ?? {};
                                              Map images = imageStore.isNotEmpty
                                                  ? product["color"]
                                                  : {
                                                      0x00000000: [
                                                        'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                                                      ],
                                                    };
                                              List test =
                                                  images.entries.first.value;
                                              controllerProduct.selectedImages
                                                  .assignAll(test);
                                              showModalBottomSheet<void>(
                                                  isScrollControlled: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return DraggableScrollableSheet(
                                                      expand: false,
                                                      initialChildSize:
                                                          0.8, // Set initial height of bottom sheet
                                                      maxChildSize:
                                                          0.8, // Max height when fully expanded
                                                      minChildSize:
                                                          0.3, // Minimum height of bottom sheet
                                                      builder: (BuildContext
                                                                  context,
                                                              scrollController) =>
                                                          HomeSectionTabBarTabsBottomSheet(
                                                        homeSectionTabsData:
                                                            product,
                                                        homeSectionTabsImg:
                                                            imageUrl,
                                                      ),
                                                    );
                                                  });
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 15),
                                              child: Icon(
                                                Icons.shopping_cart_outlined,
                                                size: 25,
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text(
                                            "${product["realprice"]}",
                                            style: const TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationThickness: 2,
                                              decorationColor: Colors.grey,
                                              fontSize: 12,
                                              // color: AppColors.grey,
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
                                              style: TextStyle(
                                                fontSize: 12,
                                                // color: AppColors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Text(
                                          product["name"] ?? "",
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: AppColors.titleColorGrey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            // color: AppColors.defaultColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // Tags(tagTitle: "${product["discount"]}%"),
                          ),
                        )
                      ]));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


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
                                //         borderRadius:
                                //             BorderRadius.circular(8),
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
                                //             color: Colors.black
                                //                 .withOpacity(0.7),
                                //             size: 20,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),