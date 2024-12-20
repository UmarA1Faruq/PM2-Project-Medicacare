import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/layouts/main_layout.dart';

import '../controllers/appointments_controller.dart';

class AppointmentsView extends GetView<AppointmentsController> {
  const AppointmentsView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Center(
        child: Text('This is Appointments'),
      ),
    );
  }
}
