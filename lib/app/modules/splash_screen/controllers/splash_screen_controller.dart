import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToNextPage();
  }

  void navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.HOME);
  }
}
