import 'package:flutter/material.dart';

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
