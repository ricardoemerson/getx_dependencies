import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatefulWidget {
  PutAsyncPage({Key? key}) : super(key: key) {
    Get.putAsync(() async {
      final storage = await SharedPreferences.getInstance();

      storage.setString('description', 'Put Async Example');

      return storage;
    });
  }

  @override
  State<PutAsyncPage> createState() => _PutAsyncPageState();
}

class _PutAsyncPageState extends State<PutAsyncPage> {
  var description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PutAsyncPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome: $description',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  description = Get.find<SharedPreferences>().getString('description') ??
                      'Descrição não encontrada';
                });
              },
              child: const Text('Buscar descrição'),
            ),
          ],
        ),
      ),
    );
  }
}
