import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  final String orderID,
      estimatedTime,
      status,
      img,
      title,
      size,
      price,
      quantity,
      realprice;

  const OrderDetails(
      {super.key,
      required this.orderID,
      required this.estimatedTime,
      required this.title,
      required this.size,
      required this.price,
      required this.img,
      required this.realprice,
      required this.quantity,
      required this.status});

  @override
  Widget build(BuildContext context) {
    int parsedPrice = int.tryParse(price) ?? 0;
    int total = parsedPrice + 100;

    return Scaffold(
      backgroundColor: AppColors.lightSilver,
      appBar: AppBar(
        backgroundColor: AppColors.lightSilver,
        title: const Text("Order Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order ID and Estimated Time
              OrderDetailTitleReusableRow(
                title: "Order ID: ",
                subtitle: orderID,
              ),
              const SizedBox(height: 12),
              OrderDetailTitleReusableRow(
                title: "Estimated Arrival: ",
                subtitle: estimatedTime,
              ),
              const SizedBox(height: 20),

              // Order Status
              Row(
                children: [
                  const Text(
                    "Status: ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffFFEDD5),
                    ),
                    child: Text(
                      status,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),

              // Product List
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, index) => Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // Product Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          img,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Product Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Size: $size",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  "Rs. $price",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Rs. $realprice",
                                  style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Quantity: $quantity",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),

              // Order Summary
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    OrderDetailReusableRow(
                        title: "Subtotal", subtitle: "Rs. $price"),
                    const SizedBox(height: 12),
                    const OrderDetailReusableRow(
                        title: "Delivery", subtitle: "Rs. 100"),
                    const SizedBox(height: 12),
                    const Divider(),
                    const SizedBox(height: 12),
                    OrderDetailReusableRow(
                        title: "Grand Total", subtitle: "Rs. $total"),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Payment Method
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Cash On Delivery",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/cashondelivery.png",
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderDetailTitleReusableRow extends StatelessWidget {
  final String title, subtitle;
  const OrderDetailTitleReusableRow(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: TextSize.normal,
          ),
        ),
        Text(
          subtitle,
          style:
              TextStyle(fontSize: TextSize.normal, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class OrderDetailReusableRow extends StatelessWidget {
  final String title;
  final String subtitle;
  const OrderDetailReusableRow(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: TextSize.normal,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: TextSize.normal,
          ),
        )
      ],
    );
  }
}
