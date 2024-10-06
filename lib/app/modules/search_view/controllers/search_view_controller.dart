import 'package:get/get.dart';

import '../../../data/alldata.dart';

class SearchViewController extends GetxController {
  var searchResult = [].obs;
  void searchQuery(String query) {
    if (query.isEmpty) {
      searchResult.value = [];
    } else {
      searchResult.value = [];
      print(searchResult);
      // Filter data based on search query
      List filteredData = products
          .where((elements) =>
              elements['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
      searchResult.value = filteredData;
    }
  }

  final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void increment() => count.value++;
}
