import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';

class ProductDetailNavBar extends StatelessWidget {
  final Map navBarData;
  ProductDetailNavBar({
    super.key,
    required this.navBarData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Price Section
          LargeButtonReusable(
            title: "Buy Now",
            width: 150,
            color: Colors.orange,
          ),
          SizedBox(width: 20),
          AddToCartView(
            addToCartData: navBarData,
          ),
        ],
      ),
    );
  }
}
