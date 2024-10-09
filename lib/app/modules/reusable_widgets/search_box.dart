import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_view/controllers/search_view_controller.dart';
import '../search_view/views/search_view_view.dart';
import 'filter_view/filter_view.dart';

class SearchBox extends StatelessWidget {
  final bool showFilter;
  final controllerSearch = Get.put(SearchViewController());
  SearchBox({super.key, required this.showFilter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: GestureDetector(
        onTap: () {
          controllerSearch.searchResult.value = [];
          Get.to(SearchViewView());
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: Colors.grey),
          ),
          height: 45,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              const Icon(Icons.search),
              const SizedBox(width: 10),
              const Text(
                "Search",
                style: TextStyle(fontSize: 14),
              ),
              const Spacer(),
              showFilter == true ? GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        // shape: const RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.vertical(
                        //     top: Radius.circular(20),
                        //   ),
                        // ),
                        context: context,
                        builder: (BuildContext context) => FilterView());
                  },
                  child: const Icon(Icons.filter_list)):SizedBox(),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
