import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'replace_controller.dart';

class ReplacePage extends StatefulWidget {
  ReplacePage({Key? key}) : super(key: key) {
    Get.put(ReplaceController(name: 'Adicionado no início.'));
  }

  @override
  State<ReplacePage> createState() => _ReplacePageState();
}

class _ReplacePageState extends State<ReplacePage> {
  var name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReplacePage'),
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
                final controller = Get.find<ReplaceController>();

                setState(() {
                  name = controller.name;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.replace(ReplaceController(name: 'Alterado no clique do botão'));
              },
              child: const Text('Substituir instância'),
            ),
          ],
        ),
      ),
    );
  }
}
