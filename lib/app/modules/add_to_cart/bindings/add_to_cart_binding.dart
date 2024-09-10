import 'package:get/get.dart';

import '../controllers/add_to_cart_controller.dart';

class AddToCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddToCartController>(
      () => AddToCartController(),
    );
  }
}
