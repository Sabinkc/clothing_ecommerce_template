
import 'package:d_and_s/app/modules/login/views/login_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Keep the splash screen up until initialization is complete
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  await Future.delayed(Duration(seconds: 5));

  // Remove the splash screen
  FlutterNativeSplash.remove();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => ResponsiveSizer(
        builder: (context, orientation, screenType) {

          return MyApp(); // Your actual app
        },
      ),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Application",
      theme: ThemeData(
        fontFamily: 'Open_Sans',
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,

    );
  }
}
