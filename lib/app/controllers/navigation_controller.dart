import 'package:get/get.dart';
import 'package:myapp/app/modules/appointments/views/appointments_view.dart';
import 'package:myapp/app/modules/emergency_contacts/views/emergency_contacts_view.dart';
import 'package:myapp/app/modules/health_tracking/views/health_tracking_view.dart';
import 'package:myapp/app/modules/medication_reminders/views/medication_reminders_view.dart';
import '../modules/home/views/home_view.dart';

class NavigationController extends GetxController {
  final currentIndex = 0.obs;

  final pages = [
    HomeView(),
    MedicationRemindersView(),
    const HealthTrackingView(),
    AppointmentsView(),
    const EmergencyContactsView(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.to(
        pages[index]); // Uncomment ini jika Anda ingin navigasi ke halaman baru
  }
}
