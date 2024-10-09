import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  var detailViewProductTitleShow = false.obs;
  var detailViewProductDescShow = false.obs;
  var detailViewProductCustomClickableContainer = 0.obs;
  var selectedColorIndex = 0.obs;
  var selectedColor = 0.obs; // To store the selected color
  var selectedImages = [].obs; // To store the images associated with the color
  var sizeIndex = 0.obs; //["S","M","L","XL","XXL"]
  var quantityIndex = 1.obs; //["+1,2,3,4"]
  var selectedSize = "".obs;

  void updateSelectedColor(int color, List<String> images) {
    selectedColor.value = color;
    // (color != 0) ? color : 0xffFF0000;
    selectedImages.assignAll(images);
  }

  void clear() {
    selectedColor.value = 0;
    selectedSize.value = '';
    quantityIndex.value = 1;
    detailViewProductCustomClickableContainer.value = 0;
    // selectedImages.clear(); // Clear the image list
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
