import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lazy_put_controller.dart';
import 'lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({Key? key}) : super(key: key) {
    // Get.lazyPut() Elimina a instância dentro do Get, mas mantém a fábrica ativa permitindo
    // assim, que uma nova instância da classe seja criada dentro do Get sempre que for solicitada
    // através do Get.find().
    Get.lazyPut(() => LazyPutController());
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  var name = '';
  var nameFenix = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LazyPutPage'),
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
                final controller = Get.find<LazyPutController>();

                setState(() {
                  name = controller.name;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.name = 'Jornada GetX';
              },
              child: const Text('Alterar nome'),
            ),
            const SizedBox(height: 20),
            Text(
              'Nome Fenix: $nameFenix',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();

                setState(() {
                  name = controller.name;
                });
              },
              child: const Text('Buscar nome Fenix'),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                controller.name = 'Jornada GetX';
              },
              child: const Text('Alterar nome Fenix'),
            ),
          ],
        ),
      ),
    );
  }
}
