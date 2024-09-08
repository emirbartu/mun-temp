import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UNHRCPage extends StatelessWidget {
  const UNHRCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UNHRC Committee'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: const Center(
        child: Text(
          'UNHRC Committee',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
