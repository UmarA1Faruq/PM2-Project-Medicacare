// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:myapp/app/modules/emergency/controllers/emergency_controller.dart';

class EmergencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmergencyController>(() => EmergencyController());
  }
}
