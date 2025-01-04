import 'package:flutter/material.dart';
import 'package:myapp/app/layouts/main_layout.dart';

class MedicationRemindersView extends StatelessWidget {
  final List<Map<String, String>> reminders = [
    {'name': 'Paracetamol', 'dosage': '2 Tablets - Every 8 Hours'},
    {'name': 'Vitamin C', 'dosage': '2 Tablets - Every 8 Hours'},
    {'name': 'Vitamin D', 'dosage': '2 Tablets - Every 8 Hours'},
    {'name': 'Aspirin', 'dosage': '2 Tablets - Every 8 Hours'},
    {'name': 'Gas Petrol', 'dosage': '2 Tablets - Every 8 Hours'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: reminders.length,
              itemBuilder: (context, index) {
                final reminder = reminders[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: ListTile(
                    title: Text(reminder['name']!),
                    subtitle: Text(reminder['dosage']!),
                    trailing: IconButton(
                      icon: const Icon(Icons.cancel, color: Colors.red),
                      onPressed: () {
                        _showCancelDialog(context, index);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Medication Reminders',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add, color: Colors.blue),
            onPressed: () {
              // Tambahkan logika untuk menambahkan pengingat baru
            },
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Cancel Reminder'),
          content: const Text(
            'Are you sure you want to cancel this reminder?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                // Logika untuk membatalkan pengingat
                Navigator.pop(context);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
