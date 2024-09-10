import 'package:get/get.dart';

import '../views/home_tabBar/home_tabBar_tabs.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var index = 'Watches'.obs;
  var detailViewProductTitleShow = false.obs;
  var detailViewProductDescShow = false.obs;
  var detailViewProductCustomClickableContainer = 0.obs;
  var a = ''.obs;
  var selectedColorIndex = 0.obs;
  var selectedColor = 0.obs; // To store the selected color
  var selectedImages = [].obs; // To store the images associated with the color
  var sizeIndex = 0.obs; //["S","M","L","XL","XXL"]

  void updateSelectedColor(int color, List<String> images) {
    selectedColor.value = color;
    selectedImages.assignAll(images);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  // changeView(){
  //   if(index.value == 0){
  //     return BottomContainer();
  //   }
  // }

  // void increment() => count.value++;
}
