import 'package:flutter/material.dart';

import '../../../constants/text_size.dart';

class ProductDetailViewReusableRow extends StatelessWidget {
  final String title;
  final Icon icons;
  ProductDetailViewReusableRow(
      {super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            icons,
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: TextSize.normal,
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_right),
          ],
        ),
      ),
    );
  }
}
