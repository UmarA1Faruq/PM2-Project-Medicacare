import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/layouts/main_layout.dart';

class AppointmentsView extends StatelessWidget {
  final List<Map<String, String>> appointments = [
    {'doctor': 'Dr. Haikal', 'date': '28 Nov 2024', 'time': '14:00'},
    {'doctor': 'Dr. Afrando', 'date': '29 Nov 2024', 'time': '14:00'},
    {'doctor': 'Dr. Tirta', 'date': '30 Nov 2024', 'time': '14:00'},
    {'doctor': 'Dr. Choky', 'date': '31 Nov 2024', 'time': '14:00'},
    {'doctor': 'Dr. Umar', 'date': '1 Nov 2024', 'time': '14:00'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                final appointment = appointments[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: ListTile(
                    title: Text(appointment['doctor']!),
                    subtitle: Text(
                      '${appointment['date']} - ${appointment['time']}',
                    ),
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
            'Appointments',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add, color: Colors.blue),
            onPressed: () {
              // Tambahkan logika untuk menambahkan janji temu baru
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
          title: const Text('Cancel Appointment'),
          content: const Text(
            'Are you sure you want to cancel this appointment?',
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
                // Logika untuk membatalkan janji temu
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
