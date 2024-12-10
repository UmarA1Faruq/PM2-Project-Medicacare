import 'package:get/get.dart';

import '../controllers/data_obat_controller.dart';

class DataObatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataObatController>(
      () => DataObatController(),
    );
  }
}
