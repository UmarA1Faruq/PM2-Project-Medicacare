import 'package:get/get.dart';

class Contact {
  final String name;
  final String relation;
  final String phone;

  Contact({required this.name, required this.relation, required this.phone});
}

class EmergencyContactsController extends GetxController {
  // Daftar kontak darurat menggunakan RxList agar reaktif
  var contacts = <Contact>[
    Contact(name: 'Haikal Sumbul', relation: 'Family', phone: '+6281208090309'),
    Contact(name: 'Chandra Gacoan', relation: 'Admin Hospital', phone: '+6281208090309'),
  ].obs;

  // Fungsi untuk memanggil layanan darurat
  void callEmergencyServices() {
    // Tambahkan logika panggilan darurat
    print('Calling Emergency Services...');
  }

  // Fungsi untuk menghubungi keluarga
  void contactFamily() {
    // Tambahkan logika kontak keluarga
    print('Contacting Family...');
  }

  // Fungsi untuk menambahkan kontak baru
  void addNewContact() {
    // Contoh penambahan kontak baru
    contacts.add(Contact(name: 'New Contact', relation: 'Friend', phone: '+628123456789'));
    print('New contact added');
  }

  // Fungsi untuk menghapus kontak
  void removeContact(int index) {
    contacts.removeAt(index);
    print('Contact removed');
  }
}
