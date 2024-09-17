import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
        centerTitle: false,
        backgroundColor: AppColors.lightSilver,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.lightSilver,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded),
                          SizedBox(width: 10),
                          Text("Kuleshwor, Kathmandu"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.mapsofindia.com/images2/india-map-2019.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(height: 20),
                      LargeButtonReusable(title: "Update")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
