import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'delete_controller.dart';

class DeletePage extends StatefulWidget {
  DeletePage({Key? key}) : super(key: key) {
    Get.put(DeleteController(name: 'Adicionado no início'), permanent: true);
  }

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  var name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeletePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome: $name',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<DeleteController>();

                setState(() {
                  name = controller.name;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/methods/delete/sub');
              },
              child: const Text('Remover esta página e ir para sub page'),
            ),
          ],
        ),
      ),
    );
  }
}
