// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';

import 'package:flutter/material.dart';


import '../../../constants/text_size.dart';

class ProductDetailReview extends StatelessWidget {
  final List reviews;
  const ProductDetailReview({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reviews"),
        ),
        body: reviews.isNotEmpty
            ? Container(
                // height: 900,
                // color: AppColors.lightSilver,
                color: Colors.white,
                padding: const EdgeInsets.all(16),
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
                                border: Border.all(
                                    color: AppColors.lightSilver, width: 5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              reviews[index]["profile_pic"]),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            reviews[index]["name"] ?? "",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.date_range_rounded,
                                            size: 30),
                                        const SizedBox(width: 4),
                                        Text(
                                          reviews[index]["date"] ?? "",
                                          style: const TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    // SizedBox(height: 10),
                                    Divider(
                                        thickness: 1, color: Colors.grey[300]),
                                    Text(
                                      reviews[index]["review"] ?? "",
                                      style:
                                          TextStyle(fontSize: TextSize.small),
                                    ),
                                    const SizedBox(height: 10),
                                    // if (reviews[index]["reviews_img"].isNotEmpty &&
                                    //     reviews[index]["reviews_img"] != null)
                                    reviews[index]["reviews_img"] != null
                                        ? Container(
                                            height: 120,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    reviews[index]
                                                            ["reviews_img"] ??
                                                        ""),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        : const SizedBox(),
                                    // SizedBox(height: 10),
                                    // SizedBox(height: 10),
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
              )
            : Center(
                child: Text(
                "No Reviews",
                style: TextStyle(
                    fontSize: TextSize.big, color: AppColors.lightBlue),
              )));
  }
}
