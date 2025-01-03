import 'package:get/get.dart';

import '../modules/appointments/bindings/appointments_binding.dart';
import '../modules/appointments/views/appointments_view.dart';
import '../modules/data_obat/bindings/data_obat_binding.dart';
import '../modules/data_obat/views/data_obat_view.dart';
import '../modules/emergency_contacts/bindings/emergency_contacts_binding.dart';
import '../modules/emergency_contacts/views/emergency_contacts_view.dart';
import '../modules/health_tracking/bindings/health_tracking_binding.dart';
import '../modules/health_tracking/views/health_tracking_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/medication_reminders/bindings/medication_reminders_binding.dart';
import '../modules/medication_reminders/views/medication_reminders_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  // static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DATA_OBAT,
      page: () => DataObatView(),
      binding: DataObatBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MEDICATION_REMINDERS,
      page: () => MedicationRemindersView(),
      binding: MedicationRemindersBinding(),
    ),
    GetPage(
      name: _Paths.HEALTH_TRACKING,
      page: () => const HealthTrackingView(),
      binding: HealthTrackingBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENTS,
      page: () => AppointmentsView(),
      binding: AppointmentsBinding(),
    ),
    GetPage(
      name: _Paths.EMERGENCY_CONTACTS,
      page: () => const EmergencyContactsView(),
      binding: EmergencyContactsBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
