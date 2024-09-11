import 'package:get/get.dart';

class AddToCartController extends GetxController {
  RxList cartProducts = [].obs;
  RxInt test = 1.obs;
  //TODO: Implement AddToCartController

  var quantityIndex = 1.obs;
  void incrementQuantity(String cartId) {
    for (var cartItem in cartProducts) {
      if (cartItem["cartId"] == cartId) {
        cartItem["quantity"]++;
      }
    }
    cartProducts.refresh();
  }

  void decrementQuantity(String cartId) {
    for (var cartItem in cartProducts) {
      if (cartItem["cartId"] == cartId && cartItem["quantity"] > 1) {
        cartItem["quantity"]--;
      }
    }
    cartProducts.refresh();
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
}
