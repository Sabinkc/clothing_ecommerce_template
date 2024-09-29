import 'package:get/get.dart';

class AddToCartController extends GetxController {
  RxList cartProducts = [].obs;
  RxList selectedProducts = [].obs;
  RxList checkoutList = [].obs;

  // var isSelected = controller.selectedProducts.contains(item["cartId"]).obs;
  // void toogleSelected(){
  //   if (valueCheckBox == true) {
  //                         controller.selectedProducts.add(item["cartId"]);
  //                       } else {
  //                         controller.selectedProducts.remove(item["cartId"]);
  //                       }
  // }


  RxInt totalPrice = 0.obs;
  void sendDataToCheckout() {
    checkoutList.value = [];
    for (var checkoutItem in cartProducts) {
      if (selectedProducts.contains(checkoutItem["cartId"])) {
        bool test = checkoutList
            .any((element) => element["cartId"] == checkoutItem["cartId"]);
        if (!test) checkoutList.add(checkoutItem);

      }
    }
  }

  void calculateBuyNow() {
    num total = 0;
    for (var buy in checkoutList) {
      total += buy["price"] * buy["quantity"];
    }
    totalPrice.value = total.toInt();
  }

  int calculateTotalPrice(String test) {
    num total = 0;
    if (test == "cart") {
      for (var product in cartProducts) {
        if (selectedProducts.contains(product["cartId"])) {
          total += (product["price"] * product["quantity"]);
        }
      }
      totalPrice.value = total.toInt();
      return total.toInt();
    } else if (test == "buy") {
      for (var buy in checkoutList) {
        total += buy["price"] * buy["quantity"];
      }
      totalPrice.value = total.toInt();
      return total.toInt();
    }
    return 0;
  }

  void toggleSelected(String cartId) {
    if (selectedProducts.contains(cartId)) {
      selectedProducts.remove(cartId);
    } else {
      selectedProducts.add(cartId);
    }
    calculateTotalPrice("cart");
  }

  var quantityIndex = 1.obs;

  void incrementQuantity(String cartId) {
    for (var cartItem in cartProducts) {
      if (cartItem["cartId"] == cartId) {
        cartItem["quantity"]++;
      }
    }
    cartProducts.refresh();
    calculateTotalPrice("cart");
  }

  void decrementQuantity(String cartId) {
    for (var cartItem in cartProducts) {
      if (cartItem["cartId"] == cartId && cartItem["quantity"] > 1) {
        cartItem["quantity"]--;
      }
    }
    cartProducts.refresh();
    calculateTotalPrice("cart");
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
}
