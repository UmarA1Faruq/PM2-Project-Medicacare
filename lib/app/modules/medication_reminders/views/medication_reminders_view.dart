import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/layouts/main_layout.dart';

import '../controllers/medication_reminders_controller.dart';

class MedicationRemindersView extends GetView<MedicationRemindersController> {
  const MedicationRemindersView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Center(
        child: Text('This is Medication Page'),
      ),
    );
  }
}
