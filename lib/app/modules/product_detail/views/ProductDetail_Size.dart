import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailSize extends StatelessWidget {

  final List sizeList;
  final controller = Get.put(ProductDetailController());
  ProductDetailSize({super.key, required this.sizeList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
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
                      // width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: controller.sizeIndex.value == index
                              ? AppColors.lightBlue
                              : Colors.white,
                          // width: 5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Center(
                          child: Text(sizeList[index]),
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ),
        ),
      ),
      // ),
    );
  }
}
