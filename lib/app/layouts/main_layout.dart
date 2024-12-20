import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/controllers/navigation_controller.dart';
// import 'package:myapp/app/widgets/bottom_nav_bar.dart';
// import '../widgets/bottom_nav_bar.dart';
import '../widgets/custom_app_bar.dart';

class MainLayout extends StatelessWidget {
  final Widget body;
  final NavigationController navCtrl = Get.find<NavigationController>();

  MainLayout({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: CustomAppBar(),
          body: body,
          bottomNavigationBar: BottomNavigationBar(
            // Ubah ke BottomNavigationBar bawaan Flutter
            currentIndex: navCtrl.currentIndex.value,
            onTap: (index) => navCtrl.changePage(index),
            items: const [
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
            type: BottomNavigationBarType
                .fixed, // Tambahkan ini untuk menampilkan semua item
          ),
        ));
  }
}
