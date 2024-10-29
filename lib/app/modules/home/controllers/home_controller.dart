import 'package:get/get.dart';

import '../../../data/category_data.dart';

class HomeController extends GetxController {
  var index = 'Pants'.obs;
  var homeSectionindex = 'New Arrivals'.obs;

  var searchResults = [].obs;

  void searchCategory(String query) {
    if (query.isEmpty) {
      searchResults.value = categoryData; // show all if search is empty
    } else {
      List filteredData = categoryData
          .where((category) =>
              category['category_name']
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              (category['sub_category'] as List).any((sub) =>
                  sub['sub_category_name']
                      .toLowerCase()
                      .contains(query.toLowerCase())))
          .toList();

      searchResults.value = filteredData;
    }
  }

  @override
  void onInit() {
    searchResults.value = categoryData;
    super.onInit();
  }

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
  // changeView(){
  //   if(index.value == 0){
  //     return BottomContainer();
  //   }
  // }

  // void increment() => count.value++;
}
