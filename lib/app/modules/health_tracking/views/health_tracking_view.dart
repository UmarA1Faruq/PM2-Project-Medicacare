import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/layouts/main_layout.dart';
import 'package:myapp/app/modules/health_tracking/controllers/health_tracking_controller.dart';

class HealthTrackingView extends StatelessWidget {
  final HealthTrackingController controller = HealthTrackingController();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Health Tracking',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildInputField(controller.bloodPressureController, 'Blood Pressure'),
              const SizedBox(height: 16),
              _buildInputField(controller.bloodSugarController, 'Blood Sugar'),
              const SizedBox(height: 16),
              _buildInputField(controller.weightController, 'Weight'),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: controller.saveData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Warna latar belakang tombol
                    minimumSize: Size(double.infinity, 50), // Lebar penuh dengan tinggi 50
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Sudut membulat
                    ),
                  ),
                  child: const Text(
                    'Save Data',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Health Trends',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: Image.network(
                  'https://www.herworld.co.id/gallery/teaser/pola-makan-sehat-2_6720220804141858GcNRCD.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
