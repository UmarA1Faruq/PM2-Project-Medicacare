import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/layouts/main_layout.dart';

import '../controllers/health_tracking_controller.dart';

class HealthTrackingView extends GetView<HealthTrackingController> {
  const HealthTrackingView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Center(
        child: Text('This is Home Health Tracking'),
      ),
    );
  }
}
