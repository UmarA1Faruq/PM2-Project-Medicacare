import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/controllers/navigation_controller.dart';
import 'package:myapp/app/modules/login/views/login_view.dart';
import 'package:myapp/app/widgets/bottom_nav_bar.dart';
import 'package:myapp/app/widgets/custom_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}

class MainPage extends StatelessWidget {
  final NavigationController navCtrl = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: CustomAppBar(),
          body: navCtrl.pages[navCtrl.currentIndex.value],
          bottomNavigationBar: BottomNavBar(
            currentIndex: navCtrl.currentIndex,
            items: const [
              // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: "Medication Reminders"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monitor_heart), label: "Health Tracking"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Appointments"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call_end_outlined),
                  label: "Emergency Contacts"),
            ],
            onTap: navCtrl.changePage,
          ),
        ));
  }
}
