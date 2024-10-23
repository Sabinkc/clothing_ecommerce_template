import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import 'shop_view_sub_category.dart';

class ShopViewAppBar extends StatelessWidget {
  const ShopViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      // backgroundColor: AppColors.lightSilver,
      backgroundColor: AppColors.appbarBg,
      title: Text(
        'Shop',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: TextSize.normal,
        ),
      ),
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
            child: Row(
              children: [
                Text(
                  "Filter",
                  style: TextStyle(
                      fontSize: TextSize.small,
                      fontWeight: FontWeight.w700,
                      // color: AppColors.textColorGrey,
                      color: Colors.white),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.filter_list,
                  // color: AppColors.textColorGrey,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
