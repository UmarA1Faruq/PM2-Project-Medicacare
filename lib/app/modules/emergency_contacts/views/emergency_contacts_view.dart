import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/emergency_contacts_controller.dart';

class EmergencyContactsView extends GetView<EmergencyContactsController> {
  const EmergencyContactsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmergencyContactsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EmergencyContactsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
