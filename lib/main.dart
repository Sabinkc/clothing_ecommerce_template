import 'package:d_and_s/app/constants/colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Keep the splash screen up until initialization is complete
  FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  await Future.delayed(const Duration(seconds: 5));

  // Remove the splash screen
  FlutterNativeSplash.remove();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return const MyApp(); // Your actual app
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Application",
      theme: ThemeData(
        fontFamily: 'Bai Jamjuree',
        // primaryTextTheme: TextTheme(
        //   TextSize.: TextStyle(color: Colors.black),  // Example for headlines
        //   bodyText1: TextStyle(color: Colors.grey),   // Example for body text
        // ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
