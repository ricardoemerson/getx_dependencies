import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'basic_controller.dart';
import 'widgets/button.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BasicController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('BasicPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(
                  controller.name,
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const Button(),
          ],
        ),
      ),
    );
  }
}
