import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'put_controller.dart';
import 'put_permanent_controller.dart';
import 'put_tag_controller.dart';
import 'widgets/widget_interno.dart';

class PutPage extends StatefulWidget {
  const PutPage({Key? key}) : super(key: key);

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  // Get.put() Mantém a instância dentro do Get, sendo assim, quando for solicitada a classe,
  // será retornada a mesma instância criada anteriormente.
  final controller = Get.put(PutController());
  final controllerPermanent = Get.put(PutPermanentController(), permanent: true);

  final controllerTagX = Get.put(PutTagController(tag: 'TagX'), tag: 'TagX');
  final controllerTagY = Get.put(PutTagController(tag: 'TagY'), tag: 'TagY');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PutPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Time put: \n${controller.timestamp}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Time put permanent: \n${controllerPermanent.timestamp}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            const WidgetInterno(),
          ],
        ),
      ),
    );
  }
}
