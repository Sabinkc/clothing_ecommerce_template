import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double height;
  final double dotWidth;
  final double spaceWidth;
  final Color color;

  const DottedLine({
    this.height = 2.0,
    this.dotWidth = 4.0,
    this.spaceWidth = 6.0,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dotCount = (boxWidth / (dotWidth + spaceWidth)).floor();

        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dotCount, (_) {
              return Container(
                width: dotWidth,
                height: height,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(50),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
