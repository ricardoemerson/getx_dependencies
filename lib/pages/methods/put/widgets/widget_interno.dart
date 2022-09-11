import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../put_tag_controller.dart';

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            Get.find<PutTagController>(tag: 'TagX').tag,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            Get.find<PutTagController>(tag: 'TagY').tag,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
