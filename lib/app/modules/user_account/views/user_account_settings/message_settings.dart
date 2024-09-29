import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/reusable_widgets/SwitchReusable.dart';
import 'package:flutter/material.dart';

class MessageSettingsView extends StatelessWidget {
  const MessageSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message Settings"),
        backgroundColor: AppColors.lightSilver,
        centerTitle: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.lightSilver,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "App Notification",
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
              const SizedBox(height: 20),
              const MessageSettingsReusableRow(
                title: 'Promotions',
                subtitle: 'find out upcoming deals',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageSettingsReusableRow extends StatelessWidget {
  final String title;
  final String subtitle;
  const MessageSettingsReusableRow(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: TextSize.normal, fontWeight: FontWeight.w700),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: TextSize.small,
                ),
              ),
            ],
          ),
          const Spacer(),
          const SwitchExample(),
        ],
      ),
    );
  }
}
