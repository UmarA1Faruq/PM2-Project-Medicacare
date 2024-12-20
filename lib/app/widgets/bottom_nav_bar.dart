import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  final RxInt currentIndex; // Menggunakan RxInt untuk reaktifitas
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap; // ValueChanged<int> lebih spesifik

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: currentIndex.value, // Ambil nilai dari RxInt
          onTap: onTap, // Fungsi onTap
          items: items,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ));
  }
}
