import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/health_tracking_controller.dart';

class HealthTrackingView extends GetView<HealthTrackingController> {
  const HealthTrackingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HealthTrackingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HealthTrackingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
