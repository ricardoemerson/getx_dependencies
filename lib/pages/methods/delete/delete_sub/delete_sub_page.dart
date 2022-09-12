import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../delete_controller.dart';

class DeleteSubPage extends StatefulWidget {
  const DeleteSubPage({Key? key}) : super(key: key);

  @override
  State<DeleteSubPage> createState() => _DeleteSubPageState();
}

class _DeleteSubPageState extends State<DeleteSubPage> {
  var name = '';

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeleteSubPage'),
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
          ],
        ),
      ),
    );
  }
}
