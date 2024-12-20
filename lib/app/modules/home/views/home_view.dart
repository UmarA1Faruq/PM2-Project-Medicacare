import 'package:flutter/material.dart';
import 'package:myapp/app/layouts/main_layout.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Center(
        child: Text('This is Home Page'),
      ),
    );
  }
}
