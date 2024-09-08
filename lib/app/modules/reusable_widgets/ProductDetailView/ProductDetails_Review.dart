import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/text_size.dart';
import 'ProductDetailViewReusableRow.dart';

class ProductDetailReview extends StatelessWidget {
  List reviews = [
    "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
  ];
  List img = [
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    '',
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
  ];
  List names = [
    "ramramramramramramramramramram",
    "Hari",
    "shyam",
  ];
  List dates = [
    "1/2/2024",
    "2/3/20204",
    "3/4/20204",
  ];

  ProductDetailReview({super.key});

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Reviews"),
      ),
      body: Container(
        // height: 900,
        // color: AppColors.lightSilver,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        border:
                            Border.all(color: AppColors.lightSilver, width: 5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              reviews[index],
                              style: TextStyle(fontSize: TextSize.small),
                            ),
                            SizedBox(height: 10),
                            if (img[index].isNotEmpty)
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: NetworkImage(img[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 15,
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    names[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.date_range_rounded, size: 30),
                                SizedBox(width: 4),
                                Text(
                                  dates[index],
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(thickness: 1, color: Colors.grey[300]),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
