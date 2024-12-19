import 'package:get/get.dart';
import 'package:myapp/app/modules/appointments/views/appointments_view.dart';
import 'package:myapp/app/modules/emergency_contacts/views/emergency_contacts_view.dart';
import 'package:myapp/app/modules/health_tracking/views/health_tracking_view.dart';
import 'package:myapp/app/modules/medication_reminders/views/medication_reminders_view.dart';
import '../modules/home/views/home_view.dart';
// import '../modules/notifications/views/notifications_view.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  final pages = [
    HomeView(),
    MedicationRemindersView(),
    HealthTrackingView(),
    AppointmentsView(),
    EmergencyContactsView()
    // Tambahkan page lain di sini
  ];

  void changePage(int index) {
    currentIndex.value = index;
    // Get.offAll(pages[index]); // Menggantikan halaman saat ini
  }
}
