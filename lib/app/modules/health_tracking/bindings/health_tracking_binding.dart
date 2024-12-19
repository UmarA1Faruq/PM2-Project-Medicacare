import 'package:get/get.dart';

import '../controllers/health_tracking_controller.dart';

class HealthTrackingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthTrackingController>(
      () => HealthTrackingController(),
    );
  }
}
