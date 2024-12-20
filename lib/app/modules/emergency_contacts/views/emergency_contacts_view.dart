import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/layouts/main_layout.dart';

import '../controllers/emergency_contacts_controller.dart';

class EmergencyContactsView extends GetView<EmergencyContactsController> {
  const EmergencyContactsView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Center(
        child: Text('This is Home Emergency'),
      ),
    );
  }
}
