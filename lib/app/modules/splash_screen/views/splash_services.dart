import 'dart:async';

import 'package:d_and_s/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashServices{
  void isLogin(){
    Timer(Duration(seconds: 3),()=>Get.toNamed(Routes.LOGIN));
  }
}