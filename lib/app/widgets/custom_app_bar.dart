import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/profile/views/profile_view.dart'; // Pastikan mengimport Get
// Sesuaikan dengan path file ProfileView Anda

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 2.0,
      backgroundColor: Colors.blue,
      title: const Text(
        'Medicacare',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {
            Get.to(() => ProfileView());
            // Atau jika Anda tidak menggunakan GetX, bisa menggunakan:
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const ProfileView()),
            // );
          },
        ),
      ],
    );
  }
}
