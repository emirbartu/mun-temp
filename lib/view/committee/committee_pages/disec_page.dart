import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DISECPage extends StatelessWidget {
  const DISECPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DISEC Committee'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: const Center(
        child: Text(
          'DISEC Committee',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
