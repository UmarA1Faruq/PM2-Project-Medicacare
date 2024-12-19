import 'package:get/get.dart';

import '../controllers/emergency_contacts_controller.dart';

class EmergencyContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmergencyContactsController>(
      () => EmergencyContactsController(),
    );
  }
}
