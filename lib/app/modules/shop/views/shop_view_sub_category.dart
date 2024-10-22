// ignore_for_file: must_be_immutable
import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:d_and_s/app/modules/shop/controllers/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../reusable_widgets/drop_down.dart';

class ShopViewSubCategory extends StatelessWidget {
  final List<String> size = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
    "S",
    "M",
    "L",
    "XL",
    "XXL",
  ];
  final List<String> brand = [
    "Harrington",
    "H&M",
    "Adidas",
    "LV",
    "Gucci",
  ];
  final List<String> productType = [
    "Hoodie",
    "Shirts",
    "Jeans",
    "Shoes",
    "Jackets",
  ];
  final List<String> price = [
    "High to Low",
    "Low to High",
  ];
  ShopViewSubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // The drag indicator at the top of the sheet
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Center(
                  child: Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              // A header with a clear and apply button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter Options',
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(
                    Icons.filter_list,
                    color: AppColors.textColorGrey,
                  ),
                ],
              ),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Size: ",
                    style: TextStyle(
                        color: AppColors.titleColorGrey,
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  ShopViewReusableGridView(item: size.length, title: size),
                  Text(
                    "Brand: ",
                    style: TextStyle(
                        color: AppColors.titleColorGrey,
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  ShopViewReusableGridView(item: brand.length, title: brand),
                  Text(
                    "Product Type: ",
                    style: TextStyle(
                        color: AppColors.titleColorGrey,
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  ShopViewReusableGridView(
                      item: productType.length, title: productType),
                  Text(
                    "Price: ",
                    style: TextStyle(
                        color: AppColors.titleColorGrey,
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  ShopViewReusableGridView(item: price.length, title: price),
                  // ShopViewReusableRow(
                  //   title: "Size",
                  //   selectedValue: "S",
                  //   value: size,
                  // ),
                  // const Divider(),
                  // ShopViewReusableRow(
                  //   title: "Brand",
                  //   selectedValue: "Levis",
                  //   value: brand,
                  // ),
                  // const Divider(),
                  // ShopViewReusableRow(
                  //   title: "Product Type",
                  //   selectedValue: "Hoodie",
                  //   value: productType,
                  // ),
                  // const Divider(),
                  // ShopViewReusableRow(
                  //   title: "Price",
                  //   selectedValue: "High to Low",
                  //   value: price,
                  // ),
                  const SizedBox(height: 20),
                  const LargeButtonReusable(
                    title: "Apply Filter",
                    color: AppColors.buttonColor,
                  )
                ],
              ),
              // The apply button at the bottom of the sheet
            ],
          ),
        ),
      ),
    );
  }
}

class ShopViewReusableRow extends StatelessWidget {
  final String title, selectedValue;
  final List<String> value;
  const ShopViewReusableRow(
      {super.key,
      required this.title,
      required this.selectedValue,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(5), color: Colors.white
      //     // color: Colors.grey.withOpacity(0.2),
      //     ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: [
            Text("$title :"),
            const SizedBox(width: 10),
            DropDownReusable(
              dropDownValues: value,
              dropDownSelectedValue: selectedValue,
            ),
          ],
        ),
      ),
    );
  }
}

class ShopViewReusableGridView extends StatelessWidget {
  final controllerShopController = Get.put(ShopController());
  var count = 0.obs;
  final List<String> title;
  final int item;

  ShopViewReusableGridView(
      {super.key, required this.item, required this.title});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: item,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, crossAxisSpacing: 12.0, // Space between grid items
        mainAxisSpacing: 10.0, // Space between grid items
        childAspectRatio: 2,
      ),
      itemBuilder: (BuildContext context, index) => Obx(
        () => GestureDetector(
          onTap: () {
            count.value = index;
          },
          child: Container(
            decoration: BoxDecoration(
                color:
                    count.value == index ? AppColors.buttonColor : Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                title[index],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: count.value == index ? Colors.white : Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
