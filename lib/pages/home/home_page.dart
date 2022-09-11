import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          ],
        ),
      ),
    );
  }
}
