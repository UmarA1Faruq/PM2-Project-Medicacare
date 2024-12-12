import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  final RxInt currentIndex;
  final List<BottomNavigationBarItem> items;
  final Function(int) onTap;

  BottomNavBar({
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: currentIndex.value,
          onTap: onTap,
          items: items,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ));
  }
}
