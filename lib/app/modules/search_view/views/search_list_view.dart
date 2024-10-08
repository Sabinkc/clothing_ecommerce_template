import 'package:d_and_s/app/modules/search_view/controllers/search_view_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/text_size.dart';

import '../../favourites/controllers/favourites_controller.dart';
import '../../home/controllers/home_controller.dart';

import '../../product_detail/controllers/product_detail_controller.dart';
import '../../product_detail/views/product_detail_view.dart';

class SearchListView extends StatelessWidget {
  final controllerSearch = Get.put(SearchViewController());
  final controllerHome = Get.put(HomeController());

  final controllerProduct = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());

  SearchListView({super.key});

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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  // border: BorderDirectional(
                  //   bottom: BorderSide(color: Colors.grey),
                  // ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     spreadRadius: 0,
                  //     blurRadius: 1,
                  //     offset: Offset(0, 0),
                  //   ),
                  // ],
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: selectedSearchResult['name'] == "NO MATCH FOUND !!"
                          ? Colors.red
                          : Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        selectedSearchResult['name'],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: TextSize.small,
                            fontWeight: selectedSearchResult['name'] ==
                                    "NO MATCH FOUND !!"
                                ? FontWeight.w900
                                : FontWeight.w100,
                            color: selectedSearchResult['name'] ==
                                    "NO MATCH FOUND !!"
                                ? Colors.red
                                : Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              // Divider(),
            ],
          ),
        );
      },
    );
    
  }
}
