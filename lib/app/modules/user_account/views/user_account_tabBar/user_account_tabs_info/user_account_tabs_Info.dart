import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_info/user_account_tabs_info_detail.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_info/user_account_tabs_info_loginEdit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/text_size.dart';

class UserAccountTabsInfo extends StatelessWidget {
  const UserAccountTabsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          const EdgeInsets.all(0.0), // Add padding to the whole scroll area
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Details",
            style: TextStyle(
              fontSize: 24, // Slightly larger for better readability
              fontWeight: FontWeight.bold,
              color: Colors.black87, // Use a softer black
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Feel free to edit any of your details below so your account is up to date.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700], // A subtler text color for descriptions
            ),
          ),
          const SizedBox(height: 32),
          // Personal Details Card
          Card(
            elevation: 1, // Adds a slight shadow for a modern look

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              side: BorderSide(color: Colors.grey.withOpacity(0.5)),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildDetailRow("Name", "John Doe"),
                    _buildDetailRow("Date of Birth", "01/01/1990"),
                    _buildDetailRow("Gender", "Male"),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () {
                        Get.to(UserAccountTabsInfoDetail());
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Edit Personal Details",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          // Login Details Card
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.grey.withOpacity(0.5)),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildDetailRow("Email", "email@gmail.com"),
                    _buildDetailRow("Password", "*******"),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () {
                        Get.to(UserAccountTabsInfoLoginEdit());
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Edit Login Details",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build individual rows in the detail sections
  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[800], // Slightly darker gray for titles
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600], // Lighter gray for values
            ),
          ),
        ],
      ),
    );
  }
}
// class UserAccountTabsInfo extends StatelessWidget {
//   const UserAccountTabsInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "My Details",
//             style: TextStyle(
//                 fontSize: TextSize.normal, fontWeight: FontWeight.w800),
//           ),
//           SizedBox(height: 20),
//           Text(
//             "Feel free to edit any of your details below so your account is up to date.",
//             textAlign: TextAlign.start,
//             style: TextStyle(
//               fontSize: TextSize.normal,
//             ),
//           ),
//           SizedBox(height: 40),
//           Container(
//             padding: EdgeInsets.all(16),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xff6B7280).withOpacity(0.5))),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Details",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w800),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Name",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Date of Birth",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Gender",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(height: 10),
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(UserAccountTabsInfoDetail());
//                   },
//                   child: Text(
//                     "Edit",
//                     style: TextStyle(
//                         fontSize: TextSize.normal,
//                         fontWeight: FontWeight.w800,
//                         decoration: TextDecoration.underline),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 40),
//           Container(
//             padding: EdgeInsets.all(16),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xff6B7280).withOpacity(0.5))),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Login Details",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w800),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "email@gmail.com",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "*******",
//                   style: TextStyle(
//                       fontSize: TextSize.normal, fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(height: 10),
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(UserAccountTabsInfoLoginEdit());
//                   },
//                   child: Text(
//                     "Edit",
//                     style: TextStyle(
//                         fontSize: TextSize.normal,
//                         fontWeight: FontWeight.w800,
//                         decoration: TextDecoration.underline),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
