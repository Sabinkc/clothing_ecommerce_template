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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              OrderDetailTitleReusableRow(
                title: "Order Id: ",
                subtitle: orderID,
              ),
              SizedBox(height: 10),
              OrderDetailTitleReusableRow(
                title: "Estimated Arrival: ",
                subtitle: estimatedTime,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Status: ",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFEDD5)),
                    child: Text(
                      status,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (BuildContext context, index) => Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Product Image
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(img),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),

                      // Product Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product Title
                            Text(
                              // item["title"] ?? "No Title",
                              title,
                              style: TextStyle(
                                fontSize: TextSize.small,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                            const SizedBox(height: 5),

                            // Product Size
                            Text(
                              "size: " + size,
                              // "Size: ${item["size"]}",
                              style: TextStyle(
                                // color: Colors.blue,
                                fontSize: TextSize.small,
                              ),
                            ),
                            const SizedBox(height: 5),

                            // Price and Discounted Price
                            Row(
                              children: [
                                Text(
                                  price,
                                  // "Rs. ${item["price"]}",
                                  style: TextStyle(
                                    fontSize: TextSize.small,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                // if (item["realprice"] != null)
                                Text(
                                  realprice,
                                  // "\$${item["realprice"]}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Quantity: " + quantity,
                              style: TextStyle(
                                fontSize: TextSize.small,
                              ),
                            ),

                            // Color and Quantity Selector
                            Row(
                              children: [
                                // Product Color
                                const SizedBox(width: 5),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                ),
                                const Spacer(),
                                Text("Cash On Delivery"),
                                SizedBox(width: 5),
                                Image.asset(
                                  "assets/images/cashondelivery.png",
                                  height: 30,
                                )
                                // Quantity Selector
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    OrderDetailReusableRow(
                        title: "Subtotal", subtitle: "Rs." + price),
                    SizedBox(height: 10),
                    OrderDetailReusableRow(
                        title: "Delivery:", subtitle: "Rs.100"),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    OrderDetailReusableRow(
                        title: "Grand Total", subtitle: total.toString())
                  ],
                ),
              )
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
