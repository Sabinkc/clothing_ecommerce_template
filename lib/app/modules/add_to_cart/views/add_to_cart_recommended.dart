import 'package:d_and_s/app/data/alldata.dart';
import 'package:flutter/material.dart';

class AddToCartRecommended extends StatelessWidget {
  const AddToCartRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    final watchList = products["Watches"] ?? [];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: watchList.length,
      itemBuilder: (context, index) {
        final item = watchList[index];
        final imageUrl = item["color"].keys.first; // Access the first color key
        final imageList = item["color"][imageUrl];
        final firstImageUrl = imageList.first; // Access the first image URL

        return ListTile(
          leading: Image.network(firstImageUrl),
          title: Text(item["name"]),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Price: Rs. ${item["price"]}"),
              Text("Real Price: Rs. ${item["realprice"]}"),
              Text("Discount: ${item["discount"]}"),
            ],
          ),
        );
      },
    );
  }
}
