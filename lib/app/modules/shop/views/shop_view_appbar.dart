
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import 'shop_view_sub_category.dart';

class ShopViewAppBar extends StatelessWidget {
  const ShopViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0, 
      backgroundColor: AppColors.lightSilver,
      title: const Text('Shop'),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) => ShopViewSubCategory(),
              );
            },
            child: const Row(
              children: [
                Text("Filter"),
                SizedBox(width: 10),
                Icon(Icons.filter_list),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
