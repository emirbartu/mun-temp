import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ECOSOCPage extends StatelessWidget {
  const ECOSOCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ECOSOC Committee'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: const Center(
        child: Text(
          'ECOSOC Committee',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
