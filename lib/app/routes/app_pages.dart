import 'package:get/get.dart';

import '../modules/emergency/bindings/emergency_binding.dart';
import '../modules/emergency/views/emergency_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static var INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.EMERGENCY,
      page: () => const EmergencyView(),
      binding: EmergencyBinding(),
    ),
  ];
}
