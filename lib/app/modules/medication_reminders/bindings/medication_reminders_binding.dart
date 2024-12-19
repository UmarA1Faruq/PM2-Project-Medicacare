import 'package:get/get.dart';

import '../controllers/medication_reminders_controller.dart';

class MedicationRemindersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicationRemindersController>(
      () => MedicationRemindersController(),
    );
  }
}
