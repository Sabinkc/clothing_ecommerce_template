// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/product_detail/views/product_detail_review/product_detail_review_dashboard.dart';
import 'package:d_and_s/app/modules/reusable_widgets/drop_down.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

import '../../../../constants/text_size.dart';

class ProductDetailReview extends StatelessWidget {
  final List<String> sortOptions = [
    "Relevance",
    "Recent",
    "High to Low",
    "Low to High",
  ];
  final List reviews;
  ProductDetailReview({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSilver,
      appBar: AppBar(
        backgroundColor: AppColors.lightSilver,
        title: const Text("Reviews"),
        centerTitle: false,
      ),
      body: reviews.isNotEmpty
          ? SingleChildScrollView(
              // height: 900,
              // color: AppColors.lightSilver,

              // padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        // const Icon(Icons.sort),

                        Text(
                          "Sort: ",
                          style: TextStyle(
                              color: AppColors.titleColorGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: TextSize.small),
                        ),
                        const SizedBox(width: 10),
                        DropDownReusable(
                          dropDownValues: sortOptions,
                          dropDownSelectedValue: 'Relevance',
                        ),
                        const Spacer(),
                        // const Icon(Icons.filter_list_alt),
                        // const SizedBox(width: 10),
                        Text(
                          "Filter: ",
                          style: TextStyle(
                              color: AppColors.titleColorGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: TextSize.small),
                        ),
                        const SizedBox(width: 10),
                        DropDownReusable(
                          dropDownValues: sortOptions,
                          dropDownSelectedValue: 'Relevance',
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ProductDetailReviewDashboard(),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: reviews.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            // border: Border.all(
                            //   color: const Color(0xffD1D5DA),
                            //   width: 1,
                            // ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        reviews[index]["profile_pic"],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          reviews[index]["name"] ?? "",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: TextSize.small),
                                        ),
                                        Text(
                                          reviews[index]["date"] ?? "",
                                          style: TextStyle(
                                              color: AppColors.captionColorGrey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: TextSize.small),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    // ReviewStar(),
                                    StarRating(rating: 3.5),
                                  ],
                                ),
                                // SizedBox(height: 10),
                                Divider(thickness: 1, color: Colors.grey[300]),
                                Text(
                                  reviews[index]["review"] ?? "",
                                  style: TextStyle(
                                      color: AppColors.textColorGrey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: TextSize.small),
                                ),
                                const SizedBox(height: 10),
                                // if (reviews[index]["reviews_img"].isNotEmpty &&
                                //     reviews[index]["reviews_img"] != null)
                                reviews[index]["reviews_img"] != null
                                    ? SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(
                                          direction: Axis.horizontal,

                                          spacing:
                                              10, // Horizontal spacing between images
                                          runSpacing:
                                              10, // Vertical spacing between image rows
                                          children: List.generate(
                                            reviews[index]["reviews_img"]
                                                .length,
                                            (imgIndex) => GestureDetector(
                                              onTap: () {
                                                showDialog<String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                    backgroundColor:
                                                        AppColors.lightSilver,
                                                    actions: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 20),
                                                        child: Center(
                                                          child: Container(
                                                            height: 400,
                                                            width: 400,
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    image:
                                                                        DecorationImage(
                                                                            image:
                                                                                NetworkImage(
                                                                              reviews[index]["reviews_img"][imgIndex],
                                                                            ),
                                                                            fit: BoxFit
                                                                                .contain),
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 10),
                                                height: 120,
                                                width:
                                                    120, // Set a width if needed, or let Wrap handle it
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xffD1D5DA)),
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      reviews[index][
                                                                  "reviews_img"]
                                                              [imgIndex] ??
                                                          "",
                                                    ),
                                                    fit: BoxFit
                                                        .contain, // Use BoxFit.contain to avoid cropping the image
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    // Column(
                                    //     children: reviews[index]
                                    //             ["reviews_img"]
                                    //         .map((item) {
                                    //       return Container(
                                    //         height: 120,
                                    //         width: double.infinity,
                                    //         decoration: BoxDecoration(
                                    //           // borderRadius:
                                    //           //     BorderRadius.circular(16),
                                    //           image: DecorationImage(
                                    //             image: NetworkImage(reviews[
                                    //                         index]
                                    //                     ["reviews_img"] ??
                                    //                 ""),
                                    //             fit: BoxFit.cover,
                                    //           ),
                                    //         ),
                                    //       );
                                    //     }).toList(),
                                    //   )
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
                ],
              ),
            )
          : Center(
              child: Text(
                "No Reviews",
                style: TextStyle(
                    fontSize: TextSize.big, color: AppColors.lightBlue),
              ),
            ),
    );
  }
}
