import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MethodsPage extends StatelessWidget {
  const MethodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: Future.value,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MethodsPage'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/methods/put');
                },
                child: const Text('Put'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/methods/lazy-put');
                },
                child: const Text('Lazy Put'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/methods/put-async');
                },
                child: const Text('Put Async'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
