import 'package:get/get.dart';

class AddToCartController extends GetxController {
  RxList cartProducts = [].obs;
  RxList selectedProducts = [].obs;

  // var isSelected = controller.selectedProducts.contains(item["cartId"]).obs;
  // void toogleSelected(){
  //   if (valueCheckBox == true) {
  //                         controller.selectedProducts.add(item["cartId"]);
  //                       } else {
  //                         controller.selectedProducts.remove(item["cartId"]);
  //                       }
  // }
  //TODO: Implement AddToCartController

  RxInt totalPrice = 0.obs;

  void calculateTotalPrice() {
    num total = 0;
    for (var product in cartProducts) {
      if (selectedProducts.contains(product["cartId"])) {
        total += (product["price"] * product["quantity"]);
      }
    }
    totalPrice.value = total.toInt();
  }

  void toggleSelected(String cartId) {
    if (selectedProducts.contains(cartId)) {
      selectedProducts.remove(cartId);
    } else {
      selectedProducts.add(cartId);
    }
    calculateTotalPrice();
  }

  var quantityIndex = 1.obs;

  void incrementQuantity(String cartId) {
    for (var cartItem in cartProducts) {
      if (cartItem["cartId"] == cartId) {
        cartItem["quantity"]++;
      }
    }
    cartProducts.refresh();
    calculateTotalPrice();
  }

  void decrementQuantity(String cartId) {
    for (var cartItem in cartProducts) {
      if (cartItem["cartId"] == cartId && cartItem["quantity"] > 1) {
        cartItem["quantity"]--;
      }
    }
    cartProducts.refresh();
    calculateTotalPrice();
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
