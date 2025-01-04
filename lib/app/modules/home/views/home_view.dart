import 'package:flutter/material.dart';
import 'package:myapp/app/layouts/main_layout.dart';

class HomeView extends StatelessWidget {
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
                'Hi, Alex! 👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Let's check your health status",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildHealthMetricCard(
                        'Blood Pressure', '120/80', 'Normal Range'),
                    _buildHealthMetricCard('Sugar Blood', '95', 'mg/dl'),
                    _buildHealthMetricCard('Weight', '220', 'kg'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Weekly Health Trend',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 150,
                color: Colors.grey[300],
                child: const Center(child: Text('Graph Placeholder')),
              ),
              const SizedBox(height: 20),
              const Text(
                "Today's Schedule",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildScheduleItem('Take Medication', 'Paracetamol - 08:00 AM'),
              _buildScheduleItem(
                  'Doctor Appointment', 'Dr. Rando Gans - 02:00 PM'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi untuk menambahkan pengingat obat
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add Medication'),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi untuk membuat janji baru
                    },
                    icon: const Icon(Icons.calendar_today),
                    label: const Text('New Appointment'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHealthMetricCard(String title, String value, String unit) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(right: 16),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              unit,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleItem(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(Icons.notifications, color: Colors.blue),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
