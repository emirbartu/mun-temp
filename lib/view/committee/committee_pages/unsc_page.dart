import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UNSCPage extends StatelessWidget {
  const UNSCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UNSC Committee'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: const Center(
        child: Text(
          'UNSC Committee',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
