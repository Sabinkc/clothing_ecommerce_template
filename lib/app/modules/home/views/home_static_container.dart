import 'package:flutter/material.dart';

class HomeStaticContainer extends StatelessWidget {
  const HomeStaticContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: NetworkImage('https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png'),fit: BoxFit.fill)
        ),
      ),
    );
  }
}
