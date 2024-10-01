// ignore_for_file: must_be_immutable

import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_size.dart';

class UserAddReview extends StatelessWidget {
  final String img;
  final String title;
  final String price;

  var rating = 0.0.obs;
  UserAddReview(
      {super.key, required this.img, required this.title, required this.price});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
          child: Scaffold(
        backgroundColor: AppColors.lightSilver,
        appBar: AppBar(
          backgroundColor: AppColors.lightSilver,
          title: const Text("Write Review"),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(img), fit: BoxFit.fill)),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: TextSize.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Rs. $price",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: TextSize.normal,
                                  color: Colors.blue),
                            ),
                            const SizedBox(height: 10),
                            Obx(() => PannableRatingBar(
                                  rate: rating.value,
                                  items: List.generate(
                                      5,
                                      (index) => const RatingWidget(
                                            selectedColor: Colors.yellow,
                                            unSelectedColor: Colors.grey,
                                            child: Icon(
                                              Icons.star,
                                              size: 30,
                                            ),
                                          )),
                                  onChanged: (value) {
                                    // Update rating using the controller
                                    rating.value = value;
                                  },
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  maxLength: 500,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: "Please write your Review here",
                    label: Center(
                      child: Text("Please write your Review here"),
                    ),
                    hintText: "Please write your Review here",
                  ),
                ),
                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: DottedBorder(
                    color: Colors.black,
                    strokeWidth: 1,
                    dashPattern: const [6, 3],
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera,
                            size: 50,
                          ),
                          Text("Upload Image"),
                        ],
                      ),
                    ),
                  ),
                ),
                // const LargeButtonReusable(title: "Upload Image"),
                const SizedBox(height: 20),
                const LargeButtonReusable(
                  title: "Submit",
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ));
}
