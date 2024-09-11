// import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddToCartQuantity extends StatelessWidget {
//   final controller = Get.put(AddToCartController());
//   AddToCartQuantity({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           GestureDetector(
//               onTap: () {
//                 controller.quantityIndex.value++;
//               },
//               child: Icon(Icons.add)),
//           SizedBox(width: 10),
//           Obx(
//             () => Text(
//               controller.quantityIndex.value.toString(),
//             ),
//           ),
//           SizedBox(width: 10),
//           GestureDetector(
//               onTap: () {
//                 if (controller.quantityIndex.value > 0) {
//                   controller.quantityIndex.value--;
//                 }
//               },
//               child: Icon(Icons.remove)),
//         ],
//       ),
//     );
//   }
// }
