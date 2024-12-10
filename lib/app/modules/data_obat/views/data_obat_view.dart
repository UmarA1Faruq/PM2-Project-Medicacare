import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_obat_controller.dart';

class DataObatView extends GetView<DataObatController> {
  const DataObatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataObatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataObatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
