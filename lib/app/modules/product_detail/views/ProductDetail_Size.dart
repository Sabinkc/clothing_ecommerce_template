// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';

import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailSize extends StatelessWidget {
  final List sizeList;
  final controller = Get.put(ProductDetailController());
  ProductDetailSize({super.key, required this.sizeList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: sizeList.length,
        itemBuilder: (BuildContext context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child:
              // Obx(
              //   () =>
              GestureDetector(
            onTap: () {
              controller.selectedSize.value = sizeList[index];
              controller.sizeIndex.value = index;
            },
            child: sizeList[index].isNotEmpty
                ? Obx(
                    () => Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      // width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: controller.sizeIndex.value == index
                              ? Color(0xffF1C338)
                              : Colors.grey,
                          // width: 5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Center(
                          child: Text(sizeList[index]),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
        ),
      ),
      // ),
    );
  }
}
