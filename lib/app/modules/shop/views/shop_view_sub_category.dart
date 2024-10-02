import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/drop_down.dart';

class ShopViewSubCategory extends StatelessWidget {
  final List<String> size = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
  ];
  final List<String> brand = [
    "Levis",
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.filter_list),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShopViewReusableRow(
                  title: "Size",
                  selectedValue: "S",
                  value: size,
                ),
                Divider(),
                ShopViewReusableRow(
                  title: "Brand",
                  selectedValue: "Levis",
                  value: brand,
                ),
                Divider(),
                ShopViewReusableRow(
                  title: "Product Type",
                  selectedValue: "Hoodie",
                  value: productType,
                ),
                Divider(),
                ShopViewReusableRow(
                  title: "Price",
                  selectedValue: "High to Low",
                  value: price,
                ),
                SizedBox(height: 20),
                LargeButtonReusable(
                  title: "Apply Filter",
                  color: Colors.black,
                )
              ],
            ),
            // The apply button at the bottom of the sheet
          ],
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
      margin: EdgeInsets.only(right: 20),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(5), color: Colors.white
      //     // color: Colors.grey.withOpacity(0.2),
      //     ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: [
            Text("$title :"),
            SizedBox(width: 10),
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
