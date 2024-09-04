import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_size.dart';

class HomeTabBarTabs extends StatelessWidget {
  final List categories = [
    "WatchesWatchesWatchesWatches",
    "Shirts",
    "Bags",
    "Clothing",
    "Accessories Accessories dafasdfsdf",
    "Shoes",
    "Socks",
    "More",
  ];
  final List price = [
    "1,000",
    "1,000",
    "1,000",
    "1,000",
    "1,000 Accessories Accessories",
    "1,000",
    "1,000",
    "1,000",
  ];
   HomeTabBarTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0, // Add spacing between grid items
          mainAxisSpacing: 10.0, // Add spacing between grid items
          childAspectRatio: 0.9,
        ),
        itemBuilder: (BuildContext context, index) => Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.silverBorder, width: 5),
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png'),
                          fit: BoxFit.fill)),
                  height: 100,
                ),
                // Icon(categoriesIcons[index],),
                SizedBox(height: 10),
                Text(
                  categories[index],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  // style: TextStyle(color: Colors.grey),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Rs. ",
                        style: TextStyle(
                            fontSize: TextSize.small,
                            color: Colors.red,
                            fontWeight: FontWeight.w800),
                      ),
                      Expanded(
                        child: Text(
                          price[index],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                          TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
