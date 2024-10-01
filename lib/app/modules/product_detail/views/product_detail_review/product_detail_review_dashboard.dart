
import 'package:flutter/material.dart';

import '../../../../constants/text_size.dart';

class ProductDetailReviewDashboard extends StatelessWidget {
  const ProductDetailReviewDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffD1D5DA),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Average Rating",
              style: TextStyle(fontSize: TextSize.normal),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "5" "/5",
                      style: TextStyle(fontSize: TextSize.big),
                    ),
                    Text(
                      "200" " Reviews",
                      style: TextStyle(fontSize: TextSize.normal),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/rating.png",
                  height: 100,
                  // width: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
