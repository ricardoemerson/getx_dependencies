import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../basic_controller.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.find<BasicController>().changeName('Ricardo Emerson');
      },
      child: const Text('Alterar nome'),
    );
  }
}
