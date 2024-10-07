import 'package:d_and_s/app/modules/search_view/controllers/search_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/text_size.dart';

import '../../favourites/controllers/favourites_controller.dart';
import '../../home/controllers/home_controller.dart';

import '../../product_detail/controllers/product_detail_controller.dart';
import '../../product_detail/views/product_detail_view.dart';

class SearchGridView extends StatelessWidget {
  final controllerSearch = Get.put(SearchViewController());
  final controllerHome = Get.put(HomeController());

  final controllerProduct = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());

  SearchGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controllerSearch.searchResult.length,
      itemBuilder: (BuildContext context, index) {
        final selectedSearchResult = controllerSearch.searchResult[index];
        // Map color = selectedSearchResult['color'];
        // List imgList = color.isNotEmpty
        //     ? color.entries.first.value
        //     : [
        //         'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
        //       ];
        // String imageUrl = imgList[0];
        return GestureDetector(
          onTap: () {
            Map imageStore = selectedSearchResult["color"] ?? {};
            Map images = imageStore.isNotEmpty
                ? selectedSearchResult["color"]
                : {
                    0x00000000: [
                      'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                    ],
                  };
            List test = images.entries.first.value;
            controllerProduct.selectedImages.assignAll(test);
            Get.to(
              ProductDetailView(
                  data: selectedSearchResult['name'] == "NO MATCH FOUND !!"
                      ? []
                      : selectedSearchResult),

              transition:
                  Transition.leftToRightWithFade, // Professional fade-in effect
              duration: const Duration(
                  milliseconds: 500), // Smooth duration for the transition
              curve: Curves.easeInOut, // Adds smoothness with easing in and out
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black,
              //     spreadRadius: 0,
              //     blurRadius: 1,
              //     offset: Offset(0, 0),
              //   ),
              // ],
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: selectedSearchResult['name'] == "NO MATCH FOUND !!"
                      ? Colors.red
                      : Colors.black,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    selectedSearchResult['name'],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: TextSize.small,
                        fontWeight:
                            selectedSearchResult['name'] == "NO MATCH FOUND !!"
                                ? FontWeight.w900
                                : FontWeight.w100,
                        color:
                            selectedSearchResult['name'] == "NO MATCH FOUND !!"
                                ? Colors.red
                                : Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    // GridView.builder(
    //                 itemCount: controllerSearch.searchResult.length,
    //                 gridDelegate:
    //                     const SliverGridDelegateWithFixedCrossAxisCount(
    //                   crossAxisCount: 2,
    //                   crossAxisSpacing: 8.0,
    //                   mainAxisSpacing: 10.0,
    //                   childAspectRatio: 0.6,
    //                 ),
    //                 itemBuilder: (BuildContext context, index) {
    //                   final selectedSearchResult = controllerSearch.searchResult[index];
    //                   Map color = selectedSearchResult['color'];
    //                   List imgList = color.isNotEmpty
    //                       ? color.entries.first.value
    //                       : [
    //                           'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
    //                         ];
    //                   String imageUrl = imgList[0];

    //                   return GestureDetector(
    //                     onTap: () {
    //                       Map imageStore = selectedSearchResult["color"] ?? {};
    //                       Map images = imageStore.isNotEmpty
    //                           ? selectedSearchResult["color"]
    //                           : {
    //                               0x00000000: [
    //                                 'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
    //                               ],
    //                             };
    //                       List test = images.entries.first.value;
    //                       controllerProduct.selectedImages.assignAll(test);
    //                       Get.to(
    //                         ProductDetailView(data: selectedSearchResult),

    //                         transition: Transition
    //                             .leftToRightWithFade, // Professional fade-in effect
    //                         duration: const Duration(
    //                             milliseconds:
    //                                 500), // Smooth duration for the transition
    //                         curve: Curves
    //                             .easeInOut, // Adds smoothness with easing in and out
    //                       );
    //                     },
    //                     child: Container(
    //                       decoration: const BoxDecoration(
    //                         // border: Border.all(color: AppColors.silverBorder, width: 5),
    //                         color: Colors.white,
    //                         // borderRadius: BorderRadius.circular(16),
    //                       ),
    //                       child: Padding(
    //                         padding: const EdgeInsets.all(8.0),
    //                         child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             Stack(
    //                               children: [
    //                                 Container(
    //                                   decoration: BoxDecoration(
    //                                     image: DecorationImage(
    //                                       image: NetworkImage(
    //                                           imageUrl), // Replace with actual image URL
    //                                       fit: BoxFit.contain,
    //                                     ),
    //                                   ),
    //                                   height: Adaptive.h(25),
    //                                 ),
    //                                 Positioned(
    //                                   right: 0,
    //                                   child: GestureDetector(
    //                                     onTap: () {
    //                                       controllerFavorites.searchProductId(
    //                                           selectedSearchResult[
    //                                               "product_id"],
    //                                           selectedSearchResult);
    //                                     },
    //                                     child: Container(
    //                                       decoration: BoxDecoration(
    //                                         borderRadius:
    //                                             BorderRadius.circular(8),
    //                                         color: AppColors.lightSilver,
    //                                       ),
    //                                       child: Padding(
    //                                         padding: const EdgeInsets.all(5.0),
    //                                         child: Obx(
    //                                           () => Icon(
    //                                             controllerFavorites.isFavorite(
    //                                                     selectedSearchResult[
    //                                                         "product_id"])
    //                                                 ? Icons.favorite
    //                                                 : Icons.favorite_border,
    //                                             color: Colors.black
    //                                                 .withOpacity(0.7),
    //                                             size: 20,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                             const SizedBox(height: 10),
    //                             Text(
    //                               selectedSearchResult['name'] ?? "",
    //                               overflow: TextOverflow.ellipsis,
    //                               style: TextStyle(
    //                                   fontSize: TextSize.small,
    //                                   fontWeight: FontWeight.w700),
    //                             ),
    //                             const SizedBox(height: 5),
    //                             Row(
    //                               mainAxisAlignment:
    //                                   MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Text(
    //                                   'Rs. ${selectedSearchResult['price']}',
    //                                   style: TextStyle(
    //                                     fontSize: TextSize.small,
    //                                     fontWeight: FontWeight.bold,
    //                                     color: Colors.red,
    //                                   ),
    //                                 ),
    //                                 // Positioned(
    //                                 //   right: 0,
    //                                 //   top: 40,
    //                                 //   child:
    //                                 GestureDetector(
    //                                   onTap: () {
    //                                     showModalBottomSheet<void>(
    //                                       context: context,
    //                                       builder: (BuildContext context) {
    //                                         return HomeSectionTabBarTabsBottomSheet(
    //                                           homeSectionTabsData:
    //                                               selectedSearchResult,
    //                                           homeSectionTabsImg: imageUrl,
    //                                         );
    //                                       },
    //                                     );
    //                                   },
    //                                   child: Container(
    //                                     decoration: BoxDecoration(
    //                                       borderRadius:
    //                                           BorderRadius.circular(8),
    //                                       color: AppColors.lightSilver,
    //                                     ),
    //                                     child: Padding(
    //                                       padding: const EdgeInsets.all(5.0),
    //                                       child: Icon(
    //                                         Icons.shopping_cart_outlined,
    //                                         size: 20,
    //                                         color:
    //                                             Colors.black.withOpacity(0.7),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 // ),
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   );
    //                 },
    //               );
  }
}
