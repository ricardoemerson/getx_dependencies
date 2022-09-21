import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/bindings_controller.dart';
import '../bindings/bindings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/basic');
              },
              child: const Text('Básico'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/methods');
              },
              child: const Text('Métodos'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/bindings');
              },
              child: const Text('Bindings'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/bindings-builder');
              },
              child: const Text('Bindings Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/bindings-builder-put');
              },
              child: const Text('Bindings Builder Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const BindingsPage(),
                  binding: BindingsBuilder.put(
                    () => BindingsController(name: 'Inicializado pelo binding sem rota.'),
                  ),
                );
              },
              child: const Text('Bindings Builder Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/services');
              },
              child: const Text('GetX Services'),
            ),
          ],
        ),
      ),
    );
  }
}
