// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/text_size.dart';

class ProductDetailViewReusableRow extends StatelessWidget {
  final String title;
  final Icon icons;
  const ProductDetailViewReusableRow(
      {super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          icons,
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: AppColors.titleColorGrey,
              fontWeight: FontWeight.w700,
              fontSize: TextSize.normal,
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
