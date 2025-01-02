import 'package:get/get.dart';

class AppointmentsController extends GetxController {
  var appointments = <Map<String, String>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAppointments();
  }

  void fetchAppointments() {
    // Simulasi data janji temu
    var fetchedAppointments = [
      {'doctor': 'Dr. Haikal', 'date': '28 Nov 2024', 'time': '14:00'},
      {'doctor': 'Dr. Afrando', 'date': '29 Nov 2024', 'time': '14:00'},
      {'doctor': 'Dr. Tirta', 'date': '30 Nov 2024', 'time': '14:00'},
      {'doctor': 'Dr. Choky', 'date': '31 Nov 2024', 'time': '14:00'},
      {'doctor': 'Dr. Umar', 'date': '1 Nov 2024', 'time': '14:00'},
    ];

    appointments.assignAll(fetchedAppointments);
  }

  void addAppointment(Map<String, String> appointment) {
    appointments.add(appointment);
  }

  void cancelAppointment(int index) {
    appointments.removeAt(index);
  }
}
