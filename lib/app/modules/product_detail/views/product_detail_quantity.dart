import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailQuantity extends StatelessWidget {
  final controller = Get.put(ProductDetailController());
  ProductDetailQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              if (controller.quantityIndex.value > 0) {
                controller.quantityIndex.value--;
              }
            },
            child: const Icon(Icons.remove)),
        const SizedBox(width: 20),
        Obx(
          () => Text(
            controller.quantityIndex.value.toString(),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
            onTap: () {
              controller.quantityIndex.value++;
            },
            child: const Icon(Icons.add)),
      ],
    );
  }
}
