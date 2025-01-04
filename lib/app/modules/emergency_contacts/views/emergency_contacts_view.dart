import 'package:flutter/material.dart';
import 'package:myapp/app/layouts/main_layout.dart';
import 'package:myapp/app/modules/emergency_contacts/controllers/emergency_contacts_controller.dart';

class EmergencyContactsView extends StatelessWidget {
  final EmergencyContactsController controller = EmergencyContactsController();

  EmergencyContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Aksi untuk memanggil layanan darurat
                controller.callEmergencyServices();
              },
              icon: const Icon(Icons.warning),
              label: const Text('Call Emergency Services'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // Aksi untuk menghubungi keluarga
                controller.contactFamily();
              },
              icon: const Icon(Icons.phone),
              label: const Text('Contact Family'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Emergency Contacts',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: controller.contacts.length,
                itemBuilder: (context, index) {
                  final contact = controller.contacts[index];
                  return Card(
                    child: ListTile(
                      title: Text('${contact.name} (${contact.relation})'),
                      subtitle: Text(contact.phone),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {
                // Aksi untuk menambahkan kontak baru
                controller.addNewContact();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add New Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
