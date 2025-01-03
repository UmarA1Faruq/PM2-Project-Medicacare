import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2.0,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Medicacare',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0), // Menambahkan jarak ke kanan
              child: IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  // Tambahkan logika untuk profil pengguna
                  print("Profile Icon Pressed");
                },
              ),
            ),
          ],
        ),
      ),
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
          _buildFooter(),
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

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.grey.shade200,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Medication",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: "Health",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_end),
            label: "Emergency",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          // Tambahkan logika untuk navigasi
        },
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
