import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //   image: AssetImage('assets/images/background_splash.png'),
      // )),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/icons/logo.png'),
            scale: 2,
          )),
        ),
      ),
    ));
  }
}
