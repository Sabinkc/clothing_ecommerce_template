import 'package:flutter/material.dart';

class ProductDetailCircularColoredContainer extends StatelessWidget {
  final List<int> colorList;
  const ProductDetailCircularColoredContainer({
    super.key,
    required this.colorList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: colorList.length,
          itemBuilder: (BuildContext context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(colorList[index]),
                      width: 2.0,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(colorList[index])),
                    ),
                  ),
                ),
              )),
    );
  }
}