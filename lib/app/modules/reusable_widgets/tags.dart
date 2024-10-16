import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final String tagTitle;
  const Tags({super.key, required this.tagTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 30,
      decoration: BoxDecoration(
        color:
            Colors.black.withOpacity(0.7), // Semi-transparent black background
        // borderRadius: BorderRadius.circular(8), // Rounded corners
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(0.3), // Shadow for better visibility
            blurRadius: 4,
            offset: const Offset(2, 2), // Slight offset to add depth
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "-$tagTitle", // Discount percentage
            // overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white, // White text for contrast
              fontWeight: FontWeight.bold,
              fontSize: 14, // Adjust font size if necessary
            ),
          ),
          // Text(
          //   "OFF", // Discount percentage
          //   // overflow: TextOverflow.ellipsis,
          //   style: const TextStyle(
          //     color: Colors.white, // White text for contrast
          //     fontWeight: FontWeight.bold,
          //     fontSize: 14, // Adjust font size if necessary
          //   ),
          // ),
        ],
      ),
    );
  }
}
