import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/emergency/controllers/emergency_controller.dart';
import 'emergency_controller.dart';

class EmergencyView extends GetView<EmergencyController> {
  const EmergencyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Manager'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Aksi untuk tombol profil
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Tombol Emergency
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 50),
              ),
              icon: Icon(Icons.warning),
              label: Text('Call Emergency Services'),
              onPressed: controller.callEmergencyServices,
            ),
            SizedBox(height: 16),
            // Tombol Kontak Keluarga
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              icon: Icon(Icons.phone),
              label: Text('Contact Family'),
              onPressed: controller.contactFamily,
            ),
            SizedBox(height: 16),
            // Kontak Darurat
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emergency Contacts',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(),
                      Obx(() => ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.contacts.length,
                            itemBuilder: (context, index) {
                              final contact = controller.contacts[index];
                              return ListTile(
                                leading: Icon(Icons.contact_phone),
                                title: Text(contact['name']!),
                                subtitle: Text(contact['phone']!),
                                trailing: IconButton(
                                  icon: Icon(Icons.call),
                                  onPressed: () =>
                                      controller.callContact(index),
                                ),
                              );
                            },
                          )),
                      Spacer(),
                      TextButton.icon(
                        icon: Icon(Icons.add),
                        label: Text('Add New Contact'),
                        onPressed: controller.addNewContact,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Emergency',
          ),
        ],
        currentIndex: 3, // Index untuk halaman Emergency
        onTap: (index) {
          // Aksi navigasi
        },
      ),
    );
  }
}
