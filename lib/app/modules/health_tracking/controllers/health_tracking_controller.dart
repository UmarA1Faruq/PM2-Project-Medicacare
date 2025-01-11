import 'package:flutter/material.dart';

class HealthTrackingController {
  final TextEditingController bloodPressureController = TextEditingController();
  final TextEditingController bloodSugarController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  void saveData() {
    // Implementasi logika penyimpanan data
    String bloodPressure = bloodPressureController.text;
    String bloodSugar = bloodSugarController.text;
    String weight = weightController.text;

    // Untuk sementara, hanya mencetak nilai
    print('Blood Pressure: $bloodPressure');
    print('Blood Sugar: $bloodSugar');
    print('Weight: $weight');
  }
}
