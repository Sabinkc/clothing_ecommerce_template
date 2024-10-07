import 'package:d_and_s/app/modules/search_view/views/search_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';

import '../../reusable_widgets/filter_view/filter_view.dart';
import '../controllers/search_view_controller.dart';

class SearchViewView extends GetView<SearchViewController> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();
  final SearchViewController controllerSearch = Get.put(SearchViewController());

  SearchViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Request focus after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(searchFocusNode);
    });

    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: AppColors.lightSilver,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: searchController,
              focusNode: searchFocusNode, // Set focus node for the TextField
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
              onChanged: (value) {
                controllerSearch.searchQuery(
                    value); // Call searchQuery on every text change
              },
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(
          () => Padding(
              padding: const EdgeInsets.all(16.0),
              child: controllerSearch.searchResult.isEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Recommended for you',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                    )
                  : SearchGridView()),
        ),
      ),
    );
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
