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

//THIS IS FOR PRODUCT_DETAIL_CIRCULAR_COLORED_CONTAINER
  final count = 0.obs;
  var color = 0xffFF0000.obs; // Default color
  var selectedColorName = ''.obs; // Default color name

  Map<int, String> colorNames = {
    0xffFF0000: 'Red',
    0xff00FF00: 'Green',
    0xff0000FF: 'Blue',
    0xffFFFF00: 'Yellow',
    0xffFFA500: 'Orange',
    0xff800080: 'Purple',
    0xffA52A2A: 'Brown',
    0xffFFC0CB: 'Pink',
    0xff808080: 'Gray',
    0xff000000: 'Black',
    0xffFFFFFF: 'White',
    0xff008080: 'Teal',
    0xff8B4513: 'SaddleBrown',
    0xffD2691E: 'Chocolate',
    0xffFFD700: 'Gold',
    0xff00FFFF: 'Cyan',
    0xff7FFF00: 'Chartreuse',
    0xffDC143C: 'Crimson',
    0xffFF1493: 'DeepPink',
    0xffFF6347: 'Tomato',
  };

  void updateColor(int color, List<String> images) {
    selectedColor.value = color;
    selectedColorName.value = colorNames[color] ?? 'Unknown';
  }
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

//   void increment() => count.value++;
// }
