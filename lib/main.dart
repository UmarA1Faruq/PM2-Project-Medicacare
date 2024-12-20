import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:myapp/app/controllers/navigation_controller.dart';
// import 'package:myapp/app/modules/login/views/login_view.dart';
// import 'package:myapp/app/widgets/bottom_nav_bar.dart';
// import 'package:myapp/app/widgets/custom_app_bar.dart';

import 'package:myapp/app/routes/app_pages.dart';
import 'package:myapp/app/bindings/navigation_binding.dart'; // tambahkan ini


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: NavigationBinding(), // tambahkan ini
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,

    );
  }
}
