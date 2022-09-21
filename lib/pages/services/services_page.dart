import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'storage_service.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServicesPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Get.find<StorageService>().getValue('service'),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
