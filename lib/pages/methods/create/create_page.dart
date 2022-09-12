import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_controller.dart';

class CreatePage extends StatefulWidget {
  CreatePage({Key? key}) : super(key: key) {
    Get.create(() => CreateController());
    Get.put(CreateController(), tag: 'put');
    Get.lazyPut(() => CreateController(), tag: 'lazyPut');
  }

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  var timestamp = '';
  var timestampPut = '';
  var timestampLazyPut = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Timestamp: \n$timestamp',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Timestamp Put: \n$timestampPut',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Timestamp lazyPut: \n$timestampLazyPut',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<CreateController>();
                final controllerPut = Get.find<CreateController>(tag: 'put');
                final controllerLazyPut = Get.find<CreateController>(tag: 'lazyPut');

                setState(() {
                  timestamp = controller.timestamp;
                  timestampPut = controllerPut.timestamp;
                  timestampLazyPut = controllerLazyPut.timestamp;
                });
              },
              child: const Text('Buscar nome'),
            ),
          ],
        ),
      ),
    );
  }
}
