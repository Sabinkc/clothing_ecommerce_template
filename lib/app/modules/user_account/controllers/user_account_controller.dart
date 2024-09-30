import 'package:get/get.dart';

class UserAccountController extends GetxController {
  var tabBarIndex = 0.obs;
  var changeListAndGrid = true.obs;
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
