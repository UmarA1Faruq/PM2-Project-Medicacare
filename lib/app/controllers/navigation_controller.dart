import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
// import '../modules/notifications/views/notifications_view.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  final pages = [
    HomeView(),
    // NotificationsView(),

    // Tambahkan page lain di sini
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.offAll(pages[index]); // Menggantikan halaman saat ini
  }
}
