import 'package:get/get.dart';

class MedicationRemindersController extends GetxController {
  var reminders = <Map<String, String>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchReminders();
  }

  void fetchReminders() {
    // Simulasi data pengingat obat
    var fetchedReminders = [
      {'name': 'Paracetamol', 'dosage': '2 Tablets', 'interval': 'Every 8 Hours'},
      {'name': 'Vitamin C', 'dosage': '2 Tablets', 'interval': 'Every 8 Hours'},
      {'name': 'Vitamin D', 'dosage': '2 Tablets', 'interval': 'Every 8 Hours'},
      {'name': 'Aspirin', 'dosage': '2 Tablets', 'interval': 'Every 8 Hours'},
      {'name': 'Gas Petrol', 'dosage': '2 Tablets', 'interval': 'Every 8 Hours'},
    ];

    reminders.assignAll(fetchedReminders);
  }

  void addReminder(Map<String, String> reminder) {
    reminders.add(reminder);
  }

  void updateReminder(int index, Map<String, String> updatedReminder) {
    reminders[index] = updatedReminder;
  }

  void removeReminder(int index) {
    reminders.removeAt(index);
  }
}
