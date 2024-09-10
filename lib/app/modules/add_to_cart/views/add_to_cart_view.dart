import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_quantity.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../../product_detail/views/ProductDetailCircularColoredContainer.dart';
import '../../product_detail/views/ProductDetail_Size.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../controllers/add_to_cart_controller.dart';

class AddToCartView extends StatelessWidget {
  final Map addToCartData;
  AddToCartView({
    super.key,
    required this.addToCartData,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              color: Colors.white,
              height: 1000,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Rs. ",
                                      style: TextStyle(
                                        fontSize: TextSize.small,
                                      ),
                                    ),
                                    Text(
                                      addToCartData["price"] ?? "",
                                      // priceDetails["price"] ?? "",
                                      style: TextStyle(
                                        fontSize: TextSize.normal,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Text(
                                  addToCartData["realprice"] ?? "",
                                  // priceDetails["realprice"] ?? "",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 5,
                                    decorationColor: Colors.grey,
                                    fontSize: TextSize.small,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.redAccent),
                                    // color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      addToCartData["discount"] ?? "",
                                      // priceDetails["discount"] ?? " -100% ",
                                      style: TextStyle(
                                        fontSize: TextSize.small,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Color",
                        style: TextStyle(
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 10),
                      ProductDetailCircularColoredContainer(
                        colorList: addToCartData["color"],
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Size",
                        style: TextStyle(
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 10),
                      ProductDetailSize(
                        sizeList: addToCartData["size"] ?? [""],
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      SizedBox(height: 10),
                      // POINTER TO BE ADDED
                      AddToCartQuantity(),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      SizedBox(height: 10),
                      LargeButtonReusable(
                        title: "Add to Cart",
                        width: double.infinity,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: LargeButtonReusable(
        title: "Add to Cart",
        width: 150,
        color: Colors.redAccent,
      ),
    );
  }
}
