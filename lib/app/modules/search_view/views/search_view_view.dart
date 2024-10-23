import 'package:d_and_s/app/modules/search_view/views/search_grid_view.dart';
import 'package:d_and_s/app/modules/search_view/views/search_list_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';
import '../../favourites/controllers/favourites_controller.dart';
import '../../product_detail/controllers/product_detail_controller.dart';

import '../../reusable_widgets/filter_view/filter_view.dart';
import '../controllers/search_view_controller.dart';

class SearchViewView extends GetView<SearchViewController> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();
  final SearchViewController controllerSearch = Get.put(SearchViewController());
  final controllerFavorites = Get.put(FavouritesController());

  final controllerProduct = Get.put(ProductDetailController());

  SearchViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Request focus after the widget is built
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   FocusScope.of(context).requestFocus(searchFocusNode);
    // });

    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: AppColors.lightSilver,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: AppColors.appbarBg,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              // color: AppColors.appbarBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: searchController,
              autofocus: true,
              // focusNode: searchFocusNode, // Set focus node for the TextField
              decoration: InputDecoration(
                hintText: "Search products...",
                prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                suffixIcon: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => FilterView(),
                    );
                  },
                  child: Icon(Icons.filter_list, color: Colors.grey[600]),
                ),
                border: InputBorder.none,
              ),
              onSubmitted: (value) {
                controllerSearch.onSubmitOrChange.value = 0;
                controllerSearch.searchQuery(value);
              },
              onChanged: (value) {
                controllerSearch.onSubmitOrChange.value = 1;
                controllerSearch.searchQuery(
                    value); // Call searchQuery on every text change
              },
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(
          () => Padding(padding: const EdgeInsets.all(16.0), child: changeView()
              // controllerSearch.searchResult.isEmpty
              //     ? Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             'Recommended for you',
              //             style: TextStyle(
              //                 fontSize: 18, fontWeight: FontWeight.bold),
              //           ),
              //           const SizedBox(height: 20),
              //           Wrap(
              //             spacing: 10.0,
              //             runSpacing: 10.0,
              //             children: [
              //               _buildRecommendedItem('Shoes'),
              //               _buildRecommendedItem('Jeans'),
              //               _buildRecommendedItem('Shirts'),
              //               _buildRecommendedItem('Hoodies'),
              //               _buildRecommendedItem('Jackets'),
              //             ],
              //           ),
              //         ],
              //       )
              //     : Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: SearchGridView(),
              //       ),
              ),
        ),
      ),
    );
  }

  changeView() {
    if (controllerSearch.searchResult.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommended for you',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              _buildRecommendedItem('Shoes'),
              _buildRecommendedItem('Jeans'),
              _buildRecommendedItem('Shirts'),
              _buildRecommendedItem('Hoodies'),
              _buildRecommendedItem('Jackets'),
            ],
          ),
        ],
      );
    } else if (controllerSearch.onSubmitOrChange.value == 0) {
      return SearchGridView();
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SearchListView(),
      );
    }
  }
}

Widget _buildRecommendedItem(String itemName) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      itemName,
      style: const TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}
