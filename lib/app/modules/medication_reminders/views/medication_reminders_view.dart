import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/medication_reminders_controller.dart';

class MedicationRemindersView extends GetView<MedicationRemindersController> {
  const MedicationRemindersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedicationRemindersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MedicationRemindersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
