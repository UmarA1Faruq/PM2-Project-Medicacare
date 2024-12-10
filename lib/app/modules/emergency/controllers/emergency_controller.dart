import 'package:get/get.dart';

class EmergencyController extends GetxController {
  // List of emergency contacts
  var contacts = <Map<String, String>>[
    {'name': 'John Doe (Family)', 'phone': '+1234567890'},
    {'name': 'Local Hospital', 'phone': '+1234567891'},
  ].obs;

  // Call emergency services
  void callEmergencyServices() {
    print("Calling emergency services...");
    // Tambahkan logika panggilan darurat
  }

  // Contact family
  void contactFamily() {
    print("Contacting family...");
    // Tambahkan logika kontak keluarga
  }

  // Call specific contact
  void callContact(int index) {
    print("Calling ${contacts[index]['name']} at ${contacts[index]['phone']}");
    // Tambahkan logika panggilan kontak
  }

  // Add new contact
  void addNewContact() {
    print("Adding a new contact...");
    // Tambahkan logika untuk menambah kontak baru
    contacts.add({'name': 'New Contact', 'phone': '+1234567892'});
  }
}
